///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_gpio.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW439.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_gpio.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_gpio.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_GPIO_DeInit
        PUBWEAK HAL_GPIO_EXTI_Callback
        PUBLIC HAL_GPIO_EXTI_IRQHandler
        PUBLIC HAL_GPIO_Init
        PUBLIC HAL_GPIO_LockPin
        PUBLIC HAL_GPIO_ReadPin
        PUBLIC HAL_GPIO_TogglePin
        PUBLIC HAL_GPIO_WritePin
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_gpio.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_gpio.c
//    4   * @author  MCD Application Team
//    5   * @brief   GPIO HAL module driver.
//    6   *          This file provides firmware functions to manage the following 
//    7   *          functionalities of the General Purpose Input/Output (GPIO) peripheral:
//    8   *           + Initialization and de-initialization functions
//    9   *           + IO operation functions
//   10   *
//   11   ******************************************************************************
//   12   * @attention
//   13   *
//   14   * Copyright (c) 2017 STMicroelectronics.
//   15   * All rights reserved.
//   16   *
//   17   * This software is licensed under terms that can be found in the LICENSE file
//   18   * in the root directory of this software component.
//   19   * If no LICENSE file comes with this software, it is provided AS-IS.
//   20   *
//   21   ******************************************************************************
//   22   @verbatim
//   23   ==============================================================================
//   24                     ##### GPIO Peripheral features #####
//   25   ==============================================================================
//   26   [..] 
//   27   Subject to the specific hardware characteristics of each I/O port listed in the datasheet, each
//   28   port bit of the General Purpose IO (GPIO) Ports, can be individually configured by software
//   29   in several modes:
//   30   (+) Input mode 
//   31   (+) Analog mode
//   32   (+) Output mode
//   33   (+) Alternate function mode
//   34   (+) External interrupt/event lines
//   35 
//   36   [..]  
//   37   During and just after reset, the alternate functions and external interrupt  
//   38   lines are not active and the I/O ports are configured in input floating mode.
//   39   
//   40   [..]   
//   41   All GPIO pins have weak internal pull-up and pull-down resistors, which can be 
//   42   activated or not.
//   43 
//   44   [..]
//   45   In Output or Alternate mode, each IO can be configured on open-drain or push-pull
//   46   type and the IO speed can be selected depending on the VDD value.
//   47 
//   48   [..]  
//   49   All ports have external interrupt/event capability. To use external interrupt 
//   50   lines, the port must be configured in input mode. All available GPIO pins are 
//   51   connected to the 16 external interrupt/event lines from EXTI0 to EXTI15.
//   52   
//   53   [..]
//   54   The external interrupt/event controller consists of up to 23 edge detectors 
//   55   (16 lines are connected to GPIO) for generating event/interrupt requests (each 
//   56   input line can be independently configured to select the type (interrupt or event) 
//   57   and the corresponding trigger event (rising or falling or both). Each line can 
//   58   also be masked independently. 
//   59 
//   60                      ##### How to use this driver #####
//   61   ==============================================================================  
//   62   [..]
//   63     (#) Enable the GPIO AHB clock using the following function: __HAL_RCC_GPIOx_CLK_ENABLE(). 
//   64 
//   65     (#) Configure the GPIO pin(s) using HAL_GPIO_Init().
//   66         (++) Configure the IO mode using "Mode" member from GPIO_InitTypeDef structure
//   67         (++) Activate Pull-up, Pull-down resistor using "Pull" member from GPIO_InitTypeDef 
//   68              structure.
//   69         (++) In case of Output or alternate function mode selection: the speed is 
//   70              configured through "Speed" member from GPIO_InitTypeDef structure.
//   71         (++) In alternate mode is selection, the alternate function connected to the IO
//   72              is configured through "Alternate" member from GPIO_InitTypeDef structure.
//   73         (++) Analog mode is required when a pin is to be used as ADC channel 
//   74              or DAC output.
//   75         (++) In case of external interrupt/event selection the "Mode" member from 
//   76              GPIO_InitTypeDef structure select the type (interrupt or event) and 
//   77              the corresponding trigger event (rising or falling or both).
//   78 
//   79     (#) In case of external interrupt/event mode selection, configure NVIC IRQ priority 
//   80         mapped to the EXTI line using HAL_NVIC_SetPriority() and enable it using
//   81         HAL_NVIC_EnableIRQ().
//   82          
//   83     (#) To get the level of a pin configured in input mode use HAL_GPIO_ReadPin().
//   84             
//   85     (#) To set/reset the level of a pin configured in output mode use 
//   86         HAL_GPIO_WritePin()/HAL_GPIO_TogglePin().
//   87     
//   88     (#) To lock pin configuration until next reset use HAL_GPIO_LockPin().
//   89 
//   90                  
//   91     (#) During and just after reset, the alternate functions are not 
//   92         active and the GPIO pins are configured in input floating mode (except JTAG
//   93         pins).
//   94   
//   95     (#) The LSE oscillator pins OSC32_IN and OSC32_OUT can be used as general purpose 
//   96         (PC14 and PC15, respectively) when the LSE oscillator is off. The LSE has 
//   97         priority over the GPIO function.
//   98   
//   99     (#) The HSE oscillator pins OSC_IN/OSC_OUT can be used as 
//  100         general purpose PH0 and PH1, respectively, when the HSE oscillator is off. 
//  101         The HSE has priority over the GPIO function.
//  102   
//  103   @endverbatim
//  104   ******************************************************************************
//  105   */ 
//  106 
//  107 /* Includes ------------------------------------------------------------------*/
//  108 #include "stm32f4xx_hal.h"
//  109 
//  110 /** @addtogroup STM32F4xx_HAL_Driver
//  111   * @{
//  112   */
//  113 
//  114 /** @defgroup GPIO GPIO
//  115   * @brief GPIO HAL module driver
//  116   * @{
//  117   */
//  118 
//  119 #ifdef HAL_GPIO_MODULE_ENABLED
//  120 
//  121 /* Private typedef -----------------------------------------------------------*/
//  122 /* Private define ------------------------------------------------------------*/
//  123 /** @addtogroup GPIO_Private_Constants GPIO Private Constants
//  124   * @{
//  125   */
//  126 
//  127 #define GPIO_NUMBER           16U
//  128 /**
//  129   * @}
//  130   */
//  131 /* Private macro -------------------------------------------------------------*/
//  132 /* Private variables ---------------------------------------------------------*/
//  133 /* Private function prototypes -----------------------------------------------*/
//  134 /* Private functions ---------------------------------------------------------*/
//  135 /* Exported functions --------------------------------------------------------*/
//  136 /** @defgroup GPIO_Exported_Functions GPIO Exported Functions
//  137   * @{
//  138   */
//  139 
//  140 /** @defgroup GPIO_Exported_Functions_Group1 Initialization and de-initialization functions
//  141   *  @brief    Initialization and Configuration functions
//  142   *
//  143 @verbatim    
//  144  ===============================================================================
//  145               ##### Initialization and de-initialization functions #####
//  146  ===============================================================================
//  147   [..]
//  148     This section provides functions allowing to initialize and de-initialize the GPIOs
//  149     to be ready for use.
//  150  
//  151 @endverbatim
//  152   * @{
//  153   */
//  154 
//  155 
//  156 /**
//  157   * @brief  Initializes the GPIOx peripheral according to the specified parameters in the GPIO_Init.
//  158   * @param  GPIOx where x can be (A..K) to select the GPIO peripheral for STM32F429X device or
//  159   *                      x can be (A..I) to select the GPIO peripheral for STM32F40XX and STM32F427X devices.
//  160   * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
//  161   *         the configuration information for the specified GPIO peripheral.
//  162   * @retval None
//  163   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_GPIO_Init
          CFI NoCalls
        THUMB
//  164 void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
//  165 {
HAL_GPIO_Init:
        PUSH     {R3-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+20
//  166   uint32_t position;
//  167   uint32_t ioposition = 0x00U;
        MOVS     R2,#+0
//  168   uint32_t iocurrent = 0x00U;
        MOVS     R2,#+0
//  169   uint32_t temp = 0x00U;
        MOVS     R2,#+0
//  170 
//  171   /* Check the parameters */
//  172   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
//  173   assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
//  174   assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
//  175 
//  176   /* Configure the port pins */
//  177   for(position = 0U; position < GPIO_NUMBER; position++)
        MOVS     R3,#+0
        B.N      ??HAL_GPIO_Init_0
//  178   {
//  179     /* Get the IO position */
//  180     ioposition = 0x01U << position;
//  181     /* Get the current IO position */
//  182     iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
//  183 
//  184     if(iocurrent == ioposition)
//  185     {
//  186       /*--------------------- GPIO Mode Configuration ------------------------*/
//  187       /* In case of Output or Alternate function mode selection */
//  188       if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \ 
//  189           (GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
//  190       {
//  191         /* Check the Speed parameter */
//  192         assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
//  193         /* Configure the IO Speed */
//  194         temp = GPIOx->OSPEEDR; 
//  195         temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2U));
//  196         temp |= (GPIO_Init->Speed << (position * 2U));
//  197         GPIOx->OSPEEDR = temp;
//  198 
//  199         /* Configure the IO Output Type */
//  200         temp = GPIOx->OTYPER;
//  201         temp &= ~(GPIO_OTYPER_OT_0 << position) ;
//  202         temp |= (((GPIO_Init->Mode & OUTPUT_TYPE) >> OUTPUT_TYPE_Pos) << position);
//  203         GPIOx->OTYPER = temp;
//  204        }
//  205 
//  206       if((GPIO_Init->Mode & GPIO_MODE) != MODE_ANALOG)
//  207       {
//  208         /* Check the parameters */
//  209         assert_param(IS_GPIO_PULL(GPIO_Init->Pull));
//  210         
//  211         /* Activate the Pull-up or Pull down resistor for the current IO */
//  212         temp = GPIOx->PUPDR;
//  213         temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
//  214         temp |= ((GPIO_Init->Pull) << (position * 2U));
//  215         GPIOx->PUPDR = temp;
//  216       }
//  217 
//  218       /* In case of Alternate function mode selection */
//  219       if((GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
//  220       {
//  221         /* Check the Alternate function parameter */
//  222         assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
//  223         /* Configure Alternate function mapped with the current IO */
//  224         temp = GPIOx->AFR[position >> 3U];
//  225         temp &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
//  226         temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & 0x07U) * 4U));
//  227         GPIOx->AFR[position >> 3U] = temp;
//  228       }
//  229 
//  230       /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
//  231       temp = GPIOx->MODER;
//  232       temp &= ~(GPIO_MODER_MODER0 << (position * 2U));
//  233       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
//  234       GPIOx->MODER = temp;
//  235 
//  236       /*--------------------- EXTI Mode Configuration ------------------------*/
//  237       /* Configure the External Interrupt or event for the current IO */
//  238       if((GPIO_Init->Mode & EXTI_MODE) != 0x00U)
//  239       {
//  240         /* Enable SYSCFG Clock */
//  241         __HAL_RCC_SYSCFG_CLK_ENABLE();
//  242 
//  243         temp = SYSCFG->EXTICR[position >> 2U];
//  244         temp &= ~(0x0FU << (4U * (position & 0x03U)));
//  245         temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
??HAL_GPIO_Init_1:
        MOVS     R7,#+8
        B.N      ??HAL_GPIO_Init_2
??HAL_GPIO_Init_3:
        LDR.W    R2,??DataTable2  ;; 0x40021c00
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_Init_1
        MOVS     R7,#+7
??HAL_GPIO_Init_2:
??HAL_GPIO_Init_4:
??HAL_GPIO_Init_5:
??HAL_GPIO_Init_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ANDS     R2,R3,#0x3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     R7,R7,R2
        ORRS     R6,R7,R6
//  246         SYSCFG->EXTICR[position >> 2U] = temp;
        MOVS     R2,R3
        LSRS     R2,R2,#+2
        STR      R6,[R5, R2, LSL #+2]
//  247 
//  248         /* Clear Rising Falling edge configuration */
//  249         temp = EXTI->RTSR;
        LDR.W    R5,??DataTable2_1  ;; 0x40013c08
        LDR      R2,[R5, #+0]
//  250         temp &= ~((uint32_t)iocurrent);
        BICS     R2,R2,R4
//  251         if((GPIO_Init->Mode & TRIGGER_RISING) != 0x00U)
        LDR      R6,[R1, #+4]
        LSLS     R6,R6,#+11
        BPL.N    ??HAL_GPIO_Init_7
//  252         {
//  253           temp |= iocurrent;
        ORRS     R2,R4,R2
//  254         }
//  255         EXTI->RTSR = temp;
??HAL_GPIO_Init_7:
        STR      R2,[R5, #+0]
//  256 
//  257         temp = EXTI->FTSR;
        LDR.W    R5,??DataTable2_2  ;; 0x40013c0c
        LDR      R2,[R5, #+0]
//  258         temp &= ~((uint32_t)iocurrent);
        BICS     R2,R2,R4
//  259         if((GPIO_Init->Mode & TRIGGER_FALLING) != 0x00U)
        LDR      R6,[R1, #+4]
        LSLS     R6,R6,#+10
        BPL.N    ??HAL_GPIO_Init_8
//  260         {
//  261           temp |= iocurrent;
        ORRS     R2,R4,R2
//  262         }
//  263         EXTI->FTSR = temp;
??HAL_GPIO_Init_8:
        STR      R2,[R5, #+0]
//  264 
//  265         temp = EXTI->EMR;
        LDR.W    R5,??DataTable2_3  ;; 0x40013c04
        LDR      R2,[R5, #+0]
//  266         temp &= ~((uint32_t)iocurrent);
        BICS     R2,R2,R4
//  267         if((GPIO_Init->Mode & EXTI_EVT) != 0x00U)
        LDR      R6,[R1, #+4]
        LSLS     R6,R6,#+14
        BPL.N    ??HAL_GPIO_Init_9
//  268         {
//  269           temp |= iocurrent;
        ORRS     R2,R4,R2
//  270         }
//  271         EXTI->EMR = temp;
??HAL_GPIO_Init_9:
        STR      R2,[R5, #+0]
//  272 
//  273         /* Clear EXTI line configuration */
//  274         temp = EXTI->IMR;
        LDR.W    R5,??DataTable2_4  ;; 0x40013c00
        LDR      R2,[R5, #+0]
//  275         temp &= ~((uint32_t)iocurrent);
        BICS     R2,R2,R4
//  276         if((GPIO_Init->Mode & EXTI_IT) != 0x00U)
        LDR      R6,[R1, #+4]
        LSLS     R6,R6,#+15
        BPL.N    ??HAL_GPIO_Init_10
//  277         {
//  278           temp |= iocurrent;
        ORRS     R4,R4,R2
        MOVS     R2,R4
//  279         }
//  280         EXTI->IMR = temp;
??HAL_GPIO_Init_10:
        STR      R2,[R5, #+0]
??HAL_GPIO_Init_11:
        ADDS     R3,R3,#+1
??HAL_GPIO_Init_0:
        CMP      R3,#+16
        BCS.W    ??HAL_GPIO_Init_12
        MOVS     R5,#+1
        LSLS     R2,R5,R3
        LDR      R4,[R1, #+0]
        ANDS     R4,R2,R4
        CMP      R4,R2
        BNE.N    ??HAL_GPIO_Init_11
        LDRB     R2,[R1, #+4]
        ANDS     R2,R2,#0x3
        CMP      R2,#+1
        BEQ.N    ??HAL_GPIO_Init_13
        LDRB     R2,[R1, #+4]
        ANDS     R2,R2,#0x3
        CMP      R2,#+2
        BNE.N    ??HAL_GPIO_Init_14
??HAL_GPIO_Init_13:
        LDR      R6,[R0, #+8]
        MOVS     R7,#+3
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R7,R7,R2
        BICS     R6,R6,R7
        LDR      R7,[R1, #+12]
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R7,R7,R2
        ORRS     R6,R7,R6
        STR      R6,[R0, #+8]
        LDR      R2,[R0, #+4]
        LSLS     R5,R5,R3
        BICS     R2,R2,R5
        LDR      R5,[R1, #+4]
        UBFX     R5,R5,#+4,#+1
        LSLS     R5,R5,R3
        ORRS     R2,R5,R2
        STR      R2,[R0, #+4]
??HAL_GPIO_Init_14:
        LDRB     R2,[R1, #+4]
        ANDS     R2,R2,#0x3
        CMP      R2,#+3
        BEQ.N    ??HAL_GPIO_Init_15
        LDR      R5,[R0, #+12]
        MOVS     R6,#+3
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R6,R6,R2
        BICS     R5,R5,R6
        LDR      R6,[R1, #+8]
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R6,R6,R2
        ORRS     R5,R6,R5
        STR      R5,[R0, #+12]
??HAL_GPIO_Init_15:
        LDRB     R2,[R1, #+4]
        ANDS     R2,R2,#0x3
        CMP      R2,#+2
        BNE.N    ??HAL_GPIO_Init_16
        MOVS     R2,R3
        LSRS     R2,R2,#+3
        ADD      R2,R0,R2, LSL #+2
        LDR      R5,[R2, #+32]
        MOVS     R6,#+15
        ANDS     R2,R3,#0x7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     R6,R6,R2
        BICS     R5,R5,R6
        LDR      R6,[R1, #+16]
        ANDS     R2,R3,#0x7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     R6,R6,R2
        ORRS     R5,R6,R5
        MOVS     R2,R3
        LSRS     R2,R2,#+3
        ADD      R2,R0,R2, LSL #+2
        STR      R5,[R2, #+32]
??HAL_GPIO_Init_16:
        LDR      R5,[R0, #+0]
        MOVS     R6,#+3
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R6,R6,R2
        BICS     R5,R5,R6
        LDRB     R6,[R1, #+4]
        ANDS     R6,R6,#0x3
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R6,R6,R2
        ORRS     R5,R6,R5
        STR      R5,[R0, #+0]
        LDR      R2,[R1, #+4]
        TST      R2,#0x30000
        BEQ.N    ??HAL_GPIO_Init_11
        MOVS     R2,#+0
        STR      R2,[SP, #+0]
        LDR.N    R2,??DataTable2_5  ;; 0x40023844
        LDR      R5,[R2, #+0]
        ORRS     R5,R5,#0x4000
        STR      R5,[R2, #+0]
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x4000
        STR      R2,[SP, #+0]
        LDR      R2,[SP, #+0]
        LDR.N    R5,??DataTable2_6  ;; 0x40013808
        MOVS     R2,R3
        LSRS     R2,R2,#+2
        LDR      R6,[R5, R2, LSL #+2]
        MOVS     R7,#+15
        ANDS     R2,R3,#0x3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     R7,R7,R2
        BICS     R6,R6,R7
        LDR.N    R2,??DataTable2_7  ;; 0x40020000
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_Init_17
        MOVS     R7,#+0
        B.N      ??HAL_GPIO_Init_6
??HAL_GPIO_Init_17:
        LDR.N    R2,??DataTable2_8  ;; 0x40020400
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_Init_18
        MOVS     R7,#+1
        B.N      ??HAL_GPIO_Init_6
??HAL_GPIO_Init_18:
        LDR.N    R2,??DataTable2_9  ;; 0x40020800
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_Init_19
        MOVS     R7,#+2
        B.N      ??HAL_GPIO_Init_5
??HAL_GPIO_Init_19:
        LDR.N    R2,??DataTable2_10  ;; 0x40020c00
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_Init_20
        MOVS     R7,#+3
        B.N      ??HAL_GPIO_Init_5
??HAL_GPIO_Init_20:
        LDR.N    R2,??DataTable2_11  ;; 0x40021000
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_Init_21
        MOVS     R7,#+4
        B.N      ??HAL_GPIO_Init_4
??HAL_GPIO_Init_21:
        LDR.N    R2,??DataTable2_12  ;; 0x40021400
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_Init_22
        MOVS     R7,#+5
        B.N      ??HAL_GPIO_Init_4
??HAL_GPIO_Init_22:
        LDR.N    R2,??DataTable2_13  ;; 0x40021800
        CMP      R0,R2
        BNE.W    ??HAL_GPIO_Init_3
        MOVS     R7,#+6
        B.N      ??HAL_GPIO_Init_2
//  281       }
//  282     }
//  283   }
//  284 }
??HAL_GPIO_Init_12:
        POP      {R0,R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//  285 
//  286 /**
//  287   * @brief  De-initializes the GPIOx peripheral registers to their default reset values.
//  288   * @param  GPIOx where x can be (A..K) to select the GPIO peripheral for STM32F429X device or
//  289   *                      x can be (A..I) to select the GPIO peripheral for STM32F40XX and STM32F427X devices.
//  290   * @param  GPIO_Pin specifies the port bit to be written.
//  291   *          This parameter can be one of GPIO_PIN_x where x can be (0..15).
//  292   * @retval None
//  293   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_GPIO_DeInit
          CFI NoCalls
        THUMB
//  294 void HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin)
//  295 {
HAL_GPIO_DeInit:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
//  296   uint32_t position;
//  297   uint32_t ioposition = 0x00U;
        MOVS     R2,#+0
//  298   uint32_t iocurrent = 0x00U;
        MOVS     R2,#+0
//  299   uint32_t tmp = 0x00U;
        MOVS     R2,#+0
//  300 
//  301   /* Check the parameters */
//  302   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
//  303   
//  304   /* Configure the port pins */
//  305   for(position = 0U; position < GPIO_NUMBER; position++)
        MOVS     R3,#+0
        B.N      ??HAL_GPIO_DeInit_0
//  306   {
//  307     /* Get the IO position */
//  308     ioposition = 0x01U << position;
//  309     /* Get the current IO position */
//  310     iocurrent = (GPIO_Pin) & ioposition;
//  311 
//  312     if(iocurrent == ioposition)
//  313     {
//  314       /*------------------------- EXTI Mode Configuration --------------------*/
//  315       tmp = SYSCFG->EXTICR[position >> 2U];
//  316       tmp &= (0x0FU << (4U * (position & 0x03U)));
//  317       if(tmp == ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U))))
??HAL_GPIO_DeInit_1:
        MOVS     LR,#+8
        B.N      ??HAL_GPIO_DeInit_2
??HAL_GPIO_DeInit_3:
        LDR.N    R2,??DataTable2  ;; 0x40021c00
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_DeInit_1
        MOVS     LR,#+7
??HAL_GPIO_DeInit_2:
??HAL_GPIO_DeInit_4:
??HAL_GPIO_DeInit_5:
??HAL_GPIO_DeInit_6:
        UXTB     LR,LR            ;; ZeroExt  LR,LR,#+24,#+24
        ANDS     R2,R3,#0x3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     LR,LR,R2
        CMP      R12,LR
        BNE.N    ??HAL_GPIO_DeInit_7
//  318       {
//  319         /* Clear EXTI line configuration */
//  320         EXTI->IMR &= ~((uint32_t)iocurrent);
        LDR.N    R2,??DataTable2_4  ;; 0x40013c00
        LDR      R12,[R2, #+0]
        BICS     R12,R12,R6
        STR      R12,[R2, #+0]
//  321         EXTI->EMR &= ~((uint32_t)iocurrent);
        LDR.N    R2,??DataTable2_3  ;; 0x40013c04
        LDR      R12,[R2, #+0]
        BICS     R12,R12,R6
        STR      R12,[R2, #+0]
//  322         
//  323         /* Clear Rising Falling edge configuration */
//  324         EXTI->FTSR &= ~((uint32_t)iocurrent);
        LDR.N    R2,??DataTable2_2  ;; 0x40013c0c
        LDR      R12,[R2, #+0]
        BICS     R12,R12,R6
        STR      R12,[R2, #+0]
//  325         EXTI->RTSR &= ~((uint32_t)iocurrent);
        LDR.N    R2,??DataTable2_1  ;; 0x40013c08
        LDR      R12,[R2, #+0]
        BICS     R6,R12,R6
        STR      R6,[R2, #+0]
//  326 
//  327         /* Configure the External Interrupt or event for the current IO */
//  328         tmp = 0x0FU << (4U * (position & 0x03U));
        ANDS     R2,R3,#0x3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     R2,R5,R2
//  329         SYSCFG->EXTICR[position >> 2U] &= ~tmp;
        MOVS     R6,R3
        LSRS     R6,R6,#+2
        LDR      R6,[R7, R6, LSL #+2]
        BICS     R2,R6,R2
        MOVS     R6,R3
        LSRS     R6,R6,#+2
        STR      R2,[R7, R6, LSL #+2]
//  330       }
//  331 
//  332       /*------------------------- GPIO Mode Configuration --------------------*/
//  333       /* Configure IO Direction in Input Floating Mode */
//  334       GPIOx->MODER &= ~(GPIO_MODER_MODER0 << (position * 2U));
??HAL_GPIO_DeInit_7:
        MOVS     R6,#+3
        LDR      R2,[R0, #+0]
        MOVS     R7,R3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSLS     R7,R7,#+1
        LSLS     R7,R6,R7
        BICS     R2,R2,R7
        STR      R2,[R0, #+0]
//  335 
//  336       /* Configure the default Alternate Function in current IO */
//  337       GPIOx->AFR[position >> 3U] &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
        MOVS     R2,R3
        LSRS     R2,R2,#+3
        ADD      R7,R0,R2, LSL #+2
        MOVS     R2,R3
        LSRS     R2,R2,#+3
        ADD      R2,R0,R2, LSL #+2
        LDR      R12,[R2, #+32]
        ANDS     R2,R3,#0x7
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     R5,R5,R2
        BICS     R5,R12,R5
        STR      R5,[R7, #+32]
//  338 
//  339       /* Deactivate the Pull-up and Pull-down resistor for the current IO */
//  340       GPIOx->PUPDR &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
        LDR      R2,[R0, #+12]
        MOVS     R5,R3
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R5,R5,#+1
        LSLS     R5,R6,R5
        BICS     R2,R2,R5
        STR      R2,[R0, #+12]
//  341 
//  342       /* Configure the default value IO Output Type */
//  343       GPIOx->OTYPER  &= ~(GPIO_OTYPER_OT_0 << position) ;
        LDR      R2,[R0, #+4]
        LSLS     R4,R4,R3
        BICS     R4,R2,R4
        STR      R4,[R0, #+4]
//  344 
//  345       /* Configure the default value for IO Speed */
//  346       GPIOx->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2U));
        LDR      R4,[R0, #+8]
        MOVS     R2,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+1
        LSLS     R6,R6,R2
        BICS     R6,R4,R6
        STR      R6,[R0, #+8]
??HAL_GPIO_DeInit_8:
        ADDS     R3,R3,#+1
??HAL_GPIO_DeInit_0:
        CMP      R3,#+16
        BCS.N    ??HAL_GPIO_DeInit_9
        MOVS     R4,#+1
        LSLS     R2,R4,R3
        ANDS     R6,R2,R1
        CMP      R6,R2
        BNE.N    ??HAL_GPIO_DeInit_8
        LDR.N    R7,??DataTable2_6  ;; 0x40013808
        MOVS     R2,R3
        LSRS     R2,R2,#+2
        LDR      R12,[R7, R2, LSL #+2]
        MOVS     R5,#+15
        ANDS     R2,R3,#0x3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R2,R2,#+2
        LSLS     R2,R5,R2
        ANDS     R12,R2,R12
        LDR.N    R2,??DataTable2_7  ;; 0x40020000
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_DeInit_10
        MOVS     LR,#+0
        B.N      ??HAL_GPIO_DeInit_6
??HAL_GPIO_DeInit_10:
        LDR.N    R2,??DataTable2_8  ;; 0x40020400
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_DeInit_11
        MOVS     LR,#+1
        B.N      ??HAL_GPIO_DeInit_6
??HAL_GPIO_DeInit_11:
        LDR.N    R2,??DataTable2_9  ;; 0x40020800
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_DeInit_12
        MOVS     LR,#+2
        B.N      ??HAL_GPIO_DeInit_5
??HAL_GPIO_DeInit_12:
        LDR.N    R2,??DataTable2_10  ;; 0x40020c00
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_DeInit_13
        MOVS     LR,#+3
        B.N      ??HAL_GPIO_DeInit_5
??HAL_GPIO_DeInit_13:
        LDR.N    R2,??DataTable2_11  ;; 0x40021000
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_DeInit_14
        MOVS     LR,#+4
        B.N      ??HAL_GPIO_DeInit_4
??HAL_GPIO_DeInit_14:
        LDR.N    R2,??DataTable2_12  ;; 0x40021400
        CMP      R0,R2
        BNE.N    ??HAL_GPIO_DeInit_15
        MOVS     LR,#+5
        B.N      ??HAL_GPIO_DeInit_4
??HAL_GPIO_DeInit_15:
        LDR.N    R2,??DataTable2_13  ;; 0x40021800
        CMP      R0,R2
        BNE.W    ??HAL_GPIO_DeInit_3
        MOVS     LR,#+6
        B.N      ??HAL_GPIO_DeInit_2
//  347     }
//  348   }
//  349 }
??HAL_GPIO_DeInit_9:
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock1
//  350 
//  351 /**
//  352   * @}
//  353   */
//  354 
//  355 /** @defgroup GPIO_Exported_Functions_Group2 IO operation functions 
//  356   *  @brief   GPIO Read and Write
//  357   *
//  358 @verbatim
//  359  ===============================================================================
//  360                        ##### IO operation functions #####
//  361  ===============================================================================
//  362 
//  363 @endverbatim
//  364   * @{
//  365   */
//  366 
//  367 /**
//  368   * @brief  Reads the specified input port pin.
//  369   * @param  GPIOx where x can be (A..K) to select the GPIO peripheral for STM32F429X device or
//  370   *                      x can be (A..I) to select the GPIO peripheral for STM32F40XX and STM32F427X devices.
//  371   * @param  GPIO_Pin specifies the port bit to read.
//  372   *         This parameter can be GPIO_PIN_x where x can be (0..15).
//  373   * @retval The input port pin value.
//  374   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_GPIO_ReadPin
          CFI NoCalls
        THUMB
//  375 GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  376 {
//  377   GPIO_PinState bitstatus;
//  378 
//  379   /* Check the parameters */
//  380   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  381 
//  382   if((GPIOx->IDR & GPIO_Pin) != (uint32_t)GPIO_PIN_RESET)
HAL_GPIO_ReadPin:
        LDR      R0,[R0, #+16]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        TST      R0,R1
        BEQ.N    ??HAL_GPIO_ReadPin_0
//  383   {
//  384     bitstatus = GPIO_PIN_SET;
        MOVS     R0,#+1
        B.N      ??HAL_GPIO_ReadPin_1
//  385   }
//  386   else
//  387   {
//  388     bitstatus = GPIO_PIN_RESET;
??HAL_GPIO_ReadPin_0:
        MOVS     R0,#+0
//  389   }
//  390   return bitstatus;
??HAL_GPIO_ReadPin_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  391 }
          CFI EndBlock cfiBlock2
//  392 
//  393 /**
//  394   * @brief  Sets or clears the selected data port bit.
//  395   *
//  396   * @note   This function uses GPIOx_BSRR register to allow atomic read/modify
//  397   *         accesses. In this way, there is no risk of an IRQ occurring between
//  398   *         the read and the modify access.
//  399   *
//  400   * @param  GPIOx where x can be (A..K) to select the GPIO peripheral for STM32F429X device or
//  401   *                      x can be (A..I) to select the GPIO peripheral for STM32F40XX and STM32F427X devices.
//  402   * @param  GPIO_Pin specifies the port bit to be written.
//  403   *          This parameter can be one of GPIO_PIN_x where x can be (0..15).
//  404   * @param  PinState specifies the value to be written to the selected bit.
//  405   *          This parameter can be one of the GPIO_PinState enum values:
//  406   *            @arg GPIO_PIN_RESET: to clear the port pin
//  407   *            @arg GPIO_PIN_SET: to set the port pin
//  408   * @retval None
//  409   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_GPIO_WritePin
          CFI NoCalls
        THUMB
//  410 void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
//  411 {
//  412   /* Check the parameters */
//  413   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  414   assert_param(IS_GPIO_PIN_ACTION(PinState));
//  415 
//  416   if(PinState != GPIO_PIN_RESET)
HAL_GPIO_WritePin:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??HAL_GPIO_WritePin_0
//  417   {
//  418     GPIOx->BSRR = GPIO_Pin;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+24]
        B.N      ??HAL_GPIO_WritePin_1
//  419   }
//  420   else
//  421   {
//  422     GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
??HAL_GPIO_WritePin_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSLS     R1,R1,#+16
        STR      R1,[R0, #+24]
//  423   }
//  424 }
??HAL_GPIO_WritePin_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  425 
//  426 /**
//  427   * @brief  Toggles the specified GPIO pins.
//  428   * @param  GPIOx Where x can be (A..K) to select the GPIO peripheral for STM32F429X device or
//  429   *                      x can be (A..I) to select the GPIO peripheral for STM32F40XX and STM32F427X devices.
//  430   * @param  GPIO_Pin Specifies the pins to be toggled.
//  431   * @retval None
//  432   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_GPIO_TogglePin
          CFI NoCalls
        THUMB
//  433 void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  434 {
//  435   uint32_t odr;
//  436 
//  437   /* Check the parameters */
//  438   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  439 
//  440   /* get current Output Data Register value */
//  441   odr = GPIOx->ODR;
HAL_GPIO_TogglePin:
        LDR      R2,[R0, #+20]
//  442 
//  443   /* Set selected pins that were at low level, and reset ones that were high */
//  444   GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
        MOVS     R3,R1
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        ANDS     R3,R3,R2
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        BICS     R1,R1,R2
        ORRS     R1,R1,R3, LSL #+16
        STR      R1,[R0, #+24]
//  445 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  446 
//  447 /**
//  448   * @brief  Locks GPIO Pins configuration registers.
//  449   * @note   The locked registers are GPIOx_MODER, GPIOx_OTYPER, GPIOx_OSPEEDR,
//  450   *         GPIOx_PUPDR, GPIOx_AFRL and GPIOx_AFRH.
//  451   * @note   The configuration of the locked GPIO pins can no longer be modified
//  452   *         until the next reset.
//  453   * @param  GPIOx where x can be (A..F) to select the GPIO peripheral for STM32F4 family
//  454   * @param  GPIO_Pin specifies the port bit to be locked.
//  455   *         This parameter can be any combination of GPIO_PIN_x where x can be (0..15).
//  456   * @retval None
//  457   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_GPIO_LockPin
          CFI NoCalls
        THUMB
//  458 HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
//  459 {
HAL_GPIO_LockPin:
        SUB      SP,SP,#+4
          CFI CFA R13+4
//  460   __IO uint32_t tmp = GPIO_LCKR_LCKK;
        MOVS     R2,#+65536
        STR      R2,[SP, #+0]
//  461 
//  462   /* Check the parameters */
//  463   assert_param(IS_GPIO_PIN(GPIO_Pin));
//  464 
//  465   /* Apply lock key write sequence */
//  466   tmp |= GPIO_Pin;
        LDR      R3,[SP, #+0]
        MOVS     R2,R1
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ORRS     R3,R2,R3
        STR      R3,[SP, #+0]
//  467   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
//  468   GPIOx->LCKR = tmp;
        LDR      R2,[SP, #+0]
        STR      R2,[R0, #+28]
//  469   /* Reset LCKx bit(s): LCKK='0' + LCK[15-0] */
//  470   GPIOx->LCKR = GPIO_Pin;
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        STR      R1,[R0, #+28]
//  471   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
//  472   GPIOx->LCKR = tmp;
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+28]
//  473   /* Read LCKR register. This read is mandatory to complete key lock sequence */
//  474   tmp = GPIOx->LCKR;
        LDR      R1,[R0, #+28]
        STR      R1,[SP, #+0]
//  475 
//  476   /* Read again in order to confirm lock is active */
//  477  if((GPIOx->LCKR & GPIO_LCKR_LCKK) != RESET)
        LDR      R0,[R0, #+28]
        LSLS     R0,R0,#+15
        BPL.N    ??HAL_GPIO_LockPin_0
//  478   {
//  479     return HAL_OK;
        MOVS     R0,#+0
        B.N      ??HAL_GPIO_LockPin_1
//  480   }
//  481   else
//  482   {
//  483     return HAL_ERROR;
??HAL_GPIO_LockPin_0:
        MOVS     R0,#+1
??HAL_GPIO_LockPin_1:
        ADD      SP,SP,#+4
          CFI CFA R13+0
        BX       LR               ;; return
//  484   }
//  485 }
          CFI EndBlock cfiBlock5
//  486 
//  487 /**
//  488   * @brief  This function handles EXTI interrupt request.
//  489   * @param  GPIO_Pin Specifies the pins connected EXTI line
//  490   * @retval None
//  491   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_GPIO_EXTI_IRQHandler
        THUMB
//  492 void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin)
//  493 {
HAL_GPIO_EXTI_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  494   /* EXTI line interrupt detected */
//  495   if(__HAL_GPIO_EXTI_GET_IT(GPIO_Pin) != RESET)
        LDR.N    R1,??DataTable2_14  ;; 0x40013c14
        LDR      R2,[R1, #+0]
        MOVS     R3,R0
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        TST      R2,R3
        BEQ.N    ??HAL_GPIO_EXTI_IRQHandler_0
//  496   {
//  497     __HAL_GPIO_EXTI_CLEAR_IT(GPIO_Pin);
        MOVS     R2,R0
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        STR      R2,[R1, #+0]
//  498     HAL_GPIO_EXTI_Callback(GPIO_Pin);
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
          CFI FunCall HAL_GPIO_EXTI_Callback
        BL       HAL_GPIO_EXTI_Callback
//  499   }
//  500 }
??HAL_GPIO_EXTI_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     0x40021c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     0x40013c08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     0x40013c0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DATA32
        DC32     0x40013c04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DATA32
        DC32     0x40013c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DATA32
        DC32     0x40023844

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DATA32
        DC32     0x40013808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DATA32
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DATA32
        DC32     0x40020400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DATA32
        DC32     0x40020800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DATA32
        DC32     0x40020c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DATA32
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DATA32
        DC32     0x40021400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DATA32
        DC32     0x40021800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DATA32
        DC32     0x40013c14
//  501 
//  502 /**
//  503   * @brief  EXTI line detection callbacks.
//  504   * @param  GPIO_Pin Specifies the pins connected EXTI line
//  505   * @retval None
//  506   */

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_GPIO_EXTI_Callback
          CFI NoCalls
        THUMB
//  507 __weak void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
//  508 {
//  509   /* Prevent unused argument(s) compilation warning */
//  510   UNUSED(GPIO_Pin);
//  511   /* NOTE: This function Should not be modified, when the callback is needed,
//  512            the HAL_GPIO_EXTI_Callback could be implemented in the user file
//  513    */
//  514 }
HAL_GPIO_EXTI_Callback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  515 
//  516 /**
//  517   * @}
//  518   */
//  519 
//  520 
//  521 /**
//  522   * @}
//  523   */
//  524 
//  525 #endif /* HAL_GPIO_MODULE_ENABLED */
//  526 /**
//  527   * @}
//  528   */
//  529 
//  530 /**
//  531   * @}
//  532   */
//  533 
// 
// 1 034 bytes in section .text
// 
// 1 032 bytes of CODE memory (+ 2 bytes shared)
//
//Errors: none
//Warnings: none
