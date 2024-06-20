///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_cortex.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW2DA.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_cortex.c
//        -D USE_HAL_DRIVER -D STM32F407xx -lC
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List
//        -lA
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List
//        -o
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config "C:\Program Files
//        (x86)\IAR Systems\Embedded Workbench
//        8.2\arm\inc\c\DLib_Config_Full.h" -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\STM32F4xx_HAL_Driver\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\STM32F4xx_HAL_Driver\Inc\Legacy\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\CMSIS\Include\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/..\Drivers\CMSIS\Device\ST\STM32F4xx\Include\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/../Core/Inc\
//        -I
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM/../Drivers/STM32F4xx_HAL_Driver/Inc\
//        -Ol)
//    Locale       =  C
//    List file    =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_cortex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_CORTEX_ClearEvent
        PUBLIC HAL_MPU_ConfigRegion
        PUBLIC HAL_MPU_Disable
        PUBLIC HAL_MPU_Enable
        PUBLIC HAL_NVIC_ClearPendingIRQ
        PUBLIC HAL_NVIC_DisableIRQ
        PUBLIC HAL_NVIC_EnableIRQ
        PUBLIC HAL_NVIC_GetActive
        PUBLIC HAL_NVIC_GetPendingIRQ
        PUBLIC HAL_NVIC_GetPriority
        PUBLIC HAL_NVIC_GetPriorityGrouping
        PUBLIC HAL_NVIC_SetPendingIRQ
        PUBLIC HAL_NVIC_SetPriority
        PUBLIC HAL_NVIC_SetPriorityGrouping
        PUBLIC HAL_NVIC_SystemReset
        PUBLIC HAL_SYSTICK_CLKSourceConfig
        PUBWEAK HAL_SYSTICK_Callback
        PUBLIC HAL_SYSTICK_Config
        PUBLIC HAL_SYSTICK_IRQHandler
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI Resource D0:64, D1:64, D2:64, D3:64, D4:64, D5:64, D6:64, D7:64
          CFI Resource D8:64, D9:64, D10:64, D11:64, D12:64, D13:64, D14:64
          CFI Resource D15:64
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI D0 Undefined
          CFI D1 Undefined
          CFI D2 Undefined
          CFI D3 Undefined
          CFI D4 Undefined
          CFI D5 Undefined
          CFI D6 Undefined
          CFI D7 Undefined
          CFI D8 SameValue
          CFI D9 SameValue
          CFI D10 SameValue
          CFI D11 SameValue
          CFI D12 SameValue
          CFI D13 SameValue
          CFI D14 SameValue
          CFI D15 SameValue
          CFI EndCommon cfiCommon0
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_cortex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_cortex.c
//    4   * @author  MCD Application Team
//    5   * @brief   CORTEX HAL module driver.
//    6   *          This file provides firmware functions to manage the following 
//    7   *          functionalities of the CORTEX:
//    8   *           + Initialization and de-initialization functions
//    9   *           + Peripheral Control functions 
//   10   *
//   11   @verbatim  
//   12   ==============================================================================
//   13                         ##### How to use this driver #####
//   14   ==============================================================================
//   15 
//   16     [..]  
//   17     *** How to configure Interrupts using CORTEX HAL driver ***
//   18     ===========================================================
//   19     [..]     
//   20     This section provides functions allowing to configure the NVIC interrupts (IRQ).
//   21     The Cortex-M4 exceptions are managed by CMSIS functions.
//   22    
//   23     (#) Configure the NVIC Priority Grouping using HAL_NVIC_SetPriorityGrouping()
//   24         function according to the following table.
//   25     (#) Configure the priority of the selected IRQ Channels using HAL_NVIC_SetPriority(). 
//   26     (#) Enable the selected IRQ Channels using HAL_NVIC_EnableIRQ().
//   27     (#) please refer to programming manual for details in how to configure priority. 
//   28       
//   29      -@- When the NVIC_PRIORITYGROUP_0 is selected, IRQ preemption is no more possible. 
//   30          The pending IRQ priority will be managed only by the sub priority.
//   31    
//   32      -@- IRQ priority order (sorted by highest to lowest priority):
//   33         (+@) Lowest preemption priority
//   34         (+@) Lowest sub priority
//   35         (+@) Lowest hardware priority (IRQ number)
//   36  
//   37     [..]  
//   38     *** How to configure Systick using CORTEX HAL driver ***
//   39     ========================================================
//   40     [..]
//   41     Setup SysTick Timer for time base.
//   42            
//   43    (+) The HAL_SYSTICK_Config() function calls the SysTick_Config() function which
//   44        is a CMSIS function that:
//   45         (++) Configures the SysTick Reload register with value passed as function parameter.
//   46         (++) Configures the SysTick IRQ priority to the lowest value 0x0F.
//   47         (++) Resets the SysTick Counter register.
//   48         (++) Configures the SysTick Counter clock source to be Core Clock Source (HCLK).
//   49         (++) Enables the SysTick Interrupt.
//   50         (++) Starts the SysTick Counter.
//   51     
//   52    (+) You can change the SysTick Clock source to be HCLK_Div8 by calling the macro
//   53        __HAL_CORTEX_SYSTICKCLK_CONFIG(SYSTICK_CLKSOURCE_HCLK_DIV8) just after the
//   54        HAL_SYSTICK_Config() function call. The __HAL_CORTEX_SYSTICKCLK_CONFIG() macro is defined
//   55        inside the stm32f4xx_hal_cortex.h file.
//   56 
//   57    (+) You can change the SysTick IRQ priority by calling the
//   58        HAL_NVIC_SetPriority(SysTick_IRQn,...) function just after the HAL_SYSTICK_Config() function 
//   59        call. The HAL_NVIC_SetPriority() call the NVIC_SetPriority() function which is a CMSIS function.
//   60 
//   61    (+) To adjust the SysTick time base, use the following formula:
//   62                             
//   63        Reload Value = SysTick Counter Clock (Hz) x  Desired Time base (s)
//   64        (++) Reload Value is the parameter to be passed for HAL_SYSTICK_Config() function
//   65        (++) Reload Value should not exceed 0xFFFFFF
//   66    
//   67   @endverbatim
//   68   ******************************************************************************
//   69   * @attention
//   70   *
//   71   * Copyright (c) 2017 STMicroelectronics.
//   72   * All rights reserved.
//   73   *
//   74   * This software is licensed under terms that can be found in the LICENSE file in
//   75   * the root directory of this software component.
//   76   * If no LICENSE file comes with this software, it is provided AS-IS.
//   77   ******************************************************************************
//   78   */
//   79 
//   80 /* Includes ------------------------------------------------------------------*/
//   81 #include "stm32f4xx_hal.h"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function __NVIC_SetPriorityGrouping
          CFI NoCalls
        THUMB
// static __interwork __softfp void __NVIC_SetPriorityGrouping(uint32_t)
__NVIC_SetPriorityGrouping:
        ANDS     R0,R0,#0x7
        LDR.N    R3,??DataTable15  ;; 0xe000ed0c
        LDR      R2,[R3, #+0]
        MOVW     R1,#+63743
        ANDS     R2,R1,R2
        LDR.N    R1,??DataTable15_1  ;; 0x5fa0000
        ORRS     R1,R1,R0, LSL #+8
        ORRS     R2,R1,R2
        STR      R2,[R3, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function __NVIC_GetPriorityGrouping
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t __NVIC_GetPriorityGrouping(void)
__NVIC_GetPriorityGrouping:
        LDR.N    R0,??DataTable15  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+8,#+3
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function __NVIC_EnableIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn_Type)
__NVIC_EnableIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable15_2  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function __NVIC_DisableIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn_Type)
__NVIC_DisableIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable15_3  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function __NVIC_GetPendingIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t __NVIC_GetPendingIRQ(IRQn_Type)
__NVIC_GetPendingIRQ:
        MOVS     R1,R0
        MOVS     R0,R1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_GetPendingIRQ_0
        LDR.N    R0,??DataTable15_4  ;; 0xe000e200
        MOVS     R2,R1
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
        B.N      ??__NVIC_GetPendingIRQ_1
??__NVIC_GetPendingIRQ_0:
        MOVS     R0,#+0
??__NVIC_GetPendingIRQ_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function __NVIC_SetPendingIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void __NVIC_SetPendingIRQ(IRQn_Type)
__NVIC_SetPendingIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_SetPendingIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable15_4  ;; 0xe000e200
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
??__NVIC_SetPendingIRQ_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function __NVIC_ClearPendingIRQ
          CFI NoCalls
        THUMB
// static __interwork __softfp void __NVIC_ClearPendingIRQ(IRQn_Type)
__NVIC_ClearPendingIRQ:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_ClearPendingIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.N    R1,??DataTable15_5  ;; 0xe000e280
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        STR      R2,[R1, R0, LSL #+2]
??__NVIC_ClearPendingIRQ_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function __NVIC_GetActive
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t __NVIC_GetActive(IRQn_Type)
__NVIC_GetActive:
        MOVS     R1,R0
        MOVS     R0,R1
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_GetActive_0
        LDR.N    R0,??DataTable15_6  ;; 0xe000e300
        MOVS     R2,R1
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        LSRS     R2,R2,#+5
        LDR      R0,[R0, R2, LSL #+2]
        ANDS     R1,R1,#0x1F
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
        B.N      ??__NVIC_GetActive_1
??__NVIC_GetActive_0:
        MOVS     R0,#+0
??__NVIC_GetActive_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function __NVIC_SetPriority
          CFI NoCalls
        THUMB
// static __interwork __softfp void __NVIC_SetPriority(IRQn_Type, uint32_t)
__NVIC_SetPriority:
        MOVS     R2,R0
        SXTB     R2,R2            ;; SignExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BMI.N    ??__NVIC_SetPriority_0
        LSLS     R1,R1,#+4
        LDR.N    R2,??DataTable15_7  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        STRB     R1,[R2, R0]
        B.N      ??__NVIC_SetPriority_1
??__NVIC_SetPriority_0:
        LSLS     R1,R1,#+4
        LDR.N    R2,??DataTable15_8  ;; 0xe000ed18
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0xF
        ADD      R0,R2,R0
        STRB     R1,[R0, #-4]
??__NVIC_SetPriority_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function __NVIC_GetPriority
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t __NVIC_GetPriority(IRQn_Type)
__NVIC_GetPriority:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_GetPriority_0
        LDR.N    R1,??DataTable15_7  ;; 0xe000e400
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDRB     R0,[R1, R0]
        LSRS     R0,R0,#+4
        B.N      ??__NVIC_GetPriority_1
??__NVIC_GetPriority_0:
        LDR.N    R1,??DataTable15_8  ;; 0xe000ed18
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0xF
        ADD      R0,R1,R0
        LDRB     R0,[R0, #-4]
        LSRS     R0,R0,#+4
??__NVIC_GetPriority_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function NVIC_EncodePriority
          CFI NoCalls
        THUMB
// static __interwork __softfp uint32_t NVIC_EncodePriority(uint32_t, uint32_t, uint32_t)
NVIC_EncodePriority:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        ANDS     R0,R0,#0x7
        RSBS     R3,R0,#+7
        CMP      R3,#+5
        BCC.N    ??NVIC_EncodePriority_0
        MOVS     R3,#+4
        B.N      ??NVIC_EncodePriority_1
??NVIC_EncodePriority_0:
        RSBS     R3,R0,#+7
??NVIC_EncodePriority_1:
        ADDS     R4,R0,#+4
        CMP      R4,#+7
        BCS.N    ??NVIC_EncodePriority_2
        MOVS     R0,#+0
        B.N      ??NVIC_EncodePriority_3
??NVIC_EncodePriority_2:
        SUBS     R0,R0,#+3
??NVIC_EncodePriority_3:
        MOVS     R4,#+1
        LSLS     R3,R4,R3
        SUBS     R3,R3,#+1
        ANDS     R1,R3,R1
        LSLS     R1,R1,R0
        LSLS     R0,R4,R0
        SUBS     R0,R0,#+1
        ANDS     R0,R0,R2
        ORRS     R0,R0,R1
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function NVIC_DecodePriority
          CFI NoCalls
        THUMB
// static __interwork __softfp void NVIC_DecodePriority(uint32_t, uint32_t, uint32_t *const, uint32_t *const)
NVIC_DecodePriority:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        ANDS     R1,R1,#0x7
        RSBS     R4,R1,#+7
        CMP      R4,#+5
        BCC.N    ??NVIC_DecodePriority_0
        MOVS     R4,#+4
        B.N      ??NVIC_DecodePriority_1
??NVIC_DecodePriority_0:
        RSBS     R4,R1,#+7
??NVIC_DecodePriority_1:
        ADDS     R5,R1,#+4
        CMP      R5,#+7
        BCS.N    ??NVIC_DecodePriority_2
        MOVS     R1,#+0
        B.N      ??NVIC_DecodePriority_3
??NVIC_DecodePriority_2:
        SUBS     R1,R1,#+3
??NVIC_DecodePriority_3:
        MOVS     R5,#+1
        MOVS     R6,R0
        LSRS     R6,R6,R1
        LSLS     R4,R5,R4
        SUBS     R4,R4,#+1
        ANDS     R4,R4,R6
        STR      R4,[R2, #+0]
        LSLS     R1,R5,R1
        SUBS     R1,R1,#+1
        ANDS     R0,R1,R0
        STR      R0,[R3, #+0]
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function __NVIC_SystemReset
          CFI NoCalls
        THUMB
// static __interwork __softfp void __NVIC_SystemReset(void)
__NVIC_SystemReset:
        DSB      SY
        LDR.N    R1,??DataTable15  ;; 0xe000ed0c
        LDR      R2,[R1, #+0]
        ANDS     R2,R2,#0x700
        LDR.N    R0,??DataTable15_9  ;; 0x5fa0004
        ORRS     R2,R0,R2
        STR      R2,[R1, #+0]
        DSB      SY
??__NVIC_SystemReset_0:
        Nop      
        B.N      ??__NVIC_SystemReset_0
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function SysTick_Config
        THUMB
// static __interwork __softfp uint32_t SysTick_Config(uint32_t)
SysTick_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        SUBS     R1,R0,#+1
        CMP      R1,#+16777216
        BCC.N    ??SysTick_Config_0
        MOVS     R0,#+1
        B.N      ??SysTick_Config_1
??SysTick_Config_0:
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable15_10  ;; 0xe000e014
        STR      R0,[R1, #+0]
        MOVS     R1,#+15
        MOVS     R0,#-1
          CFI FunCall __NVIC_SetPriority
        BL       __NVIC_SetPriority
        MOVS     R0,#+0
        LDR.N    R1,??DataTable15_11  ;; 0xe000e018
        STR      R0,[R1, #+0]
        MOVS     R0,#+7
        LDR.N    R1,??DataTable15_12  ;; 0xe000e010
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
??SysTick_Config_1:
        POP      {R1,PC}          ;; return
          CFI EndBlock cfiBlock13
//   82 
//   83 /** @addtogroup STM32F4xx_HAL_Driver
//   84   * @{
//   85   */
//   86 
//   87 /** @defgroup CORTEX CORTEX
//   88   * @brief CORTEX HAL module driver
//   89   * @{
//   90   */
//   91 
//   92 #ifdef HAL_CORTEX_MODULE_ENABLED
//   93 
//   94 /* Private types -------------------------------------------------------------*/
//   95 /* Private variables ---------------------------------------------------------*/
//   96 /* Private constants ---------------------------------------------------------*/
//   97 /* Private macros ------------------------------------------------------------*/
//   98 /* Private functions ---------------------------------------------------------*/
//   99 /* Exported functions --------------------------------------------------------*/
//  100 
//  101 /** @defgroup CORTEX_Exported_Functions CORTEX Exported Functions
//  102   * @{
//  103   */
//  104 
//  105 
//  106 /** @defgroup CORTEX_Exported_Functions_Group1 Initialization and de-initialization functions
//  107  *  @brief    Initialization and Configuration functions 
//  108  *
//  109 @verbatim    
//  110   ==============================================================================
//  111               ##### Initialization and de-initialization functions #####
//  112   ==============================================================================
//  113     [..]
//  114       This section provides the CORTEX HAL driver functions allowing to configure Interrupts
//  115       Systick functionalities 
//  116 
//  117 @endverbatim
//  118   * @{
//  119   */
//  120 
//  121 
//  122 /**
//  123   * @brief  Sets the priority grouping field (preemption priority and subpriority)
//  124   *         using the required unlock sequence.
//  125   * @param  PriorityGroup The priority grouping bits length. 
//  126   *         This parameter can be one of the following values:
//  127   *         @arg NVIC_PRIORITYGROUP_0: 0 bits for preemption priority
//  128   *                                    4 bits for subpriority
//  129   *         @arg NVIC_PRIORITYGROUP_1: 1 bits for preemption priority
//  130   *                                    3 bits for subpriority
//  131   *         @arg NVIC_PRIORITYGROUP_2: 2 bits for preemption priority
//  132   *                                    2 bits for subpriority
//  133   *         @arg NVIC_PRIORITYGROUP_3: 3 bits for preemption priority
//  134   *                                    1 bits for subpriority
//  135   *         @arg NVIC_PRIORITYGROUP_4: 4 bits for preemption priority
//  136   *                                    0 bits for subpriority
//  137   * @note   When the NVIC_PriorityGroup_0 is selected, IRQ preemption is no more possible. 
//  138   *         The pending IRQ priority will be managed only by the subpriority. 
//  139   * @retval None
//  140   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function HAL_NVIC_SetPriorityGrouping
        THUMB
//  141 void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
//  142 {
HAL_NVIC_SetPriorityGrouping:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  143   /* Check the parameters */
//  144   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
//  145   
//  146   /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
//  147   NVIC_SetPriorityGrouping(PriorityGroup);
          CFI FunCall __NVIC_SetPriorityGrouping
        BL       __NVIC_SetPriorityGrouping
//  148 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock14
//  149 
//  150 /**
//  151   * @brief  Sets the priority of an interrupt.
//  152   * @param  IRQn External interrupt number.
//  153   *         This parameter can be an enumerator of IRQn_Type enumeration
//  154   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  155   * @param  PreemptPriority The preemption priority for the IRQn channel.
//  156   *         This parameter can be a value between 0 and 15
//  157   *         A lower priority value indicates a higher priority 
//  158   * @param  SubPriority the subpriority level for the IRQ channel.
//  159   *         This parameter can be a value between 0 and 15
//  160   *         A lower priority value indicates a higher priority.          
//  161   * @retval None
//  162   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function HAL_NVIC_SetPriority
        THUMB
//  163 void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
//  164 { 
HAL_NVIC_SetPriority:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  165   uint32_t prioritygroup = 0x00U;
        MOVS     R0,#+0
//  166   
//  167   /* Check the parameters */
//  168   assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
//  169   assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
//  170   
//  171   prioritygroup = NVIC_GetPriorityGrouping();
          CFI FunCall __NVIC_GetPriorityGrouping
        BL       __NVIC_GetPriorityGrouping
//  172   
//  173   NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
        MOVS     R2,R6
        MOVS     R1,R5
          CFI FunCall NVIC_EncodePriority
        BL       NVIC_EncodePriority
        MOVS     R1,R0
        MOVS     R0,R4
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_SetPriority
        BL       __NVIC_SetPriority
//  174 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock15
//  175 
//  176 /**
//  177   * @brief  Enables a device specific interrupt in the NVIC interrupt controller.
//  178   * @note   To configure interrupts priority correctly, the NVIC_PriorityGroupConfig()
//  179   *         function should be called before. 
//  180   * @param  IRQn External interrupt number.
//  181   *         This parameter can be an enumerator of IRQn_Type enumeration
//  182   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  183   * @retval None
//  184   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function HAL_NVIC_EnableIRQ
        THUMB
//  185 void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
//  186 {
HAL_NVIC_EnableIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  187   /* Check the parameters */
//  188   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  189   
//  190   /* Enable interrupt */
//  191   NVIC_EnableIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_EnableIRQ
        BL       __NVIC_EnableIRQ
//  192 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock16
//  193 
//  194 /**
//  195   * @brief  Disables a device specific interrupt in the NVIC interrupt controller.
//  196   * @param  IRQn External interrupt number.
//  197   *         This parameter can be an enumerator of IRQn_Type enumeration
//  198   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  199   * @retval None
//  200   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function HAL_NVIC_DisableIRQ
        THUMB
//  201 void HAL_NVIC_DisableIRQ(IRQn_Type IRQn)
//  202 {
HAL_NVIC_DisableIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  203   /* Check the parameters */
//  204   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  205   
//  206   /* Disable interrupt */
//  207   NVIC_DisableIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_DisableIRQ
        BL       __NVIC_DisableIRQ
//  208 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock17
//  209 
//  210 /**
//  211   * @brief  Initiates a system reset request to reset the MCU.
//  212   * @retval None
//  213   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function HAL_NVIC_SystemReset
        THUMB
//  214 void HAL_NVIC_SystemReset(void)
//  215 {
HAL_NVIC_SystemReset:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  216   /* System Reset */
//  217   NVIC_SystemReset();
          CFI FunCall __NVIC_SystemReset
        BL       __NVIC_SystemReset
//  218 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock18
//  219 
//  220 /**
//  221   * @brief  Initializes the System Timer and its interrupt, and starts the System Tick Timer.
//  222   *         Counter is in free running mode to generate periodic interrupts.
//  223   * @param  TicksNumb Specifies the ticks Number of ticks between two interrupts.
//  224   * @retval status:  - 0  Function succeeded.
//  225   *                  - 1  Function failed.
//  226   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function HAL_SYSTICK_Config
        THUMB
//  227 uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
//  228 {
HAL_SYSTICK_Config:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  229    return SysTick_Config(TicksNumb);
          CFI FunCall SysTick_Config
        BL       SysTick_Config
        POP      {R1,PC}          ;; return
//  230 }
          CFI EndBlock cfiBlock19
//  231 /**
//  232   * @}
//  233   */
//  234 
//  235 /** @defgroup CORTEX_Exported_Functions_Group2 Peripheral Control functions
//  236  *  @brief   Cortex control functions 
//  237  *
//  238 @verbatim   
//  239   ==============================================================================
//  240                       ##### Peripheral Control functions #####
//  241   ==============================================================================  
//  242     [..]
//  243       This subsection provides a set of functions allowing to control the CORTEX
//  244       (NVIC, SYSTICK, MPU) functionalities. 
//  245  
//  246       
//  247 @endverbatim
//  248   * @{
//  249   */
//  250 
//  251 #if (__MPU_PRESENT == 1U)
//  252 /**
//  253   * @brief  Disables the MPU
//  254   * @retval None
//  255   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function HAL_MPU_Disable
          CFI NoCalls
        THUMB
//  256 void HAL_MPU_Disable(void)
//  257 {
//  258   /* Make sure outstanding transfers are done */
//  259   __DMB();
HAL_MPU_Disable:
        DMB      SY
//  260 
//  261   /* Disable fault exceptions */
//  262   SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
        LDR.N    R0,??DataTable15_13  ;; 0xe000ed24
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x10000
        STR      R1,[R0, #+0]
//  263   
//  264   /* Disable the MPU and clear the control register*/
//  265   MPU->CTRL = 0U;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable15_14  ;; 0xe000ed94
        STR      R0,[R1, #+0]
//  266 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock20
//  267 
//  268 /**
//  269   * @brief  Enable the MPU.
//  270   * @param  MPU_Control Specifies the control mode of the MPU during hard fault, 
//  271   *          NMI, FAULTMASK and privileged access to the default memory 
//  272   *          This parameter can be one of the following values:
//  273   *            @arg MPU_HFNMI_PRIVDEF_NONE
//  274   *            @arg MPU_HARDFAULT_NMI
//  275   *            @arg MPU_PRIVILEGED_DEFAULT
//  276   *            @arg MPU_HFNMI_PRIVDEF
//  277   * @retval None
//  278   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function HAL_MPU_Enable
          CFI NoCalls
        THUMB
//  279 void HAL_MPU_Enable(uint32_t MPU_Control)
//  280 {
//  281   /* Enable the MPU */
//  282   MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
HAL_MPU_Enable:
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable15_14  ;; 0xe000ed94
        STR      R0,[R1, #+0]
//  283   
//  284   /* Enable fault exceptions */
//  285   SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
        LDR.N    R0,??DataTable15_13  ;; 0xe000ed24
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000
        STR      R1,[R0, #+0]
//  286   
//  287   /* Ensure MPU setting take effects */
//  288   __DSB();
        DSB      SY
//  289   __ISB();
        ISB      SY
//  290 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock21
//  291 
//  292 /**
//  293   * @brief  Initializes and configures the Region and the memory to be protected.
//  294   * @param  MPU_Init Pointer to a MPU_Region_InitTypeDef structure that contains
//  295   *                the initialization and configuration information.
//  296   * @retval None
//  297   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function HAL_MPU_ConfigRegion
          CFI NoCalls
        THUMB
//  298 void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_Init)
//  299 {
//  300   /* Check the parameters */
//  301   assert_param(IS_MPU_REGION_NUMBER(MPU_Init->Number));
//  302   assert_param(IS_MPU_REGION_ENABLE(MPU_Init->Enable));
//  303 
//  304   /* Set the Region number */
//  305   MPU->RNR = MPU_Init->Number;
HAL_MPU_ConfigRegion:
        LDRB     R1,[R0, #+1]
        LDR.N    R2,??DataTable15_15  ;; 0xe000ed98
        STR      R1,[R2, #+0]
//  306 
//  307   if ((MPU_Init->Enable) != RESET)
        LDRB     R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??HAL_MPU_ConfigRegion_0
//  308   {
//  309     /* Check the parameters */
//  310     assert_param(IS_MPU_INSTRUCTION_ACCESS(MPU_Init->DisableExec));
//  311     assert_param(IS_MPU_REGION_PERMISSION_ATTRIBUTE(MPU_Init->AccessPermission));
//  312     assert_param(IS_MPU_TEX_LEVEL(MPU_Init->TypeExtField));
//  313     assert_param(IS_MPU_ACCESS_SHAREABLE(MPU_Init->IsShareable));
//  314     assert_param(IS_MPU_ACCESS_CACHEABLE(MPU_Init->IsCacheable));
//  315     assert_param(IS_MPU_ACCESS_BUFFERABLE(MPU_Init->IsBufferable));
//  316     assert_param(IS_MPU_SUB_REGION_DISABLE(MPU_Init->SubRegionDisable));
//  317     assert_param(IS_MPU_REGION_SIZE(MPU_Init->Size));
//  318     
//  319     MPU->RBAR = MPU_Init->BaseAddress;
        LDR      R1,[R0, #+4]
        LDR.N    R2,??DataTable15_16  ;; 0xe000ed9c
        STR      R1,[R2, #+0]
//  320     MPU->RASR = ((uint32_t)MPU_Init->DisableExec             << MPU_RASR_XN_Pos)   |
//  321                 ((uint32_t)MPU_Init->AccessPermission        << MPU_RASR_AP_Pos)   |
//  322                 ((uint32_t)MPU_Init->TypeExtField            << MPU_RASR_TEX_Pos)  |
//  323                 ((uint32_t)MPU_Init->IsShareable             << MPU_RASR_S_Pos)    |
//  324                 ((uint32_t)MPU_Init->IsCacheable             << MPU_RASR_C_Pos)    |
//  325                 ((uint32_t)MPU_Init->IsBufferable            << MPU_RASR_B_Pos)    |
//  326                 ((uint32_t)MPU_Init->SubRegionDisable        << MPU_RASR_SRD_Pos)  |
//  327                 ((uint32_t)MPU_Init->Size                    << MPU_RASR_SIZE_Pos) |
//  328                 ((uint32_t)MPU_Init->Enable                  << MPU_RASR_ENABLE_Pos);
        LDRB     R1,[R0, #+12]
        LDRB     R2,[R0, #+11]
        LSLS     R2,R2,#+24
        ORRS     R2,R2,R1, LSL #+28
        LDRB     R1,[R0, #+10]
        ORRS     R2,R2,R1, LSL #+19
        LDRB     R1,[R0, #+13]
        ORRS     R2,R2,R1, LSL #+18
        LDRB     R1,[R0, #+14]
        ORRS     R2,R2,R1, LSL #+17
        LDRB     R1,[R0, #+15]
        ORRS     R2,R2,R1, LSL #+16
        LDRB     R1,[R0, #+9]
        ORRS     R2,R2,R1, LSL #+8
        LDRB     R1,[R0, #+8]
        ORRS     R2,R2,R1, LSL #+1
        LDRB     R0,[R0, #+0]
        ORRS     R2,R0,R2
        LDR.N    R0,??DataTable15_17  ;; 0xe000eda0
        STR      R2,[R0, #+0]
        B.N      ??HAL_MPU_ConfigRegion_1
//  329   }
//  330   else
//  331   {
//  332     MPU->RBAR = 0x00U;
??HAL_MPU_ConfigRegion_0:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable15_16  ;; 0xe000ed9c
        STR      R0,[R1, #+0]
//  333     MPU->RASR = 0x00U;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable15_17  ;; 0xe000eda0
        STR      R0,[R1, #+0]
//  334   }
//  335 }
??HAL_MPU_ConfigRegion_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock22
//  336 #endif /* __MPU_PRESENT */
//  337 
//  338 /**
//  339   * @brief  Clear pending events.
//  340   * @retval None
//  341   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function HAL_CORTEX_ClearEvent
          CFI NoCalls
        THUMB
//  342 void HAL_CORTEX_ClearEvent(void)
//  343 {
//  344   __SEV();
HAL_CORTEX_ClearEvent:
        SEV      
//  345   __WFE();
        WFE      
//  346 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock23
//  347 
//  348 /**
//  349   * @brief  Gets the priority grouping field from the NVIC Interrupt Controller.
//  350   * @retval Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field)
//  351   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function HAL_NVIC_GetPriorityGrouping
        THUMB
//  352 uint32_t HAL_NVIC_GetPriorityGrouping(void)
//  353 {
HAL_NVIC_GetPriorityGrouping:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  354   /* Get the PRIGROUP[10:8] field value */
//  355   return NVIC_GetPriorityGrouping();
          CFI FunCall __NVIC_GetPriorityGrouping
        BL       __NVIC_GetPriorityGrouping
        POP      {R1,PC}          ;; return
//  356 }
          CFI EndBlock cfiBlock24
//  357 
//  358 /**
//  359   * @brief  Gets the priority of an interrupt.
//  360   * @param  IRQn External interrupt number.
//  361   *         This parameter can be an enumerator of IRQn_Type enumeration
//  362   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  363   * @param   PriorityGroup the priority grouping bits length.
//  364   *         This parameter can be one of the following values:
//  365   *           @arg NVIC_PRIORITYGROUP_0: 0 bits for preemption priority
//  366   *                                      4 bits for subpriority
//  367   *           @arg NVIC_PRIORITYGROUP_1: 1 bits for preemption priority
//  368   *                                      3 bits for subpriority
//  369   *           @arg NVIC_PRIORITYGROUP_2: 2 bits for preemption priority
//  370   *                                      2 bits for subpriority
//  371   *           @arg NVIC_PRIORITYGROUP_3: 3 bits for preemption priority
//  372   *                                      1 bits for subpriority
//  373   *           @arg NVIC_PRIORITYGROUP_4: 4 bits for preemption priority
//  374   *                                      0 bits for subpriority
//  375   * @param  pPreemptPriority Pointer on the Preemptive priority value (starting from 0).
//  376   * @param  pSubPriority Pointer on the Subpriority value (starting from 0).
//  377   * @retval None
//  378   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function HAL_NVIC_GetPriority
        THUMB
//  379 void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t *pPreemptPriority, uint32_t *pSubPriority)
//  380 {
HAL_NVIC_GetPriority:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R6,R3
//  381   /* Check the parameters */
//  382   assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
//  383  /* Get priority for Cortex-M system or device specific interrupts */
//  384   NVIC_DecodePriority(NVIC_GetPriority(IRQn), PriorityGroup, pPreemptPriority, pSubPriority);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_GetPriority
        BL       __NVIC_GetPriority
        MOVS     R3,R6
        MOVS     R2,R5
        MOVS     R1,R4
          CFI FunCall NVIC_DecodePriority
        BL       NVIC_DecodePriority
//  385 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock25
//  386 
//  387 /**
//  388   * @brief  Sets Pending bit of an external interrupt.
//  389   * @param  IRQn External interrupt number
//  390   *         This parameter can be an enumerator of IRQn_Type enumeration
//  391   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  392   * @retval None
//  393   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function HAL_NVIC_SetPendingIRQ
        THUMB
//  394 void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn)
//  395 {
HAL_NVIC_SetPendingIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  396   /* Check the parameters */
//  397   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  398   
//  399   /* Set interrupt pending */
//  400   NVIC_SetPendingIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_SetPendingIRQ
        BL       __NVIC_SetPendingIRQ
//  401 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock26
//  402 
//  403 /**
//  404   * @brief  Gets Pending Interrupt (reads the pending register in the NVIC 
//  405   *         and returns the pending bit for the specified interrupt).
//  406   * @param  IRQn External interrupt number.
//  407   *          This parameter can be an enumerator of IRQn_Type enumeration
//  408   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  409   * @retval status: - 0  Interrupt status is not pending.
//  410   *                 - 1  Interrupt status is pending.
//  411   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function HAL_NVIC_GetPendingIRQ
        THUMB
//  412 uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn)
//  413 {
HAL_NVIC_GetPendingIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  414   /* Check the parameters */
//  415   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  416   
//  417   /* Return 1 if pending else 0 */
//  418   return NVIC_GetPendingIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_GetPendingIRQ
        BL       __NVIC_GetPendingIRQ
        POP      {R1,PC}          ;; return
//  419 }
          CFI EndBlock cfiBlock27
//  420 
//  421 /**
//  422   * @brief  Clears the pending bit of an external interrupt.
//  423   * @param  IRQn External interrupt number.
//  424   *         This parameter can be an enumerator of IRQn_Type enumeration
//  425   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  426   * @retval None
//  427   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function HAL_NVIC_ClearPendingIRQ
        THUMB
//  428 void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn)
//  429 {
HAL_NVIC_ClearPendingIRQ:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  430   /* Check the parameters */
//  431   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  432   
//  433   /* Clear pending interrupt */
//  434   NVIC_ClearPendingIRQ(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_ClearPendingIRQ
        BL       __NVIC_ClearPendingIRQ
//  435 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock28
//  436 
//  437 /**
//  438   * @brief Gets active interrupt ( reads the active register in NVIC and returns the active bit).
//  439   * @param IRQn External interrupt number
//  440   *         This parameter can be an enumerator of IRQn_Type enumeration
//  441   *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
//  442   * @retval status: - 0  Interrupt status is not pending.
//  443   *                 - 1  Interrupt status is pending.
//  444   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function HAL_NVIC_GetActive
        THUMB
//  445 uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn)
//  446 {
HAL_NVIC_GetActive:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  447   /* Check the parameters */
//  448   assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
//  449   
//  450   /* Return 1 if active else 0 */
//  451   return NVIC_GetActive(IRQn);
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
          CFI FunCall __NVIC_GetActive
        BL       __NVIC_GetActive
        POP      {R1,PC}          ;; return
//  452 }
          CFI EndBlock cfiBlock29
//  453 
//  454 /**
//  455   * @brief  Configures the SysTick clock source.
//  456   * @param  CLKSource specifies the SysTick clock source.
//  457   *          This parameter can be one of the following values:
//  458   *             @arg SYSTICK_CLKSOURCE_HCLK_DIV8: AHB clock divided by 8 selected as SysTick clock source.
//  459   *             @arg SYSTICK_CLKSOURCE_HCLK: AHB clock selected as SysTick clock source.
//  460   * @retval None
//  461   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function HAL_SYSTICK_CLKSourceConfig
          CFI NoCalls
        THUMB
//  462 void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource)
//  463 {
//  464   /* Check the parameters */
//  465   assert_param(IS_SYSTICK_CLK_SOURCE(CLKSource));
//  466   if (CLKSource == SYSTICK_CLKSOURCE_HCLK)
HAL_SYSTICK_CLKSourceConfig:
        CMP      R0,#+4
        BNE.N    ??HAL_SYSTICK_CLKSourceConfig_0
//  467   {
//  468     SysTick->CTRL |= SYSTICK_CLKSOURCE_HCLK;
        LDR.N    R0,??DataTable15_12  ;; 0xe000e010
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+0]
        B.N      ??HAL_SYSTICK_CLKSourceConfig_1
//  469   }
//  470   else
//  471   {
//  472     SysTick->CTRL &= ~SYSTICK_CLKSOURCE_HCLK;
??HAL_SYSTICK_CLKSourceConfig_0:
        LDR.N    R0,??DataTable15_12  ;; 0xe000e010
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//  473   }
//  474 }
??HAL_SYSTICK_CLKSourceConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DATA32
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DATA32
        DC32     0x5fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DATA32
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DATA32
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DATA32
        DC32     0xe000e200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DATA32
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DATA32
        DC32     0xe000e300

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DATA32
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DATA32
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_9:
        DATA32
        DC32     0x5fa0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_10:
        DATA32
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_11:
        DATA32
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_12:
        DATA32
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_13:
        DATA32
        DC32     0xe000ed24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_14:
        DATA32
        DC32     0xe000ed94

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_15:
        DATA32
        DC32     0xe000ed98

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_16:
        DATA32
        DC32     0xe000ed9c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_17:
        DATA32
        DC32     0xe000eda0
//  475 
//  476 /**
//  477   * @brief  This function handles SYSTICK interrupt request.
//  478   * @retval None
//  479   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function HAL_SYSTICK_IRQHandler
        THUMB
//  480 void HAL_SYSTICK_IRQHandler(void)
//  481 {
HAL_SYSTICK_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  482   HAL_SYSTICK_Callback();
          CFI FunCall HAL_SYSTICK_Callback
        BL       HAL_SYSTICK_Callback
//  483 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock31
//  484 
//  485 /**
//  486   * @brief  SYSTICK callback.
//  487   * @retval None
//  488   */

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function HAL_SYSTICK_Callback
          CFI NoCalls
        THUMB
//  489 __weak void HAL_SYSTICK_Callback(void)
//  490 {
//  491   /* NOTE : This function Should not be modified, when the callback is needed,
//  492             the HAL_SYSTICK_Callback could be implemented in the user file
//  493    */
//  494 }
HAL_SYSTICK_Callback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock32

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  495 
//  496 /**
//  497   * @}
//  498   */
//  499 
//  500 /**
//  501   * @}
//  502   */
//  503 
//  504 #endif /* HAL_CORTEX_MODULE_ENABLED */
//  505 /**
//  506   * @}
//  507   */
//  508 
//  509 /**
//  510   * @}
//  511   */
//  512 
// 
// 906 bytes in section .text
// 
// 904 bytes of CODE memory (+ 2 bytes shared)
//
//Errors: none
//Warnings: none
