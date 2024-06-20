///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_exti.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW2DD.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_exti.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_exti.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_EXTI_ClearConfigLine
        PUBLIC HAL_EXTI_ClearPending
        PUBLIC HAL_EXTI_GenerateSWI
        PUBLIC HAL_EXTI_GetConfigLine
        PUBLIC HAL_EXTI_GetHandle
        PUBLIC HAL_EXTI_GetPending
        PUBLIC HAL_EXTI_IRQHandler
        PUBLIC HAL_EXTI_RegisterCallback
        PUBLIC HAL_EXTI_SetConfigLine
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_exti.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_exti.c
//    4   * @author  MCD Application Team
//    5   * @brief   EXTI HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities of the Extended Interrupts and events controller (EXTI) peripheral:
//    8   *           + Initialization and de-initialization functions
//    9   *           + IO operation functions
//   10   *
//   11   ******************************************************************************
//   12   * @attention
//   13   *
//   14   * Copyright (c) 2018 STMicroelectronics.
//   15   * All rights reserved.
//   16   *
//   17   * This software is licensed under terms that can be found in the LICENSE file
//   18   * in the root directory of this software component.
//   19   * If no LICENSE file comes with this software, it is provided AS-IS.
//   20   *
//   21   ******************************************************************************
//   22   @verbatim
//   23   ==============================================================================
//   24                     ##### EXTI Peripheral features #####
//   25   ==============================================================================
//   26   [..]
//   27     (+) Each Exti line can be configured within this driver.
//   28 
//   29     (+) Exti line can be configured in 3 different modes
//   30         (++) Interrupt
//   31         (++) Event
//   32         (++) Both of them
//   33 
//   34     (+) Configurable Exti lines can be configured with 3 different triggers
//   35         (++) Rising
//   36         (++) Falling
//   37         (++) Both of them
//   38 
//   39     (+) When set in interrupt mode, configurable Exti lines have two different
//   40         interrupts pending registers which allow to distinguish which transition
//   41         occurs:
//   42         (++) Rising edge pending interrupt
//   43         (++) Falling
//   44 
//   45     (+) Exti lines 0 to 15 are linked to gpio pin number 0 to 15. Gpio port can
//   46         be selected through multiplexer.
//   47 
//   48                      ##### How to use this driver #####
//   49   ==============================================================================
//   50   [..]
//   51 
//   52     (#) Configure the EXTI line using HAL_EXTI_SetConfigLine().
//   53         (++) Choose the interrupt line number by setting "Line" member from
//   54              EXTI_ConfigTypeDef structure.
//   55         (++) Configure the interrupt and/or event mode using "Mode" member from
//   56              EXTI_ConfigTypeDef structure.
//   57         (++) For configurable lines, configure rising and/or falling trigger
//   58              "Trigger" member from EXTI_ConfigTypeDef structure.
//   59         (++) For Exti lines linked to gpio, choose gpio port using "GPIOSel"
//   60              member from GPIO_InitTypeDef structure.
//   61 
//   62     (#) Get current Exti configuration of a dedicated line using
//   63         HAL_EXTI_GetConfigLine().
//   64         (++) Provide exiting handle as parameter.
//   65         (++) Provide pointer on EXTI_ConfigTypeDef structure as second parameter.
//   66 
//   67     (#) Clear Exti configuration of a dedicated line using HAL_EXTI_ClearConfigLine().
//   68         (++) Provide exiting handle as parameter.
//   69 
//   70     (#) Register callback to treat Exti interrupts using HAL_EXTI_RegisterCallback().
//   71         (++) Provide exiting handle as first parameter.
//   72         (++) Provide which callback will be registered using one value from
//   73              EXTI_CallbackIDTypeDef.
//   74         (++) Provide callback function pointer.
//   75 
//   76     (#) Get interrupt pending bit using HAL_EXTI_GetPending().
//   77 
//   78     (#) Clear interrupt pending bit using HAL_EXTI_ClearPending().
//   79 
//   80     (#) Generate software interrupt using HAL_EXTI_GenerateSWI().
//   81 
//   82   @endverbatim
//   83   */
//   84 
//   85 /* Includes ------------------------------------------------------------------*/
//   86 #include "stm32f4xx_hal.h"
//   87 
//   88 /** @addtogroup STM32F4xx_HAL_Driver
//   89   * @{
//   90   */
//   91 
//   92 /** @addtogroup EXTI
//   93   * @{
//   94   */
//   95 /** MISRA C:2012 deviation rule has been granted for following rule:
//   96   * Rule-18.1_b - Medium: Array `EXTICR' 1st subscript interval [0,7] may be out
//   97   * of bounds [0,3] in following API :
//   98   * HAL_EXTI_SetConfigLine
//   99   * HAL_EXTI_GetConfigLine
//  100   * HAL_EXTI_ClearConfigLine
//  101   */
//  102 
//  103 #ifdef HAL_EXTI_MODULE_ENABLED
//  104 
//  105 /* Private typedef -----------------------------------------------------------*/
//  106 /* Private defines -----------------------------------------------------------*/
//  107 /** @defgroup EXTI_Private_Constants EXTI Private Constants
//  108   * @{
//  109   */
//  110 
//  111 /**
//  112   * @}
//  113   */
//  114 
//  115 /* Private macros ------------------------------------------------------------*/
//  116 /* Private variables ---------------------------------------------------------*/
//  117 /* Private function prototypes -----------------------------------------------*/
//  118 /* Exported functions --------------------------------------------------------*/
//  119 
//  120 /** @addtogroup EXTI_Exported_Functions
//  121   * @{
//  122   */
//  123 
//  124 /** @addtogroup EXTI_Exported_Functions_Group1
//  125   *  @brief    Configuration functions
//  126   *
//  127 @verbatim
//  128  ===============================================================================
//  129               ##### Configuration functions #####
//  130  ===============================================================================
//  131 
//  132 @endverbatim
//  133   * @{
//  134   */
//  135 
//  136 /**
//  137   * @brief  Set configuration of a dedicated Exti line.
//  138   * @param  hexti Exti handle.
//  139   * @param  pExtiConfig Pointer on EXTI configuration to be set.
//  140   * @retval HAL Status.
//  141   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_EXTI_SetConfigLine
          CFI NoCalls
        THUMB
//  142 HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig)
//  143 {
HAL_EXTI_SetConfigLine:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  144   uint32_t regval;
//  145   uint32_t linepos;
//  146   uint32_t maskline;
//  147 
//  148   /* Check null pointer */
//  149   if ((hexti == NULL) || (pExtiConfig == NULL))
        CMP      R0,#+0
        BEQ.N    ??HAL_EXTI_SetConfigLine_0
        CMP      R1,#+0
        BNE.N    ??HAL_EXTI_SetConfigLine_1
//  150   {
//  151     return HAL_ERROR;
??HAL_EXTI_SetConfigLine_0:
        MOVS     R0,#+1
        B.N      ??HAL_EXTI_SetConfigLine_2
//  152   }
//  153 
//  154   /* Check parameters */
//  155   assert_param(IS_EXTI_LINE(pExtiConfig->Line));
//  156   assert_param(IS_EXTI_MODE(pExtiConfig->Mode));
//  157 
//  158   /* Assign line number to handle */
//  159   hexti->Line = pExtiConfig->Line;
??HAL_EXTI_SetConfigLine_1:
        LDR      R2,[R1, #+0]
        STR      R2,[R0, #+0]
//  160 
//  161   /* Compute line mask */
//  162   linepos = (pExtiConfig->Line & EXTI_PIN_MASK);
        LDRB     R3,[R1, #+0]
        ANDS     R3,R3,#0x1F
//  163   maskline = (1uL << linepos);
        MOVS     R2,#+1
        LSLS     R2,R2,R3
//  164 
//  165   /* Configure triggers for configurable lines */
//  166   if ((pExtiConfig->Line & EXTI_CONFIG) != 0x00u)
        LDR      R0,[R1, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??HAL_EXTI_SetConfigLine_3
//  167   {
//  168     assert_param(IS_EXTI_TRIGGER(pExtiConfig->Trigger));
//  169 
//  170     /* Configure rising trigger */
//  171     /* Mask or set line */
//  172     if ((pExtiConfig->Trigger & EXTI_TRIGGER_RISING) != 0x00u)
        LDRB     R0,[R1, #+8]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_EXTI_SetConfigLine_4
//  173     {
//  174       EXTI->RTSR |= maskline;
        LDR.N    R0,??DataTable6  ;; 0x40013c08
        LDR      R4,[R0, #+0]
        ORRS     R4,R2,R4
        STR      R4,[R0, #+0]
        B.N      ??HAL_EXTI_SetConfigLine_5
//  175     }
//  176     else
//  177     {
//  178       EXTI->RTSR &= ~maskline;
??HAL_EXTI_SetConfigLine_4:
        LDR.N    R0,??DataTable6  ;; 0x40013c08
        LDR      R4,[R0, #+0]
        BICS     R4,R4,R2
        STR      R4,[R0, #+0]
//  179     }
//  180 
//  181     /* Configure falling trigger */
//  182     /* Mask or set line */
//  183     if ((pExtiConfig->Trigger & EXTI_TRIGGER_FALLING) != 0x00u)
??HAL_EXTI_SetConfigLine_5:
        LDRB     R0,[R1, #+8]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_EXTI_SetConfigLine_6
//  184     {
//  185       EXTI->FTSR |= maskline;
        LDR.N    R0,??DataTable6_1  ;; 0x40013c0c
        LDR      R4,[R0, #+0]
        ORRS     R4,R2,R4
        STR      R4,[R0, #+0]
        B.N      ??HAL_EXTI_SetConfigLine_7
//  186     }
//  187     else
//  188     {
//  189       EXTI->FTSR &= ~maskline;
??HAL_EXTI_SetConfigLine_6:
        LDR.N    R0,??DataTable6_1  ;; 0x40013c0c
        LDR      R4,[R0, #+0]
        BICS     R4,R4,R2
        STR      R4,[R0, #+0]
//  190     }
//  191 
//  192 
//  193     /* Configure gpio port selection in case of gpio exti line */
//  194     if ((pExtiConfig->Line & EXTI_GPIO) == EXTI_GPIO)
??HAL_EXTI_SetConfigLine_7:
        LDR      R0,[R1, #+0]
        ANDS     R0,R0,#0x6000000
        CMP      R0,#+100663296
        BNE.N    ??HAL_EXTI_SetConfigLine_3
//  195     {
//  196       assert_param(IS_EXTI_GPIO_PORT(pExtiConfig->GPIOSel));
//  197       assert_param(IS_EXTI_GPIO_PIN(linepos));
//  198 
//  199       regval = SYSCFG->EXTICR[linepos >> 2u];
        LDR.N    R5,??DataTable6_2  ;; 0x40013808
        MOVS     R0,R3
        LSRS     R0,R0,#+2
        LDR      R4,[R5, R0, LSL #+2]
//  200       regval &= ~(SYSCFG_EXTICR1_EXTI0 << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
        MOVS     R6,#+15
        ANDS     R0,R3,#0x3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+2
        LSLS     R6,R6,R0
        BICS     R4,R4,R6
//  201       regval |= (pExtiConfig->GPIOSel << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
        LDR      R6,[R1, #+12]
        ANDS     R0,R3,#0x3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+2
        LSLS     R6,R6,R0
        ORRS     R4,R6,R4
//  202       SYSCFG->EXTICR[linepos >> 2u] = regval;
        LSRS     R3,R3,#+2
        STR      R4,[R5, R3, LSL #+2]
//  203     }
//  204   }
//  205 
//  206   /* Configure interrupt mode : read current mode */
//  207   /* Mask or set line */
//  208   if ((pExtiConfig->Mode & EXTI_MODE_INTERRUPT) != 0x00u)
??HAL_EXTI_SetConfigLine_3:
        LDRB     R0,[R1, #+4]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_EXTI_SetConfigLine_8
//  209   {
//  210     EXTI->IMR |= maskline;
        LDR.N    R0,??DataTable6_3  ;; 0x40013c00
        LDR      R3,[R0, #+0]
        ORRS     R3,R2,R3
        STR      R3,[R0, #+0]
        B.N      ??HAL_EXTI_SetConfigLine_9
//  211   }
//  212   else
//  213   {
//  214     EXTI->IMR &= ~maskline;
??HAL_EXTI_SetConfigLine_8:
        LDR.N    R0,??DataTable6_3  ;; 0x40013c00
        LDR      R3,[R0, #+0]
        BICS     R3,R3,R2
        STR      R3,[R0, #+0]
//  215   }
//  216 
//  217   /* Configure event mode : read current mode */
//  218   /* Mask or set line */
//  219   if ((pExtiConfig->Mode & EXTI_MODE_EVENT) != 0x00u)
??HAL_EXTI_SetConfigLine_9:
        LDRB     R0,[R1, #+4]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_EXTI_SetConfigLine_10
//  220   {
//  221     EXTI->EMR |= maskline;
        LDR.N    R0,??DataTable6_4  ;; 0x40013c04
        LDR      R1,[R0, #+0]
        ORRS     R2,R2,R1
        STR      R2,[R0, #+0]
        B.N      ??HAL_EXTI_SetConfigLine_11
//  222   }
//  223   else
//  224   {
//  225     EXTI->EMR &= ~maskline;
??HAL_EXTI_SetConfigLine_10:
        LDR.N    R0,??DataTable6_4  ;; 0x40013c04
        LDR      R1,[R0, #+0]
        BICS     R2,R1,R2
        STR      R2,[R0, #+0]
//  226   }
//  227 
//  228   return HAL_OK;
??HAL_EXTI_SetConfigLine_11:
        MOVS     R0,#+0
??HAL_EXTI_SetConfigLine_2:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
//  229 }
          CFI EndBlock cfiBlock0
//  230 
//  231 /**
//  232   * @brief  Get configuration of a dedicated Exti line.
//  233   * @param  hexti Exti handle.
//  234   * @param  pExtiConfig Pointer on structure to store Exti configuration.
//  235   * @retval HAL Status.
//  236   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_EXTI_GetConfigLine
          CFI NoCalls
        THUMB
//  237 HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig)
//  238 {
//  239   uint32_t regval;
//  240   uint32_t linepos;
//  241   uint32_t maskline;
//  242 
//  243   /* Check null pointer */
//  244   if ((hexti == NULL) || (pExtiConfig == NULL))
HAL_EXTI_GetConfigLine:
        CMP      R0,#+0
        BEQ.N    ??HAL_EXTI_GetConfigLine_0
        CMP      R1,#+0
        BNE.N    ??HAL_EXTI_GetConfigLine_1
//  245   {
//  246     return HAL_ERROR;
??HAL_EXTI_GetConfigLine_0:
        MOVS     R0,#+1
        B.N      ??HAL_EXTI_GetConfigLine_2
//  247   }
//  248 
//  249   /* Check the parameter */
//  250   assert_param(IS_EXTI_LINE(hexti->Line));
//  251 
//  252   /* Store handle line number to configuration structure */
//  253   pExtiConfig->Line = hexti->Line;
??HAL_EXTI_GetConfigLine_1:
        LDR      R0,[R0, #+0]
        STR      R0,[R1, #+0]
//  254 
//  255   /* Compute line mask */
//  256   linepos = (pExtiConfig->Line & EXTI_PIN_MASK);
        LDRB     R0,[R1, #+0]
        ANDS     R0,R0,#0x1F
//  257   maskline = (1uL << linepos);
        MOVS     R2,#+1
        LSLS     R2,R2,R0
//  258 
//  259   /* 1] Get core mode : interrupt */
//  260 
//  261   /* Check if selected line is enable */
//  262   if ((EXTI->IMR & maskline) != 0x00u)
        LDR.N    R3,??DataTable6_3  ;; 0x40013c00
        LDR      R3,[R3, #+0]
        TST      R3,R2
        BEQ.N    ??HAL_EXTI_GetConfigLine_3
//  263   {
//  264     pExtiConfig->Mode = EXTI_MODE_INTERRUPT;
        MOVS     R3,#+1
        STR      R3,[R1, #+4]
        B.N      ??HAL_EXTI_GetConfigLine_4
//  265   }
//  266   else
//  267   {
//  268     pExtiConfig->Mode = EXTI_MODE_NONE;
??HAL_EXTI_GetConfigLine_3:
        MOVS     R3,#+0
        STR      R3,[R1, #+4]
//  269   }
//  270 
//  271   /* Get event mode */
//  272   /* Check if selected line is enable */
//  273   if ((EXTI->EMR & maskline) != 0x00u)
??HAL_EXTI_GetConfigLine_4:
        LDR.N    R3,??DataTable6_4  ;; 0x40013c04
        LDR      R3,[R3, #+0]
        TST      R3,R2
        BEQ.N    ??HAL_EXTI_GetConfigLine_5
//  274   {
//  275     pExtiConfig->Mode |= EXTI_MODE_EVENT;
        LDR      R3,[R1, #+4]
        ORRS     R3,R3,#0x2
        STR      R3,[R1, #+4]
//  276   }
//  277 
//  278   /* Get default Trigger and GPIOSel configuration */
//  279   pExtiConfig->Trigger = EXTI_TRIGGER_NONE;
??HAL_EXTI_GetConfigLine_5:
        MOVS     R3,#+0
        STR      R3,[R1, #+8]
//  280   pExtiConfig->GPIOSel = 0x00u;
        MOVS     R3,#+0
        STR      R3,[R1, #+12]
//  281 
//  282   /* 2] Get trigger for configurable lines : rising */
//  283   if ((pExtiConfig->Line & EXTI_CONFIG) != 0x00u)
        LDR      R3,[R1, #+0]
        LSLS     R3,R3,#+6
        BPL.N    ??HAL_EXTI_GetConfigLine_6
//  284   {
//  285     /* Check if configuration of selected line is enable */
//  286     if ((EXTI->RTSR & maskline) != 0x00u)
        LDR.N    R3,??DataTable6  ;; 0x40013c08
        LDR      R3,[R3, #+0]
        TST      R3,R2
        BEQ.N    ??HAL_EXTI_GetConfigLine_7
//  287     {
//  288       pExtiConfig->Trigger = EXTI_TRIGGER_RISING;
        MOVS     R3,#+1
        STR      R3,[R1, #+8]
//  289     }
//  290 
//  291     /* Get falling configuration */
//  292     /* Check if configuration of selected line is enable */
//  293     if ((EXTI->FTSR & maskline) != 0x00u)
??HAL_EXTI_GetConfigLine_7:
        LDR.N    R3,??DataTable6_1  ;; 0x40013c0c
        LDR      R3,[R3, #+0]
        TST      R3,R2
        BEQ.N    ??HAL_EXTI_GetConfigLine_8
//  294     {
//  295       pExtiConfig->Trigger |= EXTI_TRIGGER_FALLING;
        LDR      R2,[R1, #+8]
        ORRS     R2,R2,#0x2
        STR      R2,[R1, #+8]
//  296     }
//  297 
//  298     /* Get Gpio port selection for gpio lines */
//  299     if ((pExtiConfig->Line & EXTI_GPIO) == EXTI_GPIO)
??HAL_EXTI_GetConfigLine_8:
        LDR      R2,[R1, #+0]
        ANDS     R2,R2,#0x6000000
        CMP      R2,#+100663296
        BNE.N    ??HAL_EXTI_GetConfigLine_6
//  300     {
//  301       assert_param(IS_EXTI_GPIO_PIN(linepos));
//  302 
//  303       regval = SYSCFG->EXTICR[linepos >> 2u];
        LDR.N    R2,??DataTable6_2  ;; 0x40013808
        MOVS     R3,R0
        LSRS     R3,R3,#+2
        LDR      R2,[R2, R3, LSL #+2]
//  304       pExtiConfig->GPIOSel = (regval >> (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u))) & SYSCFG_EXTICR1_EXTI0;
        ANDS     R0,R0,#0x3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+2
        LSRS     R2,R2,R0
        ANDS     R2,R2,#0xF
        STR      R2,[R1, #+12]
//  305     }
//  306   }
//  307 
//  308   return HAL_OK;
??HAL_EXTI_GetConfigLine_6:
        MOVS     R0,#+0
??HAL_EXTI_GetConfigLine_2:
        BX       LR               ;; return
//  309 }
          CFI EndBlock cfiBlock1
//  310 
//  311 /**
//  312   * @brief  Clear whole configuration of a dedicated Exti line.
//  313   * @param  hexti Exti handle.
//  314   * @retval HAL Status.
//  315   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_EXTI_ClearConfigLine
          CFI NoCalls
        THUMB
//  316 HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(EXTI_HandleTypeDef *hexti)
//  317 {
HAL_EXTI_ClearConfigLine:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  318   uint32_t regval;
//  319   uint32_t linepos;
//  320   uint32_t maskline;
//  321 
//  322   /* Check null pointer */
//  323   if (hexti == NULL)
        CMP      R0,#+0
        BNE.N    ??HAL_EXTI_ClearConfigLine_0
//  324   {
//  325     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_EXTI_ClearConfigLine_1
//  326   }
//  327 
//  328   /* Check the parameter */
//  329   assert_param(IS_EXTI_LINE(hexti->Line));
//  330 
//  331   /* compute line mask */
//  332   linepos = (hexti->Line & EXTI_PIN_MASK);
??HAL_EXTI_ClearConfigLine_0:
        LDRB     R1,[R0, #+0]
        ANDS     R1,R1,#0x1F
//  333   maskline = (1uL << linepos);
        MOVS     R2,#+1
        LSLS     R2,R2,R1
//  334 
//  335   /* 1] Clear interrupt mode */
//  336   EXTI->IMR = (EXTI->IMR & ~maskline);
        LDR.N    R3,??DataTable6_3  ;; 0x40013c00
        LDR      R4,[R3, #+0]
        BICS     R4,R4,R2
        STR      R4,[R3, #+0]
//  337 
//  338   /* 2] Clear event mode */
//  339   EXTI->EMR = (EXTI->EMR & ~maskline);
        LDR.N    R3,??DataTable6_4  ;; 0x40013c04
        LDR      R4,[R3, #+0]
        BICS     R4,R4,R2
        STR      R4,[R3, #+0]
//  340 
//  341   /* 3] Clear triggers in case of configurable lines */
//  342   if ((hexti->Line & EXTI_CONFIG) != 0x00u)
        LDR      R3,[R0, #+0]
        LSLS     R3,R3,#+6
        BPL.N    ??HAL_EXTI_ClearConfigLine_2
//  343   {
//  344     EXTI->RTSR = (EXTI->RTSR & ~maskline);
        LDR.N    R3,??DataTable6  ;; 0x40013c08
        LDR      R4,[R3, #+0]
        BICS     R4,R4,R2
        STR      R4,[R3, #+0]
//  345     EXTI->FTSR = (EXTI->FTSR & ~maskline);
        LDR.N    R3,??DataTable6_1  ;; 0x40013c0c
        LDR      R4,[R3, #+0]
        BICS     R2,R4,R2
        STR      R2,[R3, #+0]
//  346 
//  347     /* Get Gpio port selection for gpio lines */
//  348     if ((hexti->Line & EXTI_GPIO) == EXTI_GPIO)
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x6000000
        CMP      R0,#+100663296
        BNE.N    ??HAL_EXTI_ClearConfigLine_2
//  349     {
//  350       assert_param(IS_EXTI_GPIO_PIN(linepos));
//  351 
//  352       regval = SYSCFG->EXTICR[linepos >> 2u];
        LDR.N    R3,??DataTable6_2  ;; 0x40013808
        MOVS     R0,R1
        LSRS     R0,R0,#+2
        LDR      R2,[R3, R0, LSL #+2]
//  353       regval &= ~(SYSCFG_EXTICR1_EXTI0 << (SYSCFG_EXTICR1_EXTI1_Pos * (linepos & 0x03u)));
        MOVS     R4,#+15
        ANDS     R0,R1,#0x3
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+2
        LSLS     R4,R4,R0
        BICS     R2,R2,R4
//  354       SYSCFG->EXTICR[linepos >> 2u] = regval;
        LSRS     R1,R1,#+2
        STR      R2,[R3, R1, LSL #+2]
//  355     }
//  356   }
//  357 
//  358   return HAL_OK;
??HAL_EXTI_ClearConfigLine_2:
        MOVS     R0,#+0
??HAL_EXTI_ClearConfigLine_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
//  359 }
          CFI EndBlock cfiBlock2
//  360 
//  361 /**
//  362   * @brief  Register callback for a dedicated Exti line.
//  363   * @param  hexti Exti handle.
//  364   * @param  CallbackID User callback identifier.
//  365   *         This parameter can be one of @arg @ref EXTI_CallbackIDTypeDef values.
//  366   * @param  pPendingCbfn function pointer to be stored as callback.
//  367   * @retval HAL Status.
//  368   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_EXTI_RegisterCallback
          CFI NoCalls
        THUMB
//  369 HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void))
//  370 {
HAL_EXTI_RegisterCallback:
        MOVS     R3,R0
//  371   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  372 
//  373   switch (CallbackID)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??HAL_EXTI_RegisterCallback_0
//  374   {
//  375     case  HAL_EXTI_COMMON_CB_ID:
//  376       hexti->PendingCallback = pPendingCbfn;
        STR      R2,[R3, #+4]
//  377       break;
        B.N      ??HAL_EXTI_RegisterCallback_1
//  378 
//  379     default:
//  380       status = HAL_ERROR;
??HAL_EXTI_RegisterCallback_0:
        MOVS     R0,#+1
//  381       break;
//  382   }
//  383 
//  384   return status;
??HAL_EXTI_RegisterCallback_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  385 }
          CFI EndBlock cfiBlock3
//  386 
//  387 /**
//  388   * @brief  Store line number as handle private field.
//  389   * @param  hexti Exti handle.
//  390   * @param  ExtiLine Exti line number.
//  391   *         This parameter can be from 0 to @ref EXTI_LINE_NB.
//  392   * @retval HAL Status.
//  393   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_EXTI_GetHandle
          CFI NoCalls
        THUMB
//  394 HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine)
//  395 {
//  396   /* Check the parameters */
//  397   assert_param(IS_EXTI_LINE(ExtiLine));
//  398 
//  399   /* Check null pointer */
//  400   if (hexti == NULL)
HAL_EXTI_GetHandle:
        CMP      R0,#+0
        BNE.N    ??HAL_EXTI_GetHandle_0
//  401   {
//  402     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_EXTI_GetHandle_1
//  403   }
//  404   else
//  405   {
//  406     /* Store line number as handle private field */
//  407     hexti->Line = ExtiLine;
??HAL_EXTI_GetHandle_0:
        STR      R1,[R0, #+0]
//  408 
//  409     return HAL_OK;
        MOVS     R0,#+0
??HAL_EXTI_GetHandle_1:
        BX       LR               ;; return
//  410   }
//  411 }
          CFI EndBlock cfiBlock4
//  412 
//  413 /**
//  414   * @}
//  415   */
//  416 
//  417 /** @addtogroup EXTI_Exported_Functions_Group2
//  418   *  @brief EXTI IO functions.
//  419   *
//  420 @verbatim
//  421  ===============================================================================
//  422                        ##### IO operation functions #####
//  423  ===============================================================================
//  424 
//  425 @endverbatim
//  426   * @{
//  427   */
//  428 
//  429 /**
//  430   * @brief  Handle EXTI interrupt request.
//  431   * @param  hexti Exti handle.
//  432   * @retval none.
//  433   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_EXTI_IRQHandler
        THUMB
//  434 void HAL_EXTI_IRQHandler(EXTI_HandleTypeDef *hexti)
//  435 {
HAL_EXTI_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  436   uint32_t regval;
//  437   uint32_t maskline;
//  438 
//  439   /* Compute line mask */
//  440   maskline = (1uL << (hexti->Line & EXTI_PIN_MASK));
        MOVS     R1,#+1
        LDRB     R2,[R0, #+0]
        ANDS     R2,R2,#0x1F
        LSLS     R2,R1,R2
//  441 
//  442   /* Get pending bit  */
//  443   regval = (EXTI->PR & maskline);
        LDR.N    R3,??DataTable6_5  ;; 0x40013c14
        LDR      R1,[R3, #+0]
        ANDS     R1,R2,R1
//  444   if (regval != 0x00u)
        CMP      R1,#+0
        BEQ.N    ??HAL_EXTI_IRQHandler_0
//  445   {
//  446     /* Clear pending bit */
//  447     EXTI->PR = maskline;
        STR      R2,[R3, #+0]
//  448 
//  449     /* Call callback */
//  450     if (hexti->PendingCallback != NULL)
        LDR      R1,[R0, #+4]
        CMP      R1,#+0
        BEQ.N    ??HAL_EXTI_IRQHandler_0
//  451     {
//  452       hexti->PendingCallback();
        LDR      R0,[R0, #+4]
          CFI FunCall
        BLX      R0
//  453     }
//  454   }
//  455 }
??HAL_EXTI_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock5
//  456 
//  457 /**
//  458   * @brief  Get interrupt pending bit of a dedicated line.
//  459   * @param  hexti Exti handle.
//  460   * @param  Edge Specify which pending edge as to be checked.
//  461   *         This parameter can be one of the following values:
//  462   *           @arg @ref EXTI_TRIGGER_RISING_FALLING
//  463   *         This parameter is kept for compatibility with other series.
//  464   * @retval 1 if interrupt is pending else 0.
//  465   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_EXTI_GetPending
          CFI NoCalls
        THUMB
//  466 uint32_t HAL_EXTI_GetPending(EXTI_HandleTypeDef *hexti, uint32_t Edge)
//  467 {
//  468   uint32_t regval;
//  469   uint32_t linepos;
//  470   uint32_t maskline;
//  471 
//  472   /* Check parameters */
//  473   assert_param(IS_EXTI_LINE(hexti->Line));
//  474   assert_param(IS_EXTI_CONFIG_LINE(hexti->Line));
//  475   assert_param(IS_EXTI_PENDING_EDGE(Edge));
//  476 
//  477   /* Compute line mask */
//  478   linepos = (hexti->Line & EXTI_PIN_MASK);
HAL_EXTI_GetPending:
        LDRB     R1,[R0, #+0]
        ANDS     R1,R1,#0x1F
//  479   maskline = (1uL << linepos);
        MOVS     R2,#+1
        LSLS     R2,R2,R1
//  480 
//  481   /* return 1 if bit is set else 0 */
//  482   regval = ((EXTI->PR & maskline) >> linepos);
        LDR.N    R0,??DataTable6_5  ;; 0x40013c14
        LDR      R0,[R0, #+0]
        ANDS     R0,R2,R0
        LSRS     R0,R0,R1
//  483   return regval;
        BX       LR               ;; return
//  484 }
          CFI EndBlock cfiBlock6
//  485 
//  486 /**
//  487   * @brief  Clear interrupt pending bit of a dedicated line.
//  488   * @param  hexti Exti handle.
//  489   * @param  Edge Specify which pending edge as to be clear.
//  490   *         This parameter can be one of the following values:
//  491   *           @arg @ref EXTI_TRIGGER_RISING_FALLING
//  492   *         This parameter is kept for compatibility with other series.
//  493   * @retval None.
//  494   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_EXTI_ClearPending
          CFI NoCalls
        THUMB
//  495 void HAL_EXTI_ClearPending(EXTI_HandleTypeDef *hexti, uint32_t Edge)
//  496 {
//  497   uint32_t maskline;
//  498 
//  499   /* Check parameters */
//  500   assert_param(IS_EXTI_LINE(hexti->Line));
//  501   assert_param(IS_EXTI_CONFIG_LINE(hexti->Line));
//  502   assert_param(IS_EXTI_PENDING_EDGE(Edge));
//  503 
//  504   /* Compute line mask */
//  505   maskline = (1uL << (hexti->Line & EXTI_PIN_MASK));
HAL_EXTI_ClearPending:
        MOVS     R1,#+1
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1F
        LSLS     R0,R1,R0
//  506 
//  507   /* Clear Pending bit */
//  508   EXTI->PR =  maskline;
        LDR.N    R1,??DataTable6_5  ;; 0x40013c14
        STR      R0,[R1, #+0]
//  509 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  510 
//  511 /**
//  512   * @brief  Generate a software interrupt for a dedicated line.
//  513   * @param  hexti Exti handle.
//  514   * @retval None.
//  515   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_EXTI_GenerateSWI
          CFI NoCalls
        THUMB
//  516 void HAL_EXTI_GenerateSWI(EXTI_HandleTypeDef *hexti)
//  517 {
//  518   uint32_t maskline;
//  519 
//  520   /* Check parameters */
//  521   assert_param(IS_EXTI_LINE(hexti->Line));
//  522   assert_param(IS_EXTI_CONFIG_LINE(hexti->Line));
//  523 
//  524   /* Compute line mask */
//  525   maskline = (1uL << (hexti->Line & EXTI_PIN_MASK));
HAL_EXTI_GenerateSWI:
        MOVS     R1,#+1
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,#0x1F
        LSLS     R0,R1,R0
//  526 
//  527   /* Generate Software interrupt */
//  528   EXTI->SWIER = maskline;
        LDR.N    R1,??DataTable6_6  ;; 0x40013c10
        STR      R0,[R1, #+0]
//  529 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DATA32
        DC32     0x40013c08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DATA32
        DC32     0x40013c0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DATA32
        DC32     0x40013808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DATA32
        DC32     0x40013c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DATA32
        DC32     0x40013c04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DATA32
        DC32     0x40013c14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DATA32
        DC32     0x40013c10

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  530 
//  531 /**
//  532   * @}
//  533   */
//  534 
//  535 /**
//  536   * @}
//  537   */
//  538 
//  539 #endif /* HAL_EXTI_MODULE_ENABLED */
//  540 /**
//  541   * @}
//  542   */
//  543 
//  544 /**
//  545   * @}
//  546   */
//  547 
// 
// 602 bytes in section .text
// 
// 602 bytes of CODE memory
//
//Errors: none
//Warnings: none
