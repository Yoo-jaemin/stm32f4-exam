#define __TASK_C__
    #include "Task.h"
#undef  __TASK_C__

/* Start abbreviation */
/* End abbreviation */

/* Start Include */
#include "IO_Ctrl.h"
#include "gpio.h"
#include "Flash.h"
#include "SD_Card.h"
#include "Display.h"
#include "Sensor_Upload.h"
#include "usart.h"
#include "CRC.h"
/* End Include */

/* Start Define */
/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
/* End Struct */

/* Start Function */
static void Menu_Operation(void);
static void FuncKey_Set(bool ucSet, U8 ucMenu_pos);
static void RSTKey_Set(bool ucSet, U8 ucMenu_pos);
static void Upload_Task(void);
static void Main_Upload(void);
//static void SysDeInit(void);
static void MainApp_Start(void);
/* End Function */

/* Start Variable */
typedef void (*pFunction)(void);
pFunction Jump_To_Application;
unsigned long JumpAddress = 0;
/* End Variable */

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void SysTick_Task(void)
{
  	if(Upload_State == nSTATE_FINISH){
	  	Tick.uTimer_1S++;
  		if(Tick.uTimer_1S > _1SEC_) {
	  		Tick.uTimer_1S = 0;
	  		if(Tick.uIdle_start > 0) Tick.uIdle_start--;
			else {
			  	TaskStatus.Bit.bIdle_flag = TRUE;
			}
		}
	}
	
	if(Packet_Handle.Flag.Bit.bReqStart == TRUE) Packet_Handle.uTimeout++;
	if(SensorUpload_Handle.Flag.Bit.bSensorCheck == TRUE) SensorUpload_Handle.uSensorCheck_Time++;
	
  	Key_Check();
}

void BootKey_Check(bool bErr)
{
	if(TECT_FUNC_READ() == SWITCH_ON) return;
	if(bErr != FALSE) dprintf("\r\n Init Error");
	
	if (((*(volatile unsigned long*)MAIN_ADDR) & 0x2FFC0000 ) == 0x20000000) {
	  	//Main F/W가 있어야 Sensor 동작 Packet Send
	  	Sensor_AppStart(nCAVITY);
		Sensor_AppStart(nCARTRIDGE);
	  	//Key 입력 없을 경우에는 Sensor 응답 상관없이 바로 시작하게끔 수정 (2020-01-03)
		//if((TaskStatus.Bit.bCT_Check == TRUE) || (TaskStatus.Bit.bIR_Check == TRUE)){
		
                printf( "\r\n -- APP Exist -- \r\n" );
                SysDeInit();
	  	
                /* Jump to user application */
		JumpAddress = *(volatile unsigned long*) (MAIN_ADDR + 4);
		Jump_To_Application = (pFunction) JumpAddress;
		/* Initialize user application's Stack Pointer */
		__set_MSP(*(volatile unsigned long*) MAIN_ADDR);
		Jump_To_Application(); // 약 40ms
		//}
	}
	else {
	  	dprintf("\r\n Nothing Main F/W ...");
		Packet_Handle.Flag.Bit.bAck = FALSE;
	}
}

void SysConfig(void)
{
  	TaskStatus.All = FALSE;
	Packet_Handle.Flag.All = FALSE;
	SensorUpload_Handle.Flag.All = FALSE;
	Key.Setting.Bit.bFucn = FALSE;
	
	Sensor_VersionCheck();
	TaskStatus.Bit.bBoot_mode = TRUE;
	Title_Display();				
	StatusBox_Display();
	Tick.uIdle_start = IDLE_TIME;
}

void Boot_Task(void)
{
	Menu_Operation();
	Rx_Handler();
	
	if(TaskStatus.Bit.bBoot_mode != TRUE) Upload_Task();
}

static void Upload_Task(void)
{
  	switch(TaskStatus.All & 0x0F)
	{
		case EXIT : 
			MainApp_Start();
		case MAIN_UPLOAD: Main_Upload(); break;
		case IR_UPLOAD	: 
		case CT_UPLOAD	: Sensor_Upload(); break;
		  		
		default: TaskStatus.Bit.bBoot_mode = TRUE; break;
	}
	Status_Display();
}

static void Menu_Operation(void)
{
	U8	ucMenu_pos, ucFunc_set, ucRST_set;
	
	Key_Operation(&TaskStatus);
	
	ucMenu_pos = Key.Setting.ucPosition & 0x0F;
	ucFunc_set = Key.Setting.ucPosition & 0x20;
	ucRST_set = Key.Setting.ucPosition & 0x40;
	
	MenuSelect_Display(ucMenu_pos);
	FuncKey_Set(ucFunc_set, ucMenu_pos);
	RSTKey_Set(ucRST_set, ucMenu_pos);
}

static void FuncKey_Set(bool ucSet, U8 ucMenu_pos)
{
	if(ucSet == FALSE) return;
	
	TaskStatus.All &= 0x30;
	switch(ucMenu_pos)
	{		  		
		case nEXIT:
		  	TaskStatus.Bit.bExit = TRUE;  
			break;
		case nMAIN_UPLOAD:
		  	TaskStatus.Bit.bMain_Upload = TRUE; 
			SD.pExtension = MAIN_EXTENSION; 
			break;
		case nCT_SENSOR_UPLOAD:
		  	TaskStatus.Bit.bCT_Upload = TRUE;
			CT_UPLOAD_EABLE();
			SD.pExtension = CT_EXTENSION; 
			break;
		case nIR_SENSOR_UPLOAD:
		  	TaskStatus.Bit.bIR_Upload = TRUE;
			IR_UPLOAD_EABLE();
			SD.pExtension = IR_EXTENSION;  
			break;
		default:
		  	TaskStatus.Bit.bBoot_mode = TRUE;
		  	dprintf("\r\n Func Key Set Menu Err"); 
		  	break;
	}
	
	Display.Bit.bProgress = TRUE;
	if(ucMenu_pos != nEXIT) UploadStatus_Display(ucMenu_pos);
	if((ucMenu_pos == nCT_SENSOR_UPLOAD) || (ucMenu_pos == nIR_SENSOR_UPLOAD)) Sensor_UploadStart();
	Key.Setting.Bit.bFucn = FALSE;
	Upload_State = nSTATE_FILE_CHECK;
}

static void RSTKey_Set(bool ucSet, U8 ucMenu_pos)// Main Start 
{
  	if(ucSet == FALSE)	return;
	
	TaskStatus.All &= 0x30;
	
	TaskStatus.Bit.bExit = TRUE;
	
	Key.Setting.Bit.bRST = FALSE;
	Upload_State = nSTATE_FILE_CHECK;
}

void Reset_Status(void)
{
	Key.Setting.Bit.bRST = FALSE;
	
  	UploadCount.ulFileRead_offset = 0; // Upload 변수 초기화
	UploadCount.ulWrite = 0;
	UploadCount.ulVerify = 0;
		
	SD.Check.All = FALSE; //Error Flag 초기화
	Flash.ulEraseErr = FALSE;
	Flash.ucWriteErr = FALSE;
	Flash.ucVerifyErr = FALSE;
	Flash.ucErase_complet = FALSE;
	SensorUpload_Handle.Flag.All = FALSE;
	
	TaskStatus.All &= 0x30;
	TaskStatus.Bit.bBoot_mode = TRUE; // Boot Mode로 변경
	Tick.uIdle_start = IDLE_TIME;
	UploadStatus_Display(Key.Setting.ucPosition & 0x0F);
}

static void Main_Upload(void)
{
  	char	cBuff[PAGE_SIZE];
	
	switch(Upload_State)
	{
		case nSTATE_IDLE:
		  	Reset_Status();
		  	break;
		case nSTATE_STOP:
		  	FlashSector_Erase(FLASH_USER_START_SECTOR); 
			break;
		case nSTATE_FILE_CHECK:
		  	if(TaskStatus.Bit.bExit != TRUE) Download_File_Find();
			break;
		case nSTATE_FLASH_ERASE:
		  	if(UploadCount.ucErase < nSECTOR_MAX) FlashSector_Erase(UploadCount.ucErase);
			else Flash.ucErase_complet = TRUE;
			ucDisplay_Progress = ((UploadCount.ucErase - FLASH_USER_START_SECTOR)*100)/(nSECTOR_MAX - FLASH_USER_START_SECTOR);
			UploadCount.ucErase++;
			break;
		case nSTATE_FLASH_UPLOAD:
		  	UploadCount.ulFileRead_offset = UploadCount.ulWrite * PAGE_SIZE;
			if(UploadCount.ulWrite == SD.uProgram_cnt - 1){
				FilePageLoad(SD.Info.fname, cBuff, SD.uProgram_tail, UploadCount.ulFileRead_offset);
				Upload_Flash(cBuff, SD.uProgram_tail, UploadCount.ulFileRead_offset);
				ucDisplay_Progress = ((UploadCount.ulWrite+1)*100)/SD.uProgram_cnt;
			}
			else {
				FilePageLoad(SD.Info.fname, cBuff, PAGE_SIZE, UploadCount.ulFileRead_offset);
				Upload_Flash(cBuff, PAGE_SIZE, UploadCount.ulFileRead_offset);
				ucDisplay_Progress = (UploadCount.ulWrite*100)/SD.uProgram_cnt;
			}
			UploadCount.ulWrite++;
			break;
		case nSTATE_FLASH_VERIFY:
			UploadCount.ulFileRead_offset = UploadCount.ulVerify * PAGE_SIZE;
			if(UploadCount.ulVerify == SD.uProgram_cnt - 1){
				FilePageLoad(SD.Info.fname, cBuff, SD.uProgram_tail, UploadCount.ulFileRead_offset);
				Verify_Flash(cBuff, SD.uProgram_tail, UploadCount.ulFileRead_offset);
				ucDisplay_Progress = ((UploadCount.ulVerify+1)*100)/SD.uProgram_cnt;
			}
			else {
			  	FilePageLoad(SD.Info.fname, cBuff, PAGE_SIZE, UploadCount.ulFileRead_offset);
				Verify_Flash(cBuff, PAGE_SIZE, UploadCount.ulFileRead_offset);
				ucDisplay_Progress = (UploadCount.ulVerify*100)/SD.uProgram_cnt;
			}
			UploadCount.ulVerify++;
			break;
		case nSTATE_FINISH:
		 	Display.Bit.bProgress = FALSE;
		  	break;
		default:	break;
	}
}

static void MainApp_Start(void)
{
  	if(((*(volatile unsigned long*)MAIN_ADDR) & 0x2FFC0000 ) == 0x20000000) {
	  	if(Upload_State == nSTATE_FILE_CHECK) {
		  	if((TaskStatus.Bit.bCT_Check != TRUE) && (TaskStatus.Bit.bIR_Check != TRUE)) Packet_Handle.Flag.Bit.bTimeout = TRUE;
			else {
				if(TaskStatus.Bit.bCT_Check == TRUE) Sensor_AppStart(nCARTRIDGE);
				if(TaskStatus.Bit.bIR_Check == TRUE) Sensor_AppStart(nCAVITY);
			}
		}
		if(Packet_Handle.Flag.Bit.bAck == TRUE) {
			SysDeInit();
			/* Jump to user application */
			JumpAddress = *(volatile unsigned long*) (MAIN_ADDR + 4);
			Jump_To_Application = (pFunction) JumpAddress;
			/* Initialize user application's Stack Pointer */
			__set_MSP(*(volatile unsigned long*) MAIN_ADDR);
			Jump_To_Application();
		}
		else {
	  		if(Packet_Handle.Flag.Bit.bNak == TRUE) {
			  	if(Upload_State != nSTATE_FINISH) {
					Show_Display(nNONE_SENSOR_FW);
					Packet_Handle.Flag.Bit.bNak = FALSE;
			  	}
				if(Upload_State != nSTATE_IDLE) Upload_State = nSTATE_FINISH;
			}
		}
		
		if(Packet_Handle.Flag.Bit.bTimeout == TRUE) {
		  	if(Upload_State != nSTATE_FINISH) {
				Show_Display(nRESPONSE_ERR);
				Packet_Handle.Flag.Bit.bTimeout = FALSE;
			}
	  		if(Upload_State != nSTATE_IDLE) Upload_State = nSTATE_FINISH;
		}
	}
	else {
		if(Upload_State != nSTATE_FINISH) Show_Display(nNONE_MAIN_FW);
		if(Upload_State != nSTATE_IDLE) Upload_State = nSTATE_FINISH;
	}
}

