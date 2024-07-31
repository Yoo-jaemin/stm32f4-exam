#ifndef   __AT24C32_H__
#define   __AT24C32_H__


/* Start abbreviation */
/* End abbreviation */

/* Start Include */

#include <stdint.h>
/* End Include */

/* Start Define */
/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
/* End Struct */

/* Start Function */
 void AT24C32_Init( void );
 void AT24C32_WriteWord( uint16_t wAddr, uint16_t wData );
 uint16_t AT24C32_ReadWord( uint16_t wAddr );
/* End Function */

/* Start Variable */
/* End Variable */


#endif // __AT24C32_H__
