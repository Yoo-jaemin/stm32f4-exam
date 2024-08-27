#define __MODBUS_MAP_C__
    #include "modbus_map.h"
#undef  __MODBUS_MAP_C__

/* Start abbreviation */
/* End abbreviation */

/* Start Include */
#include "version.h"
#include "measuring.h"
#include "function_mode.h"
#include "self_test.h"
#include "relay.h"
#include "password_mode.h"
/* End Include */

/* Start Define */          
/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
typedef union {
    U8  Byte;
    struct{
        bool	AL1_Active					:  1; // 0
        bool	AL2_Active					:  1; // 1
        bool	TRB_Active					:  1; // 2
        bool	Maintenance					:  1; // 3
        bool	Test						:  1; // 4
        bool	Calibration					:  1; // 5
        bool	Reserved					:  1; // 6
        bool	Toggle						:  1; // 7
    }Bit;
}Discretes_Input;

typedef union {
    U16  Word;
    struct{
        bool	Self_Test					: 1; // 0
        bool	Warm_up						: 1; // 1
        bool	Normal						: 1; // 2
        bool	Maintenance					: 1; // 3
        bool	Test						: 1; // 4
        bool	TRB_Active					: 1; // 5
        bool	TRB_Realy_Energized			: 1; // 6
        bool	Reserved_1					: 1; // 7
        bool	AL1_Active					: 1; // 8
        bool	AL1_Realy_Energized			: 1; // 9
        bool	AL2_Active					: 1; // 10
        bool	AL2_Realy_Energized			: 1; // 11
        bool	Over						: 1; // 12
        bool	Interference_Gas_Detection	: 1; // 13
        bool	Reserved_2					: 1; // 14
        bool	Reserved_3					: 1; // 15
    }Bit;
}Detector_Status_1;

typedef union {
    U16  Word;
    struct{
        bool	Trouble						:  1; // 0
        bool	Cartridge_Error				:  1; // 1
        bool	Flow_Error					:  1; // 2
        bool	Internal_Com_Error			:  1; // 3
        U16		Reserved					: 12; // 4~15
    }Bit;
}Detector_Status_2;

typedef union {
    U16  Word;
    struct{
        U8		Dp		: 4;
        U8		Unit	: 4;
        U8		Gas		: 8;
    }Bit;
}DpUnit_Info;
/* End Struct */

/* Start Function */
static U8 GasNo_Search( Measuring_GasInfo *pInf );
/* End Function */

/* Start Variable */
static Measuring_HandleType		*pMeas = &MeasHandle;
static Func_HandleType			*pFunc = &FuncHandle;
/* End Variable */

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void MODBUS_Mapping( void )
{
	Discretes_Input		Dsc_Input[2] = { 0, 0 };
	Detector_Status_1	Det_Status_1[2] = { 0, 0 };
	Detector_Status_2	Det_Status_2[2] = { 0, 0 };
	DpUnit_Info			DpUnit[2] = { 0, 0 };
	float				DpRate[2];
	ufloat				ufBuf;
	System_StateType	SysState = SystemState;
	U8					i;
	S16					Gas[2];
	
	// 1xxxx
	Dsc_Input[0].Bit.AL1_Active = pMeas->pAlr[0]->Item.Bit.a1st;
	Dsc_Input[0].Bit.AL2_Active = pMeas->pAlr[0]->Item.Bit.a2nd;
	if( SystemError.Code[0] ){ Dsc_Input[0].Bit.TRB_Active = true; }
	Dsc_Input[0].Bit.Maintenance = pFunc->State.Bit.IsEntered;
	Dsc_Input[0].Bit.Test = pFunc->State.Bit.Test | pMeas->Test.Item.RemoteTest_CH1;
	Dsc_Input[0].Bit.Calibration = pFunc->State.Bit.Calibration;
	Dsc_Input[0].Bit.Reserved = false;
	Dsc_Input[0].Bit.Toggle = Modbus_Heart.CH1_Tog_1xxxx;
	
	if( pMeas->Conf.OutMax > 1 ){
		Dsc_Input[1].Bit.AL1_Active = pMeas->pAlr[1]->Item.Bit.a1st;
		Dsc_Input[1].Bit.AL2_Active = pMeas->pAlr[1]->Item.Bit.a2nd;
		if( SystemError.Code[1] ){ Dsc_Input[1].Bit.TRB_Active = true; }
		Dsc_Input[1].Bit.Maintenance = pFunc->State.Bit.IsEntered;
		Dsc_Input[1].Bit.Test = pFunc->State.Bit.Test | pMeas->Test.Item.RemoteTest_CH2;
		Dsc_Input[1].Bit.Calibration = pFunc->State.Bit.Calibration;
		Dsc_Input[1].Bit.Reserved = false;
		Dsc_Input[1].Bit.Toggle = Modbus_Heart.CH2_Tog_1xxxx;
	}
	
	Modbus_Reg_1xxxx[MODBUS_10008_10001].Byte = Dsc_Input[0].Byte;
	Modbus_Reg_1xxxx[MODBUS_10016_10009].Byte = Dsc_Input[1].Byte;
	Modbus_Reg_1xxxx[MODBUS_10024_10017].Byte = 0;
	Modbus_Reg_1xxxx[MODBUS_10032_10025].Byte = 0;
	
	if( SysState == SYSTEM_STATE_PASSWORD ){ SysState = PwHandle.PrvState; }
	
	// 3xxxx
	switch( SysState ){
		case SYSTEM_STATE_INIT:
		case SYSTEM_STATE_CONFIG:
		case SYSTEM_STATE_SELF_TEST:
			if( SelfHandle.State > SELF_TEST_STATE_WARM_UP ){
				Det_Status_1[0].Bit.Self_Test = true;
				Det_Status_1[1].Bit.Self_Test = true;
			}
			else {
				Det_Status_1[0].Bit.Warm_up = true;
				Det_Status_1[1].Bit.Warm_up = true;
			}
			break;
			
		case SYSTEM_STATE_NORMAL:
			Det_Status_1[0].Bit.Normal = true;
			Det_Status_1[1].Bit.Normal = true;
			break;
	}
	Det_Status_1[0].Bit.Maintenance = Dsc_Input[0].Bit.Maintenance;
	Det_Status_1[1].Bit.Maintenance = Dsc_Input[1].Bit.Maintenance;
	Det_Status_1[0].Bit.Test = Dsc_Input[0].Bit.Test;
	Det_Status_1[1].Bit.Test = Dsc_Input[1].Bit.Test;
	Det_Status_1[0].Bit.TRB_Active = Dsc_Input[0].Bit.TRB_Active;
	Det_Status_1[1].Bit.TRB_Active = Dsc_Input[1].Bit.TRB_Active;
	Det_Status_1[0].Bit.TRB_Realy_Energized = RelayDrive.TRB.Opt.Item.IsEnergizeMode;
	Det_Status_1[1].Bit.TRB_Realy_Energized = RelayDrive.TRB.Opt.Item.IsEnergizeMode;
	Det_Status_1[0].Bit.AL1_Active = Dsc_Input[0].Bit.AL1_Active;
	Det_Status_1[1].Bit.AL1_Active = Dsc_Input[1].Bit.AL1_Active;
	Det_Status_1[0].Bit.AL1_Realy_Energized = RelayDrive.AL1.Opt.Item.IsEnergizeMode;
	Det_Status_1[1].Bit.AL1_Realy_Energized = RelayDrive.AL1.Opt.Item.IsEnergizeMode;
	Det_Status_1[0].Bit.AL2_Active = Dsc_Input[0].Bit.AL2_Active;
	Det_Status_1[1].Bit.AL2_Active = Dsc_Input[1].Bit.AL2_Active;
	Det_Status_1[0].Bit.AL2_Realy_Energized = RelayDrive.AL2.Opt.Item.IsEnergizeMode;
	Det_Status_1[1].Bit.AL2_Realy_Energized = RelayDrive.AL2.Opt.Item.IsEnergizeMode;
	Det_Status_1[0].Bit.Over = pMeas->pAlr[0]->Item.Bit.aOvr;
	Det_Status_1[1].Bit.Over = pMeas->pAlr[1]->Item.Bit.aOvr;
	Det_Status_1[0].Bit.Interference_Gas_Detection = pMeas->Filter.Res.Bit.InterfGas_1;
	Det_Status_1[1].Bit.Interference_Gas_Detection = pMeas->Filter.Res.Bit.InterfGas_2;
	
	DpUnit[0].Bit.Dp	= 1 << pMeas->pGas[0]->Inf.Dp;
	DpUnit[1].Bit.Dp	= 1 << pMeas->pGas[1]->Inf.Dp;
	DpUnit[0].Bit.Unit	= 1 << pMeas->pGas[0]->Inf.Unit;
	DpUnit[1].Bit.Unit	= 1 << pMeas->pGas[1]->Inf.Unit;
	DpUnit[0].Bit.Gas	= GasNo_Search( &pMeas->pGas[0]->Inf );
	DpUnit[1].Bit.Gas	= GasNo_Search( &pMeas->pGas[1]->Inf );
	
	Det_Status_2[0].Bit.Trouble = Dsc_Input[0].Bit.TRB_Active;
	Det_Status_2[1].Bit.Trouble = Dsc_Input[1].Bit.TRB_Active;
	Det_Status_2[0].Bit.Cartridge_Error = false;
	Det_Status_2[1].Bit.Cartridge_Error = false;
	Det_Status_2[0].Bit.Flow_Error = SystemError.Main.Bit.FlowRate_Udr | SystemError.Main.Bit.FlowRate_Ovr;
	Det_Status_2[1].Bit.Flow_Error = SystemError.Main.Bit.FlowRate_Udr | SystemError.Main.Bit.FlowRate_Ovr;
	Det_Status_2[0].Bit.Internal_Com_Error = SystemError.Main.Bit.CvtCom | SystemError.Main.Bit.CtgCom;
	Det_Status_2[1].Bit.Internal_Com_Error = SystemError.Main.Bit.CvtCom | SystemError.Main.Bit.CtgCom;
	
	switch( pMeas->pGas[0]->Inf.Dp ){
		case 0: DpRate[0] = 1.000f; break;
		case 1: DpRate[0] = 0.100f; break;
		case 2: DpRate[0] = 0.010f; break;
		case 3: DpRate[0] = 0.001f; break;
	}
	switch( pMeas->pGas[1]->Inf.Dp ){
		case 0: DpRate[1] = 1.000f; break;
		case 1: DpRate[1] = 0.100f; break;
		case 2: DpRate[1] = 0.010f; break;
		case 3: DpRate[1] = 0.001f; break;
	}
	
	if( SystemError.Code[0] ){
		Gas[0] = pMeas->pGas[0]->Inf.MaintenanceGas;
	}
	else {
		Gas[0] = pMeas->pGas[0]->Out;
	}
	if( SystemError.Code[1] ){
		Gas[1] = pMeas->pGas[1]->Inf.MaintenanceGas;
	}
	else {
		Gas[1] = pMeas->pGas[1]->Out;
	}
	
	Modbus_Reg_3xxxx[MODBUS_30001] = Det_Status_1[0].Word;
	Modbus_Reg_3xxxx[MODBUS_30002] = SystemError.Code[0];
	Modbus_Reg_3xxxx[MODBUS_30003] = DpUnit[0].Word;
	ufBuf.f = Gas[0] * DpRate[0];
	Modbus_Reg_3xxxx[MODBUS_30004] = ufBuf.w.l;
	Modbus_Reg_3xxxx[MODBUS_30005] = ufBuf.w.h;
	Modbus_Reg_3xxxx[MODBUS_30006] = Gas[0];
	ufBuf.f = pMeas->pAlr[0]->Inf._1stLevel * DpRate[0];
	Modbus_Reg_3xxxx[MODBUS_30007] = ufBuf.w.l;
	Modbus_Reg_3xxxx[MODBUS_30008] = ufBuf.w.h;
	Modbus_Reg_3xxxx[MODBUS_30009] = pMeas->pAlr[0]->Inf._1stLevel;
	ufBuf.f = pMeas->pAlr[0]->Inf._2ndLevel * DpRate[0];
	Modbus_Reg_3xxxx[MODBUS_30010] = ufBuf.w.l;
	Modbus_Reg_3xxxx[MODBUS_30011] = ufBuf.w.h;
	Modbus_Reg_3xxxx[MODBUS_30012] = pMeas->pAlr[0]->Inf._2ndLevel;
	ufBuf.f = pMeas->pGas[0]->Inf.HighScale * DpRate[0];
	Modbus_Reg_3xxxx[MODBUS_30013] = ufBuf.w.l;
	Modbus_Reg_3xxxx[MODBUS_30014] = ufBuf.w.h;
	Modbus_Reg_3xxxx[MODBUS_30015] = pMeas->pGas[0]->Inf.HighScale;
	Modbus_Reg_3xxxx[MODBUS_30016] = 0;
	Modbus_Reg_3xxxx[MODBUS_30017] = 0;
	Modbus_Reg_3xxxx[MODBUS_30018] = 0;
	Modbus_Reg_3xxxx[MODBUS_30019] = 0;
	Modbus_Reg_3xxxx[MODBUS_30020] = 0;
	
	if( pMeas->Conf.OutMax > 1 ){
		Modbus_Reg_3xxxx[MODBUS_30021] = Det_Status_1[1].Word;
		Modbus_Reg_3xxxx[MODBUS_30022] = SystemError.Code[1];
		Modbus_Reg_3xxxx[MODBUS_30023] = DpUnit[1].Word;
		ufBuf.f = Gas[1] * DpRate[1];
		Modbus_Reg_3xxxx[MODBUS_30024] = ufBuf.w.l;
		Modbus_Reg_3xxxx[MODBUS_30025] = ufBuf.w.h;
		Modbus_Reg_3xxxx[MODBUS_30026] = Gas[1];
		ufBuf.f = pMeas->pAlr[1]->Inf._1stLevel * DpRate[1];
		Modbus_Reg_3xxxx[MODBUS_30027] = ufBuf.w.l;
		Modbus_Reg_3xxxx[MODBUS_30028] = ufBuf.w.h;
		Modbus_Reg_3xxxx[MODBUS_30029] = pMeas->pAlr[1]->Inf._1stLevel;
		ufBuf.f = pMeas->pAlr[1]->Inf._2ndLevel * DpRate[1];
		Modbus_Reg_3xxxx[MODBUS_30030] = ufBuf.w.l;
		Modbus_Reg_3xxxx[MODBUS_30031] = ufBuf.w.h;
		Modbus_Reg_3xxxx[MODBUS_30032] = pMeas->pAlr[1]->Inf._2ndLevel;
		ufBuf.f = pMeas->pGas[1]->Inf.HighScale * DpRate[1];
		Modbus_Reg_3xxxx[MODBUS_30033] = ufBuf.w.l;
		Modbus_Reg_3xxxx[MODBUS_30034] = ufBuf.w.h;
		Modbus_Reg_3xxxx[MODBUS_30035] = pMeas->pGas[1]->Inf.HighScale;
		Modbus_Reg_3xxxx[MODBUS_30036] = 0;
		Modbus_Reg_3xxxx[MODBUS_30037] = 0;
		Modbus_Reg_3xxxx[MODBUS_30038] = 0;
		Modbus_Reg_3xxxx[MODBUS_30039] = 0;
		Modbus_Reg_3xxxx[MODBUS_30040] = 0;
		for( i=MODBUS_30041; i<MODBUS_30085; i++ ){
			Modbus_Reg_3xxxx[i] = 0;
		}
	}
	else {
		for( i=MODBUS_30021; i<MODBUS_30085; i++ ){
			Modbus_Reg_3xxxx[i] = 0;
		}
	}
	Modbus_Reg_3xxxx[MODBUS_30085] = Det_Status_2[0].Word;
	Modbus_Reg_3xxxx[MODBUS_30086] = Det_Status_2[1].Word;
	Modbus_Reg_3xxxx[MODBUS_30087] = 0;
	Modbus_Reg_3xxxx[MODBUS_30088] = 0;
	
	Modbus_Reg_3xxxx[MODBUS_30089] = Modbus_Heart.Rpt_Cnt_3xxxx;
	Modbus_Reg_3xxxx[MODBUS_30090] = 0;
	Modbus_Reg_3xxxx[MODBUS_30091] = EepHandle.Tag.SerialNumber[0];
	Modbus_Reg_3xxxx[MODBUS_30092] = EepHandle.Tag.SerialNumber[1];
	Modbus_Reg_3xxxx[MODBUS_30093] = EepHandle.Tag.SerialNumber[2];
	Modbus_Reg_3xxxx[MODBUS_30094] = EepHandle.Tag.SerialNumber[3];
	Modbus_Reg_3xxxx[MODBUS_30095] = EepHandle.Tag.SerialNumber[4];
	Modbus_Reg_3xxxx[MODBUS_30096] = EepHandle.Tag.SerialNumber[5];
	
	// 4xxxx
	for( i=MODBUS_40001; i<MODBUS_40089; i++ ){
		Modbus_Reg_4xxxx[i] = Modbus_Reg_3xxxx[i];
	}
	
	Modbus_Reg_4xxxx[MODBUS_40089] = Modbus_Heart.Rpt_Cnt_4xxxx;
	Modbus_Reg_4xxxx[MODBUS_40090] = 0;
	Modbus_Reg_4xxxx[MODBUS_40091] = EepHandle.Tag.SerialNumber[0];
	Modbus_Reg_4xxxx[MODBUS_40092] = EepHandle.Tag.SerialNumber[1];
	Modbus_Reg_4xxxx[MODBUS_40093] = EepHandle.Tag.SerialNumber[2];
	Modbus_Reg_4xxxx[MODBUS_40094] = EepHandle.Tag.SerialNumber[3];
	Modbus_Reg_4xxxx[MODBUS_40095] = EepHandle.Tag.SerialNumber[4];
	Modbus_Reg_4xxxx[MODBUS_40096] = EepHandle.Tag.SerialNumber[5];
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void MODBUS_Map_Update_Check( void )
{
	float		DpRate;
	ufloat		fBuf;
	S16			sBuf;
	U8			i;
	U8			ao;
	S16			SetMin;
	S16			SetMax;
	
	// 0xxxx
	if( Modbus_Reg_0xxxx[0].Bit._1 == true ){
		Modbus_Reg_0xxxx[0].Bit._1 = false;
		Modbus_Reg_0xxxx[0].Bit._2 = false;
		pMeas->Test.Item.RemoteTest_CH1 = false;
		pMeas->pAlr[0]->Latched = false;
	}
	else {
		if( pMeas->Test.Item.RemoteTest_CH1 != Modbus_Reg_0xxxx[0].Bit._2 ){
			
			if( Modbus_Reg_0xxxx[0].Bit._2 == true ){
				pMeas->Test.Item.RemoteTest_CH1 = true;
				pMeas->pGas[0]->Set = pMeas->pGas[0]->Inf.HighScale;
			}
		}
	}
	
	if( Modbus_Reg_0xxxx[0].Bit._3 == true ){
		Modbus_Reg_0xxxx[0].Bit._3 = false;
		Modbus_Reg_0xxxx[0].Bit._4 = false;
		pMeas->Test.Item.RemoteTest_CH2 = false;
		pMeas->pAlr[1]->Latched = false;
	}
	else {
		if( pMeas->Test.Item.RemoteTest_CH2 != Modbus_Reg_0xxxx[0].Bit._4 ){
			
			if( Modbus_Reg_0xxxx[0].Bit._4 == true ){
				pMeas->Test.Item.RemoteTest_CH2 = true;
				pMeas->pGas[1]->Set = pMeas->pGas[1]->Inf.HighScale;
			}
		}
	}
	
	// 4xxxx
	for( i=0; i<pMeas->Conf.OutMax; i++ ){
		
		switch( pMeas->pGas[i]->Inf.Dp ){
			case 0: DpRate = 1.000f; break;
			case 1: DpRate = 0.100f; break;
			case 2: DpRate = 0.010f; break;
			case 3: DpRate = 0.001f; break;
		}
		
		ao = i * 20;
		
		SetMin = (S16)(pMeas->pGas[i]->Inf.ZeroSkipPer / 10 * pMeas->pGas[i]->Inf.HighScale / 100 + 1);
		SetMax = (S16)(pMeas->pGas[i]->Inf.HighScale     );
		
		fBuf.w.l = Modbus_Reg_4xxxx[MODBUS_40007 + ao];
		fBuf.w.h = Modbus_Reg_4xxxx[MODBUS_40008 + ao];
		sBuf = (S16)(fBuf.f / DpRate);
		if( pMeas->pAlr[i]->Inf._1stLevel != sBuf ){
			if( (sBuf >= SetMin) && (sBuf <= SetMax) ){
				pMeas->pAlr[i]->Inf._1stLevel  = sBuf;
				SenEEP_Write_CHn( (U16 *)&pMeas->pAlr[i]->Inf._1stLevel, pMeas->Conf.iOut[i], SENSOR_EEP_CHn_ALARM_1ST_LEVEL, 1 );
			}
		}
		else if( pMeas->pAlr[i]->Inf._1stLevel != (S16)Modbus_Reg_4xxxx[MODBUS_40009 + ao] ){
			sBuf = (S16)Modbus_Reg_4xxxx[MODBUS_40009 + ao];
			if( (sBuf >= SetMin) && (sBuf <= SetMax) ){
				pMeas->pAlr[i]->Inf._1stLevel  = sBuf;
				SenEEP_Write_CHn( (U16 *)&pMeas->pAlr[i]->Inf._1stLevel, pMeas->Conf.iOut[i], SENSOR_EEP_CHn_ALARM_1ST_LEVEL, 1 );
			}
		}
		fBuf.w.l = Modbus_Reg_4xxxx[MODBUS_40010 + ao];
		fBuf.w.h = Modbus_Reg_4xxxx[MODBUS_40011 + ao];
		sBuf = (S16)(fBuf.f / DpRate);
		if( pMeas->pAlr[i]->Inf._2ndLevel != sBuf ){
			if( (sBuf >= SetMin) && (sBuf <= SetMax) ){
				pMeas->pAlr[i]->Inf._2ndLevel  = sBuf;
				SenEEP_Write_CHn( (U16 *)&pMeas->pAlr[i]->Inf._2ndLevel, pMeas->Conf.iOut[i], SENSOR_EEP_CHn_ALARM_2ND_LEVEL, 1 );
			}
		}
		else if( pMeas->pAlr[i]->Inf._2ndLevel != (S16)Modbus_Reg_4xxxx[MODBUS_40012 + ao] ){
			sBuf = (S16)Modbus_Reg_4xxxx[MODBUS_40012 + ao];
			if( (sBuf >= SetMin) && (sBuf <= SetMax) ){
				pMeas->pAlr[i]->Inf._2ndLevel  = sBuf;
				SenEEP_Write_CHn( (U16 *)&pMeas->pAlr[i]->Inf._2ndLevel, pMeas->Conf.iOut[i], SENSOR_EEP_CHn_ALARM_2ND_LEVEL, 1 );
			}
		}
	}
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

static U8 GasNo_Search( Measuring_GasInfo *pInf )
{
	U8	No = 255;
	
	switch( pInf->Method ){
		case MEASURING_METHOD_IR:
			switch( pInf->SenNo ){
				case IR_SEN_03_330:
					switch( pInf->GasNo ){
						case IR_GAS_03_330_LNG_100_LEL:				No =  11; break;
						case IR_GAS_03_330_CH4_100_LEL:
						case IR_GAS_03_330_CH4_100_VOL:				No =   4; break;
						case IR_GAS_03_330_C4H10_100_LEL:			No =  12; break;
						case IR_GAS_03_330_SFA_1_100_LEL:			No =  23; break;
						case IR_GAS_03_330_4MS_100_LEL:				No =  26; break;
						case IR_GAS_03_330_TOLUENE_100_LEL:			No =  32; break;
						case IR_GAS_03_330_ETHYLENE_100_LEL:		No =   8; break;
					}
					break;
					
				case IR_SEN_03_370:
					switch( pInf->GasNo ){
						case IR_GAS_03_370_GMP_02_3000_PPM:			No =  29; break;
						case IR_GAS_03_370_OMCTS_100_LEL:			No =  31; break;
					}
					break;
					
				case IR_SEN_03_420:
					switch( pInf->GasNo ){
						case IR_GAS_03_420_ECH_100_LEL:				No =  27; break;
					}
					break;
					
				case IR_SEN_04_260:
					switch( pInf->GasNo ){
						case IR_GAS_04_260_CO2_5000_PPM: 
						case IR_GAS_04_260_CO2_9999_PPM: 
						case IR_GAS_04_260_CO2_1_00_VOL: 
						case IR_GAS_04_260_CO2_5_0_VOL:				No =  15; break;
					}
					break;
					
				case IR_SEN_04_520:
					switch( pInf->GasNo ){
						case IR_GAS_04_520_N2O_4000_PPM:
						case IR_GAS_04_520_N2O_1000_PPM:			No =  16; break;
					}
					break;
					
				case IR_SEN_04_660:
					switch( pInf->GasNo ){
						case IR_GAS_04_660_CO_9999_PPM:
						case IR_GAS_04_660_CO_1_00_VOL:
						case IR_GAS_04_660_CO_2_00_VOL:
						case IR_GAS_04_660_CO_5_00_VOL:				No =  17; break;
					}
					break;
					
				case IR_SEN_04_850:
					switch( pInf->GasNo ){
						case IR_GAS_04_850_COS_200_PPM:
						case IR_GAS_04_850_COS_75_0_PPM:			No =   3; break;
					}
					break;
					
				case IR_SEN_08_000:
					switch( pInf->GasNo ){
						case IR_GAS_08_000_C4F8_2000_PPM:			No =  13; break;
						case IR_GAS_08_000_FL300_200_PPM:			No =  40; break;
					}
					break;
					
				case IR_SEN_08_925:
					switch( pInf->GasNo ){
						case IR_GAS_08_925_C5F8_2000_PPM:			No =  18; break;
						case IR_GAS_08_925_C4F6_2000_PPM:			No =   0; break;
						case IR_GAS_08_925_CH2F2_2000_PPM:			No =   2; break;
						case IR_GAS_08_925_TEOS_100_PPM:
						case IR_GAS_08_925_TEOS_HT200_100_PPM:		No =  14; break;
						case IR_GAS_08_925_HFC_2000_PPM:			No =  21; break;
						case IR_GAS_08_925_IPA_3000_PPM:
						case IR_GAS_08_925_IPA_100_LEL:				No =  25; break;
						case IR_GAS_08_925_SELITANE_100_LEL:		No =  34; break;
					}
					break;
					
				case IR_SEN_09_076:
					switch( pInf->GasNo ){
						case IR_GAS_09_076_C4F6S_2000_PPM:			No =  24; break;
					}
					break;
					
				case IR_SEN_09_150:
					switch( pInf->GasNo ){
						case IR_GAS_09_150_C4H2F6_1000_PPM:			No =  30; break;
					}
					break;
					
				case IR_SEN_09_230:
					switch( pInf->GasNo ){
						case IR_GAS_09_230_OMCTS_75_0_PPM:			No =  31; break;
					}
					break;
					
				case IR_SEN_09_440:
					switch( pInf->GasNo ){
						case IR_GAS_09_440_CH3F_2000_PPM:			No =   1; break;
						case IR_GAS_09_440_ETHANOL_100_LEL:			No =  35; break;
						case IR_GAS_09_440_CTFE_1000_PPM:			No =  37; break;
						case IR_GAS_09_440_C3F6_2000_PPM:			No =  38; break;
					}
					break;
					
				case IR_SEN_09_790:
					switch( pInf->GasNo ){
						case IR_GAS_09_790_C3F6_2000_PPM:			No =  38; break;
					}
					break;
					
				case IR_SEN_10_100:
					switch( pInf->GasNo ){
						case IR_GAS_10_100_METHANOL_3000_PPM:		No =  36; break;
					}
					break;
					
				case IR_SEN_10_990:
					switch( pInf->GasNo ){
						case IR_GAS_10_990_NF3_200_PPM:				No =  28; break;
						case IR_GAS_10_990_HMDS_1000_PPM:
						case IR_GAS_10_990_HMDS_100_LEL:			No =  33; break;
						case IR_GAS_10_990_C3F6O_5000_PPM:			No =  41; break;
						case IR_GAS_10_990_C3H6_100_LEL:			No =   9; break;
					}
					break;
			}
			break;
			
		case MEASURING_METHOD_CT:
			switch( pInf->SenNo ){
				case CT_SEN_EC_DC_CL2_3:
					switch( pInf->GasNo ){
						case EC_GAS_EC_DC_CL2_3_BR2_3_00_PPM:		No =  39; break;
						case EC_GAS_EC_DC_CL2_3_CL2_3_00_PPM:		No =  42; break;
					}
					break;
					
				case CT_SEN_EC_DC_H2_2000:
					switch( pInf->GasNo ){
						case EC_GAS_EC_DC_H2_2000_H2_2000_PPM:		No =  43; break;
					}
					break;
					
				case CT_SEN_EC_DC_HCL_15:
					switch( pInf->GasNo ){
						case EC_GAS_EC_DC_HCL_15_BCL3_15_0_PPM:		No =  44; break;
						case EC_GAS_EC_DC_HCL_15_HCDS_20_0_PPM:		No =  46; break;
						case EC_GAS_EC_DC_HCL_15_HCL_10_0_PPM:		No =  47; break;
						case EC_GAS_EC_DC_HCL_15_LTO520_50_0_PPM:	No =  48; break;
						case EC_GAS_EC_DC_HCL_15_MCS_15_0_PPM:		No =  49; break;
						case EC_GAS_EC_DC_HCL_15_PCL3_15_0_PPM:		No =  50; break;
						case EC_GAS_EC_DC_HCL_15_POCL3_15_0_PPM:	No =  51; break;
						case EC_GAS_EC_DC_HCL_15_SiCL4_15_0_PPM:	No =  52; break;
						case EC_GAS_EC_DC_HCL_15_SiH2CL2_15_0_PPM:	No =  53; break;
						case EC_GAS_EC_DC_HCL_15_SiHCL3_15_0_PPM:	No =  54; break;
						case EC_GAS_EC_DC_HCL_15_TCS_15_0_PPM:		No =  55; break;
						case EC_GAS_EC_DC_HCL_15_TICL4_15_0_PPM:	No =  56; break;
					}
					break;
					
				case CT_SEN_EC_DC_HF_9:
					switch( pInf->GasNo ){
						case EC_GAS_EC_DC_HF_9_BBR3_9_00_PPM:		No =  57; break;
						case EC_GAS_EC_DC_HF_9_BF3_9_00_PPM:		No =  58; break;
						case EC_GAS_EC_DC_HF_9_C2F4O_200_PPM:		No =  59; break;
						case EC_GAS_EC_DC_HF_9_CH2O2_50_0_PPM:		No =  60; break;
						case EC_GAS_EC_DC_HF_9_CLF3_1_00_PPM:		No =  61; break;
						case EC_GAS_EC_DC_HF_9_F2_3_00_PPM:			No =  62; break;
						case EC_GAS_EC_DC_HF_9_GEF4_9_00_PPM:		No =  63; break;
						case EC_GAS_EC_DC_HF_9_HBR_9_00_PPM:		No =  64; break;
						case EC_GAS_EC_DC_HF_9_HCOOH_50_0_PPM:		No =  65; break;
						case EC_GAS_EC_DC_HF_9_HF_6_00_PPM:			No =  66; break;
						case EC_GAS_EC_DC_HF_9_HNO3_20_0_PPM:		No =  67; break;
						case EC_GAS_EC_DC_HF_9_PF3_9_00_PPM:		No =  68; break;
						case EC_GAS_EC_DC_HF_9_SIF4_9_00_PPM:		No =  69; break;
						case EC_GAS_EC_DC_HF_9_WF6_9_00_PPM:		No =  70; break;
					}
					break;
					
				case CT_SEN_EC_DC_O3_1:
					switch( pInf->GasNo ){
						case EC_GAS_EC_DC_O3_1_O3_1_00_PPM:			No =  71; break;
					}
					break;
					
				case CT_SEN_ETO_C_20:
					switch( pInf->GasNo ){
						case EC_GAS_ETO_C_20_C2H4O_EO_30_0_PPM:		No =  85; break;
						case EC_GAS_ETO_C_20_C3H7OH_500_PPM:		No =  73; break;
						case EC_GAS_ETO_C_20_C5H8O2_30_0_PPM:		No =  86; break;
						case EC_GAS_ETO_C_20_C7H8_150_PPM:			No =  79; break;
						case EC_GAS_ETO_C_20_TEB_15_0_PPM:			No =  87; break;
						case EC_GAS_ETO_C_20_TEOS_30_0_PPM:			No =  14; break;
						case EC_GAS_ETO_C_20_USN_01_20_0_PPM:		No =  88; break;
					}
					break;
					
				case CT_SEN_H2_C_20000:
					switch( pInf->GasNo ){
						case EC_GAS_H2_C_20000_H2_4_000_VOL:		No =  43; break;
					}
					break;
					
				case CT_SEN_H2O2_CB_100:
					switch( pInf->GasNo ){
						case EC_GAS_H2O2_CB_100_H2O2_100_PPM:		No =  89; break;
					}
					break;
					
				case CT_SEN_H2S_C_50:
					switch( pInf->GasNo ){
						case EC_GAS_H2S_C_50_H2S_30_0_PPM:			No =  90; break;
					}
					break;
					
				case CT_SEN_HCN_C_100:
					switch( pInf->GasNo ){
						case EC_GAS_HCN_C_100_HCN_30_0_PPM:			No =  91; break;
					}
					break;
					
				case CT_SEN_NH3_CR_200:
					switch( pInf->GasNo ){
						case EC_GAS_NH3_CR_200_ACP_02_150_PPM:		No =  92; break;
						case EC_GAS_NH3_CR_200_C5H5N_150_PPM:		No =  93; break;
						case EC_GAS_NH3_CR_200_NH3_75_0_PPM:		No =  94; break;
						case EC_GAS_NH3_CR_200_NH4OH_75_0_PPM:		No =  95; break;
						case EC_GAS_NH3_CR_200_SAM24_75_0_PPM:		No =  96; break;
					}
					break;
					
				case CT_SEN_NO_CF_100:
					switch( pInf->GasNo ){
						case EC_GAS_NO_CF_100_NO_100_PPM:			No =  97; break;
					}
					break;
					
				case CT_SEN_NO2_C_20:
					switch( pInf->GasNo ){
						case EC_GAS_NO2_C_20_NO2_15_0_PPM:			No =  98; break;
					}
					break;
					
				case CT_SEN_PH3_C_5:
					switch( pInf->GasNo ){
						case EC_GAS_PH3_C_5_COS_100_PPM:			No =   3; break;
						case EC_GAS_PH3_C_5_GEH4_1_00_PPM:			No =  99; break;
						case EC_GAS_PH3_C_5_H2SO4_25_0_PPM:			No = 100; break;
						case EC_GAS_PH3_C_5_PH3_1_00_PPM:			No = 101; break;
					}
					break;
					
				case CT_SEN_SIH4_CD_50:
					switch( pInf->GasNo ){
						case EC_GAS_SIH4_CD_50_3MS_30_0_PPM:		No = 102; break;
						case EC_GAS_SIH4_CD_50_C3H10SI_30_0_PPM:	No = 103; break;
						case EC_GAS_SIH4_CD_50_GEH4_1_00_PPM:		No =  99; break;
						case EC_GAS_SIH4_CD_50_SI2H6_15_0_PPM:		No = 104; break;
						case EC_GAS_SIH4_CD_50_SI3H8_15_0_PPM:		No = 105; break;
						case EC_GAS_SIH4_CD_50_SIH4_15_0_PPM:		No = 106; break;
						case EC_GAS_SIH4_CD_50_TSA_15_0_PPM:		No = 107; break;
					}
					break;
					
				case CT_SEN_SO2_C_20:
					switch( pInf->GasNo ){
						case EC_GAS_SO2_C_20_H2SO4_100_PPM:			No = 100; break;
						case EC_GAS_SO2_C_20_SO2_10_0_PPM:			No = 108; break;
					}
					break;
					
				case CT_SEN_C2H4_C_1500:
					switch( pInf->GasNo ){
						case EC_GAS_C2H4_C_1500_C2H4_2000_PPM:		No =   8; break;
						case EC_GAS_C2H4_C_1500_C3H6_2000_PPM:		No =   9; break;
					}
					break;
					
				case CT_SEN_CH2O_C_10:
					switch( pInf->GasNo ){
						case EC_GAS_CH2O_C_10_CH2O_10_0_PPM:		No = 109; break;
					}
					break;
					
				case CT_SEN_CO_CF_200:
					switch( pInf->GasNo ){
						case EC_GAS_CO_CF_200_CO_150_PPM:			No =  17; break;
					}
					break;
					
				case CT_SEN_O2_MP_100:
					switch( pInf->GasNo ){
						case EC_GAS_O2_MP_100_O2_30_0_VOL:
						case EC_GAS_O2_MP_100_O2_25_0_VOL:			No = 110; break;
					}
					break;
					
				case CT_SEN_ASH3_3E_1:
					switch( pInf->GasNo ){
						case EC_GAS_ASH3_3E_1_ASH3_0_300_PPM:		No = 111; break;
						case EC_GAS_ASH3_3E_1_B2H6_0_300_PPM:		No = 112; break;
						case EC_GAS_ASH3_3E_1_GEH4_3_00_PPM:		No =  99; break;
					}
					break;
					
				case CT_SEN_COCL2_3E_1:
					switch( pInf->GasNo ){
						case EC_GAS_COCL2_3E_1_COCL2_1_00_PPM:		No = 113; break;
					}
					break;
					
				case CT_SEN_NAP_100AM:
					switch( pInf->GasNo ){
						case CB_GAS_NAP_100AM_C2H6_100_LEL:			No =  76; break;
						case CB_GAS_NAP_100AM_C3H6_100_LEL:			No =   9; break;
						case CB_GAS_NAP_100AM_C3H6O3_100_LEL:		No =  77; break;
						case CB_GAS_NAP_100AM_C3H7OH_100_LEL:		No =  73; break;
						case CB_GAS_NAP_100AM_C3H8_100_LEL:			No =  78; break;
						case CB_GAS_NAP_100AM_C5H10_100_LEL:		No =  74; break;
						case CB_GAS_NAP_100AM_C5H12_100_LEL:		No =  79; break;
						case CB_GAS_NAP_100AM_C7H8_100_LEL:			No =  80; break;
						case CB_GAS_NAP_100AM_CH4_100_LEL:			No =   4; break;
						case CB_GAS_NAP_100AM_COMB_100_LEL:			No =  81; break;
						case CB_GAS_NAP_100AM_H_C_100_LEL:			No =  19; break;
						case CB_GAS_NAP_100AM_H2_100_LEL:			No =  43; break;
						case CB_GAS_NAP_100AM_D2_100_LEL:			No =  82; break;
						case CB_GAS_NAP_100AM_C4H10_100_LEL:		No =  12; break;
						case CB_GAS_NAP_100AM_LNG_100_LEL:			No =  11; break;
						case CB_GAS_NAP_100AM_LPG_100_LEL:			No =  83; break;
						case CB_GAS_NAP_100AM_PGMEA_100_LEL:		No =  84; break;
					}
					break;
					
				case CT_SEN_GS_100A:
					switch( pInf->GasNo ){
						case CB_GAS_GS_100A_C2H2_100_LEL:			No =  72; break;
						case CB_GAS_GS_100A_C2H4_100_LEL:			No =   8; break;
						case CB_GAS_GS_100A_C3H7OH_100_LEL:			No =  73; break;
						case CB_GAS_GS_100A_C5H10_100_LEL:			No =  74; break;
						case CB_GAS_GS_100A_H2_100_LEL:				No =  43; break;
					}
					break;
					
				case CT_SEN_GS_100SC:
					switch( pInf->GasNo ){
						case SC_GAS_GS_100SC_ORG_1000_PPM:			No =  75; break;
					}
					break;
			}
			break;
	}
	
	return No;
}


