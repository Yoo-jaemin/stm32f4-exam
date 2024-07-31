#if 0

/* Start abbreviation */
/* End abbreviation */

/* Start Include */
//#include "i2c1.h"

#include <stdbool.h>
#include <stdint.h>

#include "main.h"
/* End Include */

/* Start Define */
#define AT24C32_DEVICE_ADDRESS							( (uint16_t)0xA0 )
#define AT24C32_WRITE_PROTECT_GPIO_PORT					GPIOF
#define AT24C32_WRITE_PROTECT_PIN						GPIO_PIN_10
/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
/* End Struct */

/* Start Function */
static void GPIO_Init( void );
static void AT24C32_WriteProtect( bool use );
/* End Function */

/* Start Variable */
static uint8_t	AT24C32_ReadByte[2];
/* End Variable */

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void AT24C32_Init( void )
{
    GPIO_Init();
    AT24C32_WriteProtect( true );
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void AT24C32_WriteWord( uint16_t wAddr, uint16_t wData )
{
    static uint8_t	Byte[2];
    uint16_t		MemoryAddress = wAddr * 2;
    uint8_t	        FailCount = 5;
    bool		err = true;
    
    AT24C32_WriteProtect( false );
    
    Byte[0] = HI_BYTE( wData );
    Byte[1] = LO_BYTE( wData );
	
    while( FailCount )
    {
		I2C1_Mem_16Bit_Write( AT24C32_DEVICE_ADDRESS, MemoryAddress, Byte, 2 );
		
		HAL_Delay( 7 );
		
        if( AT24C32_ReadWord( wAddr ) == wData ){
			err = false;
			break;
		}
		
		FailCount--;
    }
	
	
    AT24C32_WriteProtect( true );
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

uint16_t AT24C32_ReadWord( uint16_t wAddr )
{
    uint16_t		MemoryAddress = wAddr * 2;
    uint16_t		ret;
    
    I2C1_Mem_16Bit_Read( AT24C32_DEVICE_ADDRESS, MemoryAddress, AT24C32_ReadByte, 2 );
	
    ret = ( ( (uint16_t)AT24C32_ReadByte[0] << 8 & 0xFF00 ) | ( (uint16_t)AT24C32_ReadByte[1] & 0x00FF ) );
	
    return ret;
}


static void AT24C32_WriteProtect( bool use )
{
    if( use ){ HAL_GPIO_WritePin( EEP_WP_ON_OFF_GPIO_Port, EEP_WP_ON_OFF_Pin, GPIO_PIN_SET		); }
    else	 { HAL_GPIO_WritePin( EEP_WP_ON_OFF_GPIO_Port, EEP_WP_ON_OFF_Pin, GPIO_PIN_RESET	); }
}

#endif





