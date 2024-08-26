#define __SENSOR_UPLOAD_C__
    #include "Sensor_Upload.h"
#undef  __SENSOR_UPLOAD_C__

/* Start abbreviation */
/* End abbreviation */

/* Start Include */
#include "SD_Card.h"
#include "usart.h"
#include "Task.h"
#include "CRC.h"
#include "Display.h"
#include "gpio.h"
/* End Include */

/* Start Define */
/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
/* End Struct */

/* Start Function */
static bool Address_Check(U32 dwCmd_add, U32 dwRead_add);
static void Receive_Check(U8 *pPacket_buff, U16 uPacket_size);
static void Upload_Fault_Check(void);
static void Timeout_Check(void);
static void Send_Packet(Send_HandleType* SendData);
static void SensorUpload_Verify(char* cFilebuf, U8* ucSensorData, U16 uSize);
/* End Function */

/* Start Variable */
/* End Variable */

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void Rx_Handler(void)
{
 	U8	ucHp, ucTp;
		
	ucHp = Packet_Handle.ucHp & USART3_RX_FIFO_MASK;
	ucTp = Packet_Handle.ucTp & USART3_RX_FIFO_MASK;
	
	Timeout_Check();
	
	if(Packet_Handle.Flag.Bit.bTimeout == TRUE){
		Packet_Handle.uCount = 0;
		Packet_Handle.Flag.Bit.bSTX = FALSE;
	}
	else {
		if( ucHp != ucTp ){
	  		Packet_Handle.ucTp++;
#ifdef _PACKET_CHECK
			printf( "\r\n Rx : " );
			for(U16 uCnt=0; uCnt<Packet_Handle.uReadSize[ucTp]; uCnt++ ){
		  		printf( " %02x", Packet_Handle.ucRxBuf[ucTp][uCnt] );
				if((uCnt & 0x0F) == 0x0F) printf( "\r\n    : " );
        	}
#endif
			Receive_Check(Packet_Handle.ucRxBuf[ucTp], Packet_Handle.uReadSize[ucTp]);	
		}
	}
}

void Sensor_Upload(void)
{
  	char cBuff[PAGE_SIZE];
	static U16 uCounting = 0;
	
	Upload_Fault_Check();
	
  	switch(Upload_State)
	{
		case nSTATE_IDLE:
		  	Reset_Status();
		  	break;
		case nSTATE_STOP:
		  	if(SensorUpload_Handle.Flag.Bit.bError == TRUE) {
		  		SensorUpload_Handle.Flag.Bit.bError = FALSE;
				SensorUpload_Handle.Send_Buff.ucRequstCID = nERASE_START;
				SensorUpload_Handle.Send_Buff.dwStartAdd = SENSOR_START_ADDR;
				SensorUpload_Handle.Send_Buff.uDataSize = 0;
				Send_Packet(&SensorUpload_Handle.Send_Buff);
			}
		  	break;
		case nSTATE_FILE_CHECK:
		  	if(SensorUpload_Handle.Flag.Bit.bReady == TRUE) {
		  		Download_File_Find();
			  	Packet_Handle.Flag.Bit.bAck = FALSE;
				uCounting = 0;
				ucDisplay_Progress = 0;
				if((SD.Check.All & 0x1F) == FALSE) {
					SensorUpload_Handle.Send_Buff.ucRequstCID = nERASE_START;
					SensorUpload_Handle.Send_Buff.dwStartAdd = SENSOR_START_ADDR;
					SensorUpload_Handle.Send_Buff.uDataSize = 0;
					Send_Packet(&SensorUpload_Handle.Send_Buff);
				}
			}
		  	break;
		case nSTATE_FLASH_ERASE:
		  	if(SensorUpload_Handle.Flag.Bit.bError == FALSE){
			  	uCounting++; //ȿ��
				if(ucDisplay_Progress < 99) ucDisplay_Progress = uCounting / 6;
				if(Packet_Handle.Flag.Bit.bAck == TRUE) {
					SensorUpload_Handle.Flag.Bit.bComplete = TRUE;
					uCounting = 0;
			  	}
		  	}
		  	break;
		case nSTATE_FLASH_UPLOAD:
		  	if(SensorUpload_Handle.Flag.Bit.bError == FALSE){
			  	if(Packet_Handle.Flag.Bit.bAck == TRUE){
		  			UploadCount.ulFileRead_offset = UploadCount.ulWrite * PAGE_SIZE;
					SensorUpload_Handle.Send_Buff.ucRequstCID = nWRITE_START;
					SensorUpload_Handle.Send_Buff.dwStartAdd = UploadCount.ulFileRead_offset + SENSOR_START_ADDR;
					if (UploadCount.ulWrite == SD.uProgram_cnt - 1){
						FilePageLoad(SD.Info.fname, cBuff, SD.uProgram_tail, UploadCount.ulFileRead_offset);
						memcpy(SensorUpload_Handle.Send_Buff.ucData, cBuff, SD.uProgram_tail);
						SensorUpload_Handle.Send_Buff.uDataSize = SD.uProgram_tail;
						Send_Packet(&SensorUpload_Handle.Send_Buff);
						ucDisplay_Progress = ((UploadCount.ulWrite+1)*100)/SD.uProgram_cnt;
					}
					else {
						FilePageLoad(SD.Info.fname, cBuff, PAGE_SIZE, UploadCount.ulFileRead_offset);
						memcpy(SensorUpload_Handle.Send_Buff.ucData, cBuff, PAGE_SIZE);
						SensorUpload_Handle.Send_Buff.uDataSize = PAGE_SIZE;
						Send_Packet(&SensorUpload_Handle.Send_Buff);
						ucDisplay_Progress = (UploadCount.ulWrite*100)/SD.uProgram_cnt;
					}
			  		UploadCount.ulWrite++;
					Packet_Handle.Flag.Bit.bAck = FALSE;
				}
			}
		  	break;
		case nSTATE_FLASH_VERIFY:
		  	if(SensorUpload_Handle.Flag.Bit.bError == FALSE){
				if(Packet_Handle.Flag.Bit.bAck == TRUE) {
				  	if(SensorUpload_Handle.ucResponse_CID == nREAD_FLASH){
						if(UploadCount.ulVerify == SD.uProgram_cnt - 1){
							FilePageLoad(SD.Info.fname, cBuff, SD.uProgram_tail, UploadCount.ulFileRead_offset);
							SensorUpload_Verify(cBuff, SensorUpload_Handle.ucSensor_data, SD.uProgram_tail);
							ucDisplay_Progress = ((UploadCount.ulVerify+1)*100)/SD.uProgram_cnt;
						}
						else {
							FilePageLoad(SD.Info.fname, cBuff, PAGE_SIZE, UploadCount.ulFileRead_offset);
							SensorUpload_Verify(cBuff, SensorUpload_Handle.ucSensor_data, PAGE_SIZE);
							ucDisplay_Progress = (UploadCount.ulVerify*100)/SD.uProgram_cnt;
						}
						UploadCount.ulVerify++;
					}
					if(UploadCount.ulVerify != SD.uProgram_cnt) {
						UploadCount.ulFileRead_offset = UploadCount.ulVerify * PAGE_SIZE;
				  		SensorUpload_Handle.Send_Buff.ucRequstCID = nREAD_FLASH;
						SensorUpload_Handle.Send_Buff.dwStartAdd = UploadCount.ulFileRead_offset + SENSOR_START_ADDR;
						if(UploadCount.ulVerify == SD.uProgram_cnt - 1) SensorUpload_Handle.Send_Buff.uDataSize = SD.uProgram_tail;
						else SensorUpload_Handle.Send_Buff.uDataSize = PAGE_SIZE;
						Send_Packet(&SensorUpload_Handle.Send_Buff);
					}
					Packet_Handle.Flag.Bit.bAck = FALSE;
				}
			}
			break;
		case nSTATE_FINISH:
		  	Display.Bit.bProgress = FALSE;
		  	break;
		default:	break;
	}
}

void Sensor_UploadStart(void)
{
  	SensorUpload_Handle.Send_Buff.ucRequstCID = nBOOT_MODE;
	SensorUpload_Handle.Send_Buff.dwStartAdd = SENSOR_START_ADDR;
	SensorUpload_Handle.Send_Buff.uDataSize = 0;
	Send_Packet(&SensorUpload_Handle.Send_Buff);
}

void Sensor_VersionCheck(void)
{
  	U8 ucCnt = 0;	
  
	TaskStatus.Bit.bCT_Check = FALSE;
	TaskStatus.Bit.bIR_Check = FALSE;
		
  	while(ucCnt < nTYPE_MAX) {
	  	switch(ucCnt)
		{
			case nCARTRIDGE: CT_UPLOAD_EABLE(); break;
			case nCAVITY: IR_UPLOAD_EABLE(); break;
			default: dprintf("\r\n Sensor Type Error"); break;
		}
	  	SensorUpload_Handle.Send_Buff.ucRequstCID = nSENSORCHECK;
		SensorUpload_Handle.Send_Buff.dwStartAdd = SENSOR_START_ADDR;
		SensorUpload_Handle.Send_Buff.uDataSize = 0;
		Send_Packet(&SensorUpload_Handle.Send_Buff);
  		
		Packet_Handle.Flag.Bit.bReqStart = FALSE;
		Packet_Handle.uTimeout = 0;
		SensorUpload_Handle.Flag.Bit.bSensorCheck = TRUE;
		
		while((SensorUpload_Handle.uSensorCheck_Time < VERSION_CHECK) && (SensorUpload_Handle.Flag.Bit.bSensorCheck == TRUE)) {
		  	Rx_Handler();
		  	if(Packet_Handle.Flag.Bit.bAck == TRUE) {
			  	switch(ucCnt)
				{	
					case nCARTRIDGE: 
					  	SensorUpload_Handle.uCatridgeFW_ver = 0;
			  			SensorUpload_Handle.uCatridgeFW_ver = (SensorUpload_Handle.ucSensor_data[1] << 8);
						SensorUpload_Handle.uCatridgeFW_ver |= SensorUpload_Handle.ucSensor_data[2];
						TaskStatus.Bit.bCT_Check = TRUE;
						break;
					case nCAVITY: 
					  	SensorUpload_Handle.uCavityFW_ver = 0;
						SensorUpload_Handle.uCavityFW_ver = (SensorUpload_Handle.ucSensor_data[1] << 8);
						SensorUpload_Handle.uCavityFW_ver |= SensorUpload_Handle.ucSensor_data[2];
						TaskStatus.Bit.bIR_Check = TRUE;
						break;
					default: dprintf("\r\n Sensor Type Error"); break;
				}
				SensorUpload_Handle.Flag.Bit.bSensorCheck = FALSE;
				Packet_Handle.Flag.Bit.bAck = FALSE;
			}
			
			if(SensorUpload_Handle.uSensorCheck_Time >= VERSION_CHECK) {
	  			if(ucCnt == nCARTRIDGE) dprintf("\r\n Cartridge Disable");
	  			else dprintf("\r\n Cavity Disable");
				SensorUpload_Handle.Flag.Bit.bSensorCheck = FALSE;
			}
		}
		ucCnt++;
		SensorUpload_Handle.uSensorCheck_Time = 0;
	}
	
	if(TaskStatus.Bit.bIR_Check == TRUE) printf("\r\n CAVITY F/W VERSION: %1.1f", ((float)SensorUpload_Handle.uCavityFW_ver / 10));
	if(TaskStatus.Bit.bCT_Check == TRUE) printf("\r\n CARTRIDGE F/W VERSION: %1.1f", ((float)SensorUpload_Handle.uCatridgeFW_ver / 10));
	
	SensorUpload_Handle.Flag.Bit.bSensorCheck = FALSE;
	SensorUpload_Handle.uSensorCheck_Time = 0;
}

void Sensor_AppStart(SENSOR_TYPE Sensor_Type)
{
  	if(Sensor_Type == nCARTRIDGE) CT_UPLOAD_EABLE();
	else IR_UPLOAD_EABLE();
	
	SensorUpload_Handle.Send_Buff.ucRequstCID = nMAIN_START;
	SensorUpload_Handle.Send_Buff.dwStartAdd = SENSOR_START_ADDR;
	SensorUpload_Handle.Send_Buff.uDataSize = 0;
	Send_Packet(&SensorUpload_Handle.Send_Buff);
  	
	Packet_Handle.Flag.Bit.bReqStart = FALSE;
	Packet_Handle.uTimeout = 0;
	SensorUpload_Handle.uSensorCheck_Time = 0;
	SensorUpload_Handle.Flag.Bit.bSensorCheck = TRUE;
	
	while((SensorUpload_Handle.uSensorCheck_Time < SENSOR_APP_CHECK) && (SensorUpload_Handle.Flag.Bit.bSensorCheck == TRUE)) {
	  	Rx_Handler();
	  	if(Packet_Handle.Flag.Bit.bAck == TRUE) {
		  	if(Sensor_Type == nCARTRIDGE) TaskStatus.Bit.bCT_Check = TRUE;
			else TaskStatus.Bit.bIR_Check = TRUE;
			SensorUpload_Handle.Flag.Bit.bSensorCheck = FALSE;
		}
	}

	if(SensorUpload_Handle.uSensorCheck_Time >= SENSOR_APP_CHECK) {
	  	if(Sensor_Type == nCARTRIDGE) dprintf("\r\n Cartridge Disable");
	  	else dprintf("\r\n Cavity Disable");
		Packet_Handle.Flag.Bit.bTimeout = TRUE;
	}
	else {
		if(Sensor_Type == nCARTRIDGE) dprintf("\r\n Cartridge Enable");
		else dprintf("\r\n Cavity Enable");
	}
		
	SensorUpload_Handle.uSensorCheck_Time = 0;
	SensorUpload_Handle.Flag.Bit.bSensorCheck = FALSE;
}

static bool Address_Check(U32 dwCmd_add, U32 dwRead_add)
{
  	bool bErr_flag = FALSE;
	
	if(dwCmd_add != dwRead_add) bErr_flag = TRUE;
	else bErr_flag = FALSE;
	
	return bErr_flag;
}

static void SensorUpload_Verify(char* cFilebuf, U8* ucSensorData, U16 uSize)
{	
  	int iErrFlag = FALSE;
	
  	iErrFlag = memcmp(cFilebuf, (const void*)ucSensorData, uSize);
	
	if(iErrFlag != FALSE) {
	  	SensorUpload_Handle.Flag.Bit.bError = TRUE;
		dprintf("\r\n Verify Error - %d", UploadCount.ulVerify);
	}
	//else SensorUpload_Handle.Flag.Bit.bError = FALSE;
}

static void Receive_Check(U8 *pPacket_buff, U16 uPacket_size)
{
  	bool bAddErr_flag = FALSE;
  	U16 uData_cnt = 0;
		
	SensorUpload_Handle.Flag.Bit.bCRC_Err = FALSE;
	SensorUpload_Handle.dwCalCRC = CRC_Calculate(pPacket_buff, uPacket_size-5);
	
	SensorUpload_Handle.dwReadCRC = 0;
	SensorUpload_Handle.dwReadCRC = (*(pPacket_buff + (uPacket_size - 5))) << 24;
	SensorUpload_Handle.dwReadCRC |= (*(pPacket_buff + (uPacket_size - 4))) << 16;
	SensorUpload_Handle.dwReadCRC |= (*(pPacket_buff + (uPacket_size - 3))) << 8;
	SensorUpload_Handle.dwReadCRC |= *(pPacket_buff + (uPacket_size - 2));
	
	if(SensorUpload_Handle.dwCalCRC != SensorUpload_Handle.dwReadCRC) {
		dprintf("\r\n CRC Error : Cal - %08X, Read - %08X", SensorUpload_Handle.dwCalCRC, SensorUpload_Handle.dwReadCRC);
		SensorUpload_Handle.Flag.Bit.bCRC_Err = TRUE;
	}
		
	if(SensorUpload_Handle.Flag.Bit.bCRC_Err == FALSE){
	  	Packet_Handle.uTimeout = 0;
		Packet_Handle.Flag.Bit.bReqStart = FALSE;
				
		SensorUpload_Handle.ucResponse_CID = *(pPacket_buff + 1);
		SensorUpload_Handle.dwRead_add = SENSOR_START_ADDR;
		SensorUpload_Handle.dwRead_add |= (*(pPacket_buff + 4) << 24);
		SensorUpload_Handle.dwRead_add |= (*(pPacket_buff + 5) << 16);
	  	SensorUpload_Handle.dwRead_add |= (*(pPacket_buff + 6) << 8);
		SensorUpload_Handle.dwRead_add |= *(pPacket_buff + 7);
		
		bAddErr_flag = Address_Check(SensorUpload_Handle.Send_Buff.dwStartAdd, SensorUpload_Handle.dwRead_add);
		
		if(bAddErr_flag == TRUE) {
		 	Packet_Handle.Flag.Bit.bError = TRUE;
			dprintf("\r\n Add Error : Send - %08X, Read - %08X", SensorUpload_Handle.Send_Buff.dwStartAdd, SensorUpload_Handle.dwRead_add);
		}
		else {
			SensorUpload_Handle.uDataLen = (*(pPacket_buff + 8) << 8);
			SensorUpload_Handle.uDataLen |= *(pPacket_buff + 9);
		
			while(uData_cnt < SensorUpload_Handle.uDataLen){
				SensorUpload_Handle.ucSensor_data[uData_cnt] = *(pPacket_buff + uData_cnt + 10);
				uData_cnt++;
			}
			
			if(SensorUpload_Handle.ucResponse_CID == nREAD_FLASH) Packet_Handle.Flag.Bit.bAck = TRUE;
			else{
		  		if(SensorUpload_Handle.ucResponse_CID == nBOOT_MODE) SensorUpload_Handle.Flag.Bit.bReady = TRUE;
		   		if(SensorUpload_Handle.ucSensor_data[0] == nACK) Packet_Handle.Flag.Bit.bAck = TRUE;
				else if(SensorUpload_Handle.ucSensor_data[0] == nNAK) {
				  	Packet_Handle.Flag.Bit.bAck = FALSE;
					Packet_Handle.Flag.Bit.bNak = TRUE;
				}
				else {
				  	Packet_Handle.Flag.Bit.bError = TRUE;
					Packet_Handle.Flag.Bit.bAck = FALSE;
					Packet_Handle.Flag.Bit.bNak = FALSE;
				}
			}
		}		
	}
	else Packet_Handle.Flag.Bit.bError = TRUE;
}

static void Send_Packet(Send_HandleType *SendData)
{
  	U16	uPacket_cnt = 0;
	U16 uRead_cnt = 0;
	
	Packet_Handle.ucTxBuf[uPacket_cnt++] = STX;
	Packet_Handle.ucTxBuf[uPacket_cnt++] = SendData->ucRequstCID;
	uPacket_cnt += 2;
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8) (SendData->dwStartAdd >> 24);
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8) (SendData->dwStartAdd >> 16);
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8) (SendData->dwStartAdd >> 8);
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8) SendData->dwStartAdd;
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8) (SendData->uDataSize >> 8);
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8) SendData->uDataSize;
	
	if(Packet_Handle.ucTxBuf[1] == nWRITE_START){
		while(uRead_cnt < SendData->uDataSize) {
			Packet_Handle.ucTxBuf[uPacket_cnt++] = SendData->ucData[uRead_cnt];
			uRead_cnt++;
		}
	}
			
	Packet_Handle.ucTxBuf[uPacket_cnt++] = ETX;
	
	Packet_Handle.ucTxBuf[2] = (U8) (uPacket_cnt >> 8);
	Packet_Handle.ucTxBuf[3] = (U8) uPacket_cnt;
		
	Packet_Handle.dwCalCRC = CRC_Calculate(Packet_Handle.ucTxBuf, uPacket_cnt);
	
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8)(Packet_Handle.dwCalCRC >> 24);
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8)(Packet_Handle.dwCalCRC >> 16);
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8)(Packet_Handle.dwCalCRC >> 8);
	Packet_Handle.ucTxBuf[uPacket_cnt++] = (U8)Packet_Handle.dwCalCRC;
	
	Packet_Handle.ucTxBuf[uPacket_cnt++] = EOT;
	
#ifdef _PACKET_CHECK
	printf("\r\n Tx : ");
	for(U16 uCnt=0; uCnt < uPacket_cnt; uCnt++)
	{
	  	printf(" %02x",Packet_Handle.ucTxBuf[uCnt]);
		if((uCnt & 0x0F) == 0x0F) printf("\r\n    : ");
	}
#endif
	
	Packet_Handle.Flag.Bit.bReqStart = TRUE;
	
	if(Packet_Handle.ucTxBuf[1] == nMAIN_START) USART3_Packet_Send(Packet_Handle.ucTxBuf, uPacket_cnt);
	else USART3_Packet_Send_IT(Packet_Handle.ucTxBuf, uPacket_cnt);
}


static void Upload_Fault_Check(void)
{
	if((Packet_Handle.Flag.Bit.bTimeout == TRUE) || (Packet_Handle.Flag.Bit.bError == TRUE) 
	    || (Packet_Handle.Flag.Bit.bNak == TRUE)) {
	  	if(Packet_Handle.Flag.Bit.bTimeout == TRUE) Show_Display(nRESPONSE_ERR);
	  	Packet_Handle.Flag.Bit.bError = FALSE;
	  	Packet_Handle.Flag.Bit.bTimeout = FALSE;
		Packet_Handle.uTimeout = 0;
		SensorUpload_Handle.Flag.Bit.bError = TRUE;
		SensorUpload_Handle.Flag.Bit.bReady = FALSE;
	}
}

static void Timeout_Check(void)
{
  	if(Packet_Handle.Flag.Bit.bReqStart == TRUE) {
  		if(Packet_Handle.uTimeout > PACKET_TIMEOUT) {
	  		Packet_Handle.Flag.Bit.bReqStart = FALSE;
			Packet_Handle.uTimeout = 0;
		  	Packet_Handle.Flag.Bit.bTimeout = TRUE;
			dprintf("\r\n Response Timeout");
		}
	}
}