#ifndef   __COMMMON_H__
#define   __COMMMON_H__

#include <stdio.h>
#include <string.h>
#include <stdint.h>
                 
/* Start abbreviation */
typedef unsigned char				U8;
typedef	signed char					S8;
typedef	unsigned short				U16;
typedef	signed short				S16;
typedef	unsigned long				U32;
typedef	signed long					S32;
typedef	unsigned long long			U64;
typedef	signed long long			S64;

typedef unsigned char				bool;
/* End abbreviation */
                     
/* Start Include */
#include "stm32f4xx_hal.h"
#include "stm32f4xx_it.h"
#include "stm32f4xx.h"
#include "main.h"
/* End Include */

/* Start Define */
//#define _DEBUG_BUILD
//#define _FLASH_CHECK
//#define _PACKET_CHECK

#define FirmwareVersion		(0.3f)

// REV0.0 (2019-10-23)
// App DownLoad �� Start Ȯ�� �Ϸ�
// SD to Main UI �Ϸ�.
// UI ���� ����
// UI �Ϸ� (2019-11-01)
// REV0.1 (2019-11-04)
// IR Sensor Module Upload ���� (2019-11-04)
// IR Sensor Upload Test �Ϸ� (2019-12-03)
// ���� �۾� �� Display ��� ���� �ʿ�
// Key �Է� ���� �� �ٷ� ���� ���� (2019-12-04)
// LCD Backlight ���� (2019-12-19)
// REV0.2 (2019-12-24)
// ��û/���㿡 ���� App Start �߰�
// Sensor Bios Version Ȯ�� �߰�
// REV0.3 (2019-12-27)
// UI ���� ( F/W Version ǥ��, Upload �Ϸ� ǥ��)


            
#ifndef true  
  #define true						1
#endif

#ifndef false  
  #define false						0
#endif

#ifndef TRUE  
  #define TRUE						1
#endif

#ifndef FALSE  
  #define FALSE						0
#endif

#ifndef NULL
  #define NULL						(void *)0
#endif

#define BOOT_ADDR	0x08000000U
#define MAIN_ADDR	0x08020000U
#define PAGE_SIZE	(unsigned short)0x400
#define MAX_BUFF	0x200

#define SENSOR_START_ADDR		0x08010000U
#define SENSOR_END_ADDR			0x0803FFFFU
#define SENSOR_FLASH_SIZE   (IR_END_ADDR - IR_START_ADDR)

//#define CT_START_ADDR		0x08010000U
//#define CT_END_ADDR			0x0803FFFFU
//#define CT_FLASH_SIZE   (CT_END_ADDR - CT_START_ADDR)

#define EXIT		0x01
#define MAIN_UPLOAD 0x02
#define IR_UPLOAD	0x04
#define CT_UPLOAD	0x08 
#define BOOT_MODE	0x20

/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
typedef union {
    struct{
		U16		l: 16;
        U16		h: 16;
    }w;
	float		f;
}ufloat;

/* End Struct */

/* Start Function */ 
#ifdef _DEBUG_BUILD
	#define dprintf( ... )			printf( __VA_ARGS__ )
#else                                                    
	#define dprintf( ... )
#endif
/* End Function */

/* Start Variable */

/* End Variable */


#endif // __COMMMON_H__
