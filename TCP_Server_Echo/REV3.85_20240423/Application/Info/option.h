#ifndef   __OPTION_H__
#define   __OPTION_H__


#ifdef __OPTION_C__
	#define OPTION_EXT
#else
	#define OPTION_EXT extern
#endif

/* Start abbreviation */
/* End abbreviation */

/* Start Include */ 
#include "common.h"
/* End Include */

/* Start Define */
/* End Define */

/* Start Enum */
/* End Enum */

/* Start Struct */
typedef union {
    U8  Byte;
    struct{
        U8		TypeNo			: 4; // 0x0F
        bool	IsUniMode		: 1; // 0x10
        bool	IsPoeMode		: 1; // 0x20
        bool	IsBatMode		: 1; // 0x40
        bool	BuzPresent		: 1; // 0x80
    }Item;
}System_OptionType;
/* End Struct */

/* Start Function */
OPTION_EXT bool System_Opt_Load( void );
/* End Function */

/* Start Variable */
OPTION_EXT System_OptionType		SystemOption;
/* End Variable */


#endif // __OPTION_H__
