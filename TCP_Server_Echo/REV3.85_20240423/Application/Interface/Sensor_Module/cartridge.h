#ifndef   __CARTRIDGE_H__
#define   __CARTRIDGE_H__


#ifdef __CARTRIDGE_C__
	#define CARTRIDGE_EXT
#else
	#define CARTRIDGE_EXT extern
#endif

/* Start abbreviation */
/* End abbreviation */

/* Start Include */ 
#include "common.h"
#include "sensor_eep_map.h"
#include "modbus_rtu_master.h"
/* End Include */

/* Start Define */
#define CARTRIDGE_READ_REGISTER_SIZE		( 128 )
#define CARTRIDGE_MODBUS_ADDRESS			( 0 )
#define CARTRIDGE_SENSOR_OFFSET				( 2.5f )
#define CARTRIDGE_BUF_SIZE					( 200 )
/* End Define */

/* Start Enum */
enum {
	CARTRIDGE_SEN_CH_1,
	CARTRIDGE_SEN_CH_2,
	CARTRIDGE_SEN_CH_MAX
};

enum {
	CARTRIDGE_INF_RESERVED_1,
	CARTRIDGE_INF_HW_VER,
	CARTRIDGE_INF_FW_VER,
	CARTRIDGE_INF_RESERVED_2,
	CARTRIDGE_INF_RESERVED_3,
	CARTRIDGE_INF_BUF_SIZE,
	CARTRIDGE_INF_RESERVED_4,
	CARTRIDGE_INF_RESERVED_5,
	CARTRIDGE_INF_CHANNELS,
	CARTRIDGE_INF_SIZE
};

enum {
	CARTRIDGE_EEP_BLK_SYS,
	CARTRIDGE_EEP_BLK_CH1,
	CARTRIDGE_EEP_BLK_CH2,
	CARTRIDGE_EEP_BLK_MAX
};

enum {
	CARTRIDGE_AMP_CAL_CH1 = BIT0,
	CARTRIDGE_AMP_CAL_CH2 = BIT1,
	CARTRIDGE_AMP_CAL_CH3 = BIT2,
	CARTRIDGE_AMP_CAL_CH4 = BIT3,
	CARTRIDGE_AMP_CAL_ALL = ( CARTRIDGE_AMP_CAL_CH1 | CARTRIDGE_AMP_CAL_CH2 | CARTRIDGE_AMP_CAL_CH3 | CARTRIDGE_AMP_CAL_CH4 ),
};

typedef enum
{
	LPTIA_RLOAD_0 = 0U,
	LPTIA_RLOAD_10,
	LPTIA_RLOAD_30,
	LPTIA_RLOAD_50,
	LPTIA_RLOAD_100,
	LPTIA_RLOAD_1600,
	LPTIA_RLOAD_3100,
	LPTIA_RLOAD_3600,
}LPTIA_RLOAD_Type;

typedef enum
{
	LPTIA_RFILTER_DISCONNECT = 0U,
	LPTIA_RFILTER_BYPASS,
	LPTIA_RFILTER_20K,
	LPTIA_RFILTER_100K,
	LPTIA_RFILTER_200K,
	LPTIA_RFILTER_400K,
	LPTIA_RFILTER_600K,
	LPTIA_RFILTER_1M,
}LPTIA_RF_Type;

typedef enum
{
	LPTIA_RGAIN_DISCONNECT = 0U,
	LPTIA_RGAIN_200,
	LPTIA_RGAIN_1K,
	LPTIA_RGAIN_2K,
	LPTIA_RGAIN_3K,
	LPTIA_RGAIN_4K,
	LPTIA_RGAIN_6K,
	LPTIA_RGAIN_8K,
	LPTIA_RGAIN_10K,
	LPTIA_RGAIN_12K,
	LPTIA_RGAIN_16K,
	LPTIA_RGAIN_20K,
	LPTIA_RGAIN_24K,
	LPTIA_RGAIN_30K,
	LPTIA_RGAIN_32K,
	LPTIA_RGAIN_40K,
	LPTIA_RGAIN_48K,
	LPTIA_RGAIN_64K,
	LPTIA_RGAIN_85K,
	LPTIA_RGAIN_96K,
	LPTIA_RGAIN_100K,
	LPTIA_RGAIN_120K,
	LPTIA_RGAIN_128K,
	LPTIA_RGAIN_160K,
	LPTIA_RGAIN_196K,
	LPTIA_RGAIN_256K,
	LPTIA_RGAIN_512K,
	LPTIA_RGAIN_MAX
}LPTIA_RGAIN_Type;

typedef enum {
	LPTIA_SWMODE_OFF				= 0x0000, // ULP TIA off
	LPTIA_SWMODE_NORM				= 0x302c, // normal mode for all types of gas sensors
	LPTIA_SWMODE_NOISECANCEL		= 0x306C, // enable noise cancellation, only useful for zero-biased gas sensor
	LPTIA_SWMODE_DIODE				= 0x302D, // diode protection
	LPTIA_SWMODE_SHORT				= 0x302F, // short switch for very large current to avoid saturation
	LPTIA_SWMODE_AC					= 0x3180, // for AC impedance measurement
	LPTIA_SWMODE_RAMP				= 0x0094, // RAMP test on DE/SE
	LPTIA_SWMODE_HPCAPA				= 0x0094, // CAPA test with High power TIA
	LPTIA_SWMODE_LPCAPA				= 0x0014, // CAPA test with Low power TIA
	LPTIA_SWMODE_DUALSNS0			= 0x702C, // tia0 switch mode for dual gas sensor
	LPTIA_SWMODE_DUALSNS1			= 0x0020, // tia1 switch mode for dual gas sensor
	LPTIA_SWMODE_EXTRES				= 0x322C, // work mode with external RTIA for all types of gas sensors
	LPTIA_SWMODE_RESISTOR			= 0x3820, // Rister measuring in test
	LPTIA_SWMODE_EDASIG				= 0x6424, // EDA signal measurement
	LPTIA_SWMODE_EDARCAL			= 0xE034, // EDA R_CAL measurement
	LPTIA_SWMODE_EDASIG_EXTRES		= 0x6624, // EDA signal measurement with external resitor
	LPTIA_SWMODE_EDARCAL_EXTRES		= 0xE234, // EDA R_CAL measurement wiht external resistor
	LPTIA_SWMODE_ECG				= 0x0000, // ECG signal measurement mode
	LPTIA_SWMODE_2LEAD				= 0x3024, // 3 lead sensor, two lead mode
	LPTIA_SWMODE_VOTAGE_FOLLOWER	= 0x0AF0  // CB Sensor
}LPTIA_SwitchModeType;
/* End Enum */

/* Start Struct */
typedef union {
    U16  Word[2];
    struct{
		LPTIA_RLOAD_Type		RLOAD	:  4;
		LPTIA_RF_Type			RFILTER	:  4;
		LPTIA_RGAIN_Type		RGAIN	:  8;
		LPTIA_SwitchModeType	SWMODE	: 16;
    }Item;
}Cartridge_TiaType;

typedef union {
    U16  Word;
    struct{
		bool	DebugMode	: 1; // 1
        bool	HS300x		: 1; // 2
        bool	Reserved_1	: 1; // 3
        bool	Reserved_2	: 1; // 4
        bool	iADC		: 1; // 5
        bool	Flash_CRC	: 1; // 6
        bool	Flash		: 1; // 7
        U16		Reserved_4	: 9;
    }Bit;
}CartridgeErrorType;

typedef struct {
	bool						IsPresent;
	U16							State;
	CartridgeErrorType			Error;
	U8							iWaveSet;
	U8							iWaveOut;
	U8							Wave[CARTRIDGE_SEN_CH_MAX][CARTRIDGE_BUF_SIZE];
	U16							ReceiveBuf[CARTRIDGE_READ_REGISTER_SIZE];
	U16							Inf[CARTRIDGE_INF_SIZE];
	U16							Eep[CARTRIDGE_EEP_BLK_MAX][SENSOR_EEP_BLK_SIZE];
	U16							SequenceNo;
}Cartridge_HandleType;
/* End Struct */

/* Start Function */
CARTRIDGE_EXT void Cartridge_Config( MODBUS_MasterHandleType *pModbus );
CARTRIDGE_EXT void Cartridge_Info_Read_Packet_Send( MODBUS_MasterHandleType *pModbus );
CARTRIDGE_EXT void Cartridge_Data_Read_Packet_Send( MODBUS_MasterHandleType *pModbus );
CARTRIDGE_EXT void Cartridge_Wave_Read_Packet_Send( MODBUS_MasterHandleType *pModbus );
CARTRIDGE_EXT void Cartridge_Eep_Read_Packet_Send( MODBUS_MasterHandleType *pModbus, U8 Block, U16 wAddr, U16 wSize );
CARTRIDGE_EXT void Cartridge_Eep_Write_Packet_Send( MODBUS_MasterHandleType *pModbus, U8 Block, U16 wAddr, U16 wSize );
CARTRIDGE_EXT void Cartridge_Eep_Init_Packet_Send( MODBUS_MasterHandleType *pModbus, U8 Block );
CARTRIDGE_EXT bool Cartridge_Packet_Sequence_Check( MODBUS_MasterHandleType *pModbus );
/* End Function */

/* Start Variable */
CARTRIDGE_EXT Cartridge_HandleType	CartridgeHandle;
/* End Variable */


#endif // __CARTRIDGE_H__


