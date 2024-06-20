///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_rcc.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW48B.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_rcc.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_rcc.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN AHBPrescTable
        EXTERN APBPrescTable
        EXTERN HAL_GPIO_Init
        EXTERN HAL_GetTick
        EXTERN HAL_InitTick
        EXTERN SystemCoreClock
        EXTERN __aeabi_uldivmod
        EXTERN uwTickPrio

        PUBWEAK HAL_RCC_CSSCallback
        PUBLIC HAL_RCC_ClockConfig
        PUBWEAK HAL_RCC_DeInit
        PUBLIC HAL_RCC_DisableCSS
        PUBLIC HAL_RCC_EnableCSS
        PUBLIC HAL_RCC_GetClockConfig
        PUBLIC HAL_RCC_GetHCLKFreq
        PUBWEAK HAL_RCC_GetOscConfig
        PUBLIC HAL_RCC_GetPCLK1Freq
        PUBLIC HAL_RCC_GetPCLK2Freq
        PUBWEAK HAL_RCC_GetSysClockFreq
        PUBLIC HAL_RCC_MCOConfig
        PUBLIC HAL_RCC_NMI_IRQHandler
        PUBWEAK HAL_RCC_OscConfig
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_rcc.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_rcc.c
//    4   * @author  MCD Application Team
//    5   * @brief   RCC HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities of the Reset and Clock Control (RCC) peripheral:
//    8   *           + Initialization and de-initialization functions
//    9   *           + Peripheral Control functions
//   10   *
//   11   @verbatim
//   12   ==============================================================================
//   13                       ##### RCC specific features #####
//   14   ==============================================================================
//   15     [..]
//   16       After reset the device is running from Internal High Speed oscillator
//   17       (HSI 16MHz) with Flash 0 wait state, Flash prefetch buffer, D-Cache
//   18       and I-Cache are disabled, and all peripherals are off except internal
//   19       SRAM, Flash and JTAG.
//   20       (+) There is no prescaler on High speed (AHB) and Low speed (APB) busses;
//   21           all peripherals mapped on these busses are running at HSI speed.
//   22       (+) The clock for all peripherals is switched off, except the SRAM and FLASH.
//   23       (+) All GPIOs are in input floating state, except the JTAG pins which
//   24           are assigned to be used for debug purpose.
//   25 
//   26     [..]
//   27       Once the device started from reset, the user application has to:
//   28       (+) Configure the clock source to be used to drive the System clock
//   29           (if the application needs higher frequency/performance)
//   30       (+) Configure the System clock frequency and Flash settings
//   31       (+) Configure the AHB and APB busses prescalers
//   32       (+) Enable the clock for the peripheral(s) to be used
//   33       (+) Configure the clock source(s) for peripherals which clocks are not
//   34           derived from the System clock (I2S, RTC, ADC, USB OTG FS/SDIO/RNG)
//   35 
//   36                       ##### RCC Limitations #####
//   37   ==============================================================================
//   38     [..]
//   39       A delay between an RCC peripheral clock enable and the effective peripheral
//   40       enabling should be taken into account in order to manage the peripheral read/write
//   41       from/to registers.
//   42       (+) This delay depends on the peripheral mapping.
//   43       (+) If peripheral is mapped on AHB: the delay is 2 AHB clock cycle
//   44           after the clock enable bit is set on the hardware register
//   45       (+) If peripheral is mapped on APB: the delay is 2 APB clock cycle
//   46           after the clock enable bit is set on the hardware register
//   47 
//   48     [..]
//   49       Implemented Workaround:
//   50       (+) For AHB & APB peripherals, a dummy read to the peripheral register has been
//   51           inserted in each __HAL_RCC_PPP_CLK_ENABLE() macro.
//   52 
//   53   @endverbatim
//   54   ******************************************************************************
//   55   * @attention
//   56   *
//   57   * Copyright (c) 2017 STMicroelectronics.
//   58   * All rights reserved.
//   59   *
//   60   * This software is licensed under terms that can be found in the LICENSE file in
//   61   * the root directory of this software component.
//   62   * If no LICENSE file comes with this software, it is provided AS-IS.
//   63   ******************************************************************************
//   64   */
//   65 
//   66 /* Includes ------------------------------------------------------------------*/
//   67 #include "stm32f4xx_hal.h"
//   68 
//   69 /** @addtogroup STM32F4xx_HAL_Driver
//   70   * @{
//   71   */
//   72 
//   73 /** @defgroup RCC RCC
//   74   * @brief RCC HAL module driver
//   75   * @{
//   76   */
//   77 
//   78 #ifdef HAL_RCC_MODULE_ENABLED
//   79 
//   80 /* Private typedef -----------------------------------------------------------*/
//   81 /* Private define ------------------------------------------------------------*/
//   82 /** @addtogroup RCC_Private_Constants
//   83   * @{
//   84   */
//   85 
//   86 /* Private macro -------------------------------------------------------------*/
//   87 #define __MCO1_CLK_ENABLE()   __HAL_RCC_GPIOA_CLK_ENABLE()
//   88 #define MCO1_GPIO_PORT        GPIOA
//   89 #define MCO1_PIN              GPIO_PIN_8
//   90 
//   91 #define __MCO2_CLK_ENABLE()   __HAL_RCC_GPIOC_CLK_ENABLE()
//   92 #define MCO2_GPIO_PORT         GPIOC
//   93 #define MCO2_PIN               GPIO_PIN_9
//   94 /**
//   95   * @}
//   96   */
//   97 
//   98 /* Private variables ---------------------------------------------------------*/
//   99 /** @defgroup RCC_Private_Variables RCC Private Variables
//  100   * @{
//  101   */
//  102 /**
//  103   * @}
//  104   */
//  105 /* Private function prototypes -----------------------------------------------*/
//  106 /* Private functions ---------------------------------------------------------*/
//  107 
//  108 /** @defgroup RCC_Exported_Functions RCC Exported Functions
//  109   *  @{
//  110   */
//  111 
//  112 /** @defgroup RCC_Exported_Functions_Group1 Initialization and de-initialization functions
//  113  *  @brief    Initialization and Configuration functions
//  114  *
//  115 @verbatim
//  116  ===============================================================================
//  117            ##### Initialization and de-initialization functions #####
//  118  ===============================================================================
//  119     [..]
//  120       This section provides functions allowing to configure the internal/external oscillators
//  121       (HSE, HSI, LSE, LSI, PLL, CSS and MCO) and the System busses clocks (SYSCLK, AHB, APB1
//  122        and APB2).
//  123 
//  124     [..] Internal/external clock and PLL configuration
//  125          (#) HSI (high-speed internal), 16 MHz factory-trimmed RC used directly or through
//  126              the PLL as System clock source.
//  127 
//  128          (#) LSI (low-speed internal), 32 KHz low consumption RC used as IWDG and/or RTC
//  129              clock source.
//  130 
//  131          (#) HSE (high-speed external), 4 to 26 MHz crystal oscillator used directly or
//  132              through the PLL as System clock source. Can be used also as RTC clock source.
//  133 
//  134          (#) LSE (low-speed external), 32 KHz oscillator used as RTC clock source.
//  135 
//  136          (#) PLL (clocked by HSI or HSE), featuring two different output clocks:
//  137            (++) The first output is used to generate the high speed system clock (up to 168 MHz)
//  138            (++) The second output is used to generate the clock for the USB OTG FS (48 MHz),
//  139                 the random analog generator (<=48 MHz) and the SDIO (<= 48 MHz).
//  140 
//  141          (#) CSS (Clock security system), once enable using the macro __HAL_RCC_CSS_ENABLE()
//  142              and if a HSE clock failure occurs(HSE used directly or through PLL as System
//  143              clock source), the System clocks automatically switched to HSI and an interrupt
//  144              is generated if enabled. The interrupt is linked to the Cortex-M4 NMI
//  145              (Non-Maskable Interrupt) exception vector.
//  146 
//  147          (#) MCO1 (microcontroller clock output), used to output HSI, LSE, HSE or PLL
//  148              clock (through a configurable prescaler) on PA8 pin.
//  149 
//  150          (#) MCO2 (microcontroller clock output), used to output HSE, PLL, SYSCLK or PLLI2S
//  151              clock (through a configurable prescaler) on PC9 pin.
//  152 
//  153     [..] System, AHB and APB busses clocks configuration
//  154          (#) Several clock sources can be used to drive the System clock (SYSCLK): HSI,
//  155              HSE and PLL.
//  156              The AHB clock (HCLK) is derived from System clock through configurable
//  157              prescaler and used to clock the CPU, memory and peripherals mapped
//  158              on AHB bus (DMA, GPIO...). APB1 (PCLK1) and APB2 (PCLK2) clocks are derived
//  159              from AHB clock through configurable prescalers and used to clock
//  160              the peripherals mapped on these busses. You can use
//  161              "HAL_RCC_GetSysClockFreq()" function to retrieve the frequencies of these clocks.
//  162 
//  163          (#) For the STM32F405xx/07xx and STM32F415xx/17xx devices, the maximum
//  164              frequency of the SYSCLK and HCLK is 168 MHz, PCLK2 84 MHz and PCLK1 42 MHz.
//  165              Depending on the device voltage range, the maximum frequency should
//  166              be adapted accordingly (refer to the product datasheets for more details).
//  167 
//  168          (#) For the STM32F42xxx, STM32F43xxx, STM32F446xx, STM32F469xx and STM32F479xx devices,
//  169              the maximum frequency of the SYSCLK and HCLK is 180 MHz, PCLK2 90 MHz and PCLK1 45 MHz.
//  170              Depending on the device voltage range, the maximum frequency should
//  171              be adapted accordingly (refer to the product datasheets for more details).
//  172 
//  173          (#) For the STM32F401xx, the maximum frequency of the SYSCLK and HCLK is 84 MHz,
//  174              PCLK2 84 MHz and PCLK1 42 MHz.
//  175              Depending on the device voltage range, the maximum frequency should
//  176              be adapted accordingly (refer to the product datasheets for more details).
//  177 
//  178          (#) For the STM32F41xxx, the maximum frequency of the SYSCLK and HCLK is 100 MHz,
//  179              PCLK2 100 MHz and PCLK1 50 MHz.
//  180              Depending on the device voltage range, the maximum frequency should
//  181              be adapted accordingly (refer to the product datasheets for more details).
//  182 
//  183 @endverbatim
//  184   * @{
//  185   */
//  186 
//  187 /**
//  188   * @brief  Resets the RCC clock configuration to the default reset state.
//  189   * @note   The default reset state of the clock configuration is given below:
//  190   *            - HSI ON and used as system clock source
//  191   *            - HSE and PLL OFF
//  192   *            - AHB, APB1 and APB2 prescaler set to 1.
//  193   *            - CSS, MCO1 and MCO2 OFF
//  194   *            - All interrupts disabled
//  195   * @note   This function doesn't modify the configuration of the
//  196   *            - Peripheral clocks
//  197   *            - LSI, LSE and RTC clocks
//  198   * @retval HAL status
//  199   */

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_RCC_DeInit
          CFI NoCalls
        THUMB
//  200 __weak HAL_StatusTypeDef HAL_RCC_DeInit(void)
//  201 {
//  202   return HAL_OK;
HAL_RCC_DeInit:
        MOVS     R0,#+0
        BX       LR               ;; return
//  203 }
          CFI EndBlock cfiBlock0
//  204 
//  205 /**
//  206   * @brief  Initializes the RCC Oscillators according to the specified parameters in the
//  207   *         RCC_OscInitTypeDef.
//  208   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that
//  209   *         contains the configuration information for the RCC Oscillators.
//  210   * @note   The PLL is not disabled when used as system clock.
//  211   * @note   Transitions LSE Bypass to LSE On and LSE On to LSE Bypass are not
//  212   *         supported by this API. User should request a transition to LSE Off
//  213   *         first and then LSE On or LSE Bypass.
//  214   * @note   Transition HSE Bypass to HSE On and HSE On to HSE Bypass are not
//  215   *         supported by this API. User should request a transition to HSE Off
//  216   *         first and then HSE On or HSE Bypass.
//  217   * @retval HAL status
//  218   */

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_RCC_OscConfig
        THUMB
//  219 __weak HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
//  220 {
HAL_RCC_OscConfig:
        PUSH     {R2-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+32
        MOVS     R4,R0
//  221   uint32_t tickstart, pll_config;
//  222 
//  223   /* Check Null pointer */
//  224   if(RCC_OscInitStruct == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_RCC_OscConfig_1
//  225   {
//  226     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_2
//  227   }
//  228 
//  229   /* Check the parameters */
//  230   assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
//  231   /*------------------------------- HSE Configuration ------------------------*/
//  232   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
??HAL_RCC_OscConfig_1:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_OscConfig_3
//  233   {
//  234     /* Check the parameters */
//  235     assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
//  236     /* When the HSE is used as system clock or clock source for PLL in these cases HSE will not disabled */
//  237     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\ 
//  238       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
        LDR.W    R0,??HAL_RCC_OscConfig_0  ;; 0x40023808
        LDR      R1,[R0, #+0]
        ANDS     R1,R1,#0xC
        CMP      R1,#+4
        BEQ.N    ??HAL_RCC_OscConfig_4
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+8
        BNE.N    ??HAL_RCC_OscConfig_5
        LDR.W    R0,??HAL_RCC_OscConfig_0+0x4  ;; 0x40023804
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+9
        BPL.N    ??HAL_RCC_OscConfig_5
//  239     {
//  240       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
??HAL_RCC_OscConfig_4:
        LDR.W    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??HAL_RCC_OscConfig_3
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??HAL_RCC_OscConfig_3
//  241       {
//  242         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_2
//  243       }
//  244     }
//  245     else
//  246     {
//  247       /* Set the new HSE configuration ---------------------------------------*/
//  248       __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
??HAL_RCC_OscConfig_5:
        LDR      R0,[R4, #+4]
        CMP      R0,#+65536
        BNE.N    ??HAL_RCC_OscConfig_6
        LDR.W    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000
        STR      R1,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_7
??HAL_RCC_OscConfig_6:
        LDR      R0,[R4, #+4]
        CMP      R0,#+327680
        BNE.N    ??HAL_RCC_OscConfig_8
        LDR.W    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x40000
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000
        STR      R1,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_7
??HAL_RCC_OscConfig_8:
        LDR.W    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x10000
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x40000
        STR      R1,[R0, #+0]
//  249 
//  250       /* Check the HSE State */
//  251       if((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
??HAL_RCC_OscConfig_7:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_9
//  252       {
//  253         /* Get Start Tick */
//  254         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  255 
//  256         /* Wait till HSE is ready */
//  257         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
??HAL_RCC_OscConfig_10:
        LDR.W    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BMI.N    ??HAL_RCC_OscConfig_3
//  258         {
//  259           if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+101
        BCC.N    ??HAL_RCC_OscConfig_10
//  260           {
//  261             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  262           }
//  263         }
//  264       }
//  265       else
//  266       {
//  267         /* Get Start Tick */
//  268         tickstart = HAL_GetTick();
??HAL_RCC_OscConfig_9:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  269 
//  270         /* Wait till HSE is bypassed or disabled */
//  271         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
??HAL_RCC_OscConfig_11:
        LDR.W    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??HAL_RCC_OscConfig_3
//  272         {
//  273           if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+101
        BCC.N    ??HAL_RCC_OscConfig_11
//  274           {
//  275             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  276           }
//  277         }
//  278       }
//  279     }
//  280   }
//  281   /*----------------------------- HSI Configuration --------------------------*/
//  282   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
??HAL_RCC_OscConfig_3:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCC_OscConfig_12
//  283   {
//  284     /* Check the parameters */
//  285     assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
//  286     assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));
//  287 
//  288     /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
//  289     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\ 
//  290       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
        LDR.N    R0,??HAL_RCC_OscConfig_0  ;; 0x40023808
        LDR      R1,[R0, #+0]
        TST      R1,#0xC
        BEQ.N    ??HAL_RCC_OscConfig_13
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+8
        BNE.N    ??HAL_RCC_OscConfig_14
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x4  ;; 0x40023804
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+9
        BMI.N    ??HAL_RCC_OscConfig_14
//  291     {
//  292       /* When HSI is used as system clock it will not disabled */
//  293       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
??HAL_RCC_OscConfig_13:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??HAL_RCC_OscConfig_15
        LDR      R1,[R4, #+12]
        CMP      R1,#+1
        BEQ.N    ??HAL_RCC_OscConfig_15
//  294       {
//  295         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_2
//  296       }
//  297       /* Otherwise, just the calibration is allowed */
//  298       else
//  299       {
//  300         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
//  301         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
??HAL_RCC_OscConfig_15:
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xF8
        LDR      R2,[R4, #+16]
        ORRS     R1,R1,R2, LSL #+3
        STR      R1,[R0, #+0]
//  302       }
//  303     }
//  304     else
//  305     {
//  306       /* Check the HSI State */
//  307       if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
//  308       {
//  309         /* Enable the Internal High Speed oscillator (HSI). */
//  310         __HAL_RCC_HSI_ENABLE();
//  311 
//  312         /* Get Start Tick*/
//  313         tickstart = HAL_GetTick();
//  314 
//  315         /* Wait till HSI is ready */
//  316         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
//  317         {
//  318           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
//  319           {
//  320             return HAL_TIMEOUT;
//  321           }
//  322         }
//  323 
//  324         /* Adjusts the Internal High Speed oscillator (HSI) calibration value. */
//  325         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
//  326       }
//  327       else
//  328       {
//  329         /* Disable the Internal High Speed oscillator (HSI). */
//  330         __HAL_RCC_HSI_DISABLE();
//  331 
//  332         /* Get Start Tick*/
//  333         tickstart = HAL_GetTick();
//  334 
//  335         /* Wait till HSI is ready */
//  336         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
//  337         {
//  338           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
//  339           {
//  340             return HAL_TIMEOUT;
//  341           }
//  342         }
//  343       }
//  344     }
//  345   }
//  346   /*------------------------------ LSI Configuration -------------------------*/
//  347   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
??HAL_RCC_OscConfig_12:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??HAL_RCC_OscConfig_16
//  348   {
//  349     /* Check the parameters */
//  350     assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));
//  351 
//  352     /* Check the LSI State */
//  353     if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_17
//  354     {
//  355       /* Enable the Internal Low Speed oscillator (LSI). */
//  356       __HAL_RCC_LSI_ENABLE();
        MOVS     R0,#+1
        LDR.N    R1,??HAL_RCC_OscConfig_0+0xC  ;; 0x42470e80
        STR      R0,[R1, #+0]
//  357 
//  358       /* Get Start Tick*/
//  359       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  360 
//  361       /* Wait till LSI is ready */
//  362       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
??HAL_RCC_OscConfig_18:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x10  ;; 0x40023874
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_RCC_OscConfig_16
//  363       {
//  364         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_18
//  365         {
//  366           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  367         }
//  368       }
//  369     }
??HAL_RCC_OscConfig_14:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_19
        MOVS     R0,#+1
        LDR.N    R1,??HAL_RCC_OscConfig_0+0x14  ;; 0x42470000
        STR      R0,[R1, #+0]
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
??HAL_RCC_OscConfig_20:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BMI.N    ??HAL_RCC_OscConfig_21
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_20
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
??HAL_RCC_OscConfig_21:
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xF8
        LDR      R2,[R4, #+16]
        ORRS     R1,R1,R2, LSL #+3
        STR      R1,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_12
??HAL_RCC_OscConfig_19:
        MOVS     R0,#+0
        LDR.N    R1,??HAL_RCC_OscConfig_0+0x14  ;; 0x42470000
        STR      R0,[R1, #+0]
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
??HAL_RCC_OscConfig_22:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCC_OscConfig_12
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_22
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  370     else
//  371     {
//  372       /* Disable the Internal Low Speed oscillator (LSI). */
//  373       __HAL_RCC_LSI_DISABLE();
??HAL_RCC_OscConfig_17:
        MOVS     R0,#+0
        LDR.N    R1,??HAL_RCC_OscConfig_0+0xC  ;; 0x42470e80
        STR      R0,[R1, #+0]
//  374 
//  375       /* Get Start Tick */
//  376       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  377 
//  378       /* Wait till LSI is ready */
//  379       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
??HAL_RCC_OscConfig_23:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x10  ;; 0x40023874
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCC_OscConfig_16
//  380       {
//  381         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_23
//  382         {
//  383           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  384         }
//  385       }
//  386     }
//  387   }
//  388   /*------------------------------ LSE Configuration -------------------------*/
//  389   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
??HAL_RCC_OscConfig_16:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_RCC_OscConfig_24
//  390   {
//  391     FlagStatus       pwrclkchanged = RESET;
        MOVS     R6,#+0
//  392 
//  393     /* Check the parameters */
//  394     assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));
//  395 
//  396     /* Update LSE configuration in Backup Domain control register    */
//  397     /* Requires to enable write access to Backup Domain of necessary */
//  398     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
        LDR.N    R5,??HAL_RCC_OscConfig_0+0x18  ;; 0x40023840
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+3
        BMI.N    ??HAL_RCC_OscConfig_25
//  399     {
//  400       __HAL_RCC_PWR_CLK_ENABLE();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R0,[R5, #+0]
        ORRS     R0,R0,#0x10000000
        STR      R0,[R5, #+0]
        LDR      R0,[R5, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  401       pwrclkchanged = SET;
        MOVS     R6,#+1
//  402     }
//  403 
//  404     if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
??HAL_RCC_OscConfig_25:
        LDR.N    R7,??HAL_RCC_OscConfig_0+0x1C  ;; 0x40007000
        LDR      R0,[R7, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_RCC_OscConfig_26
//  405     {
//  406       /* Enable write access to Backup domain */
//  407       SET_BIT(PWR->CR, PWR_CR_DBP);
        LDR      R0,[R7, #+0]
        ORRS     R0,R0,#0x100
        STR      R0,[R7, #+0]
//  408 
//  409       /* Wait for Backup domain Write protection disable */
//  410       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R8,R0
//  411 
//  412       while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
??HAL_RCC_OscConfig_27:
        LDR      R0,[R7, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_RCC_OscConfig_26
//  413       {
//  414         if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R8
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_27
//  415         {
//  416           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  417         }
//  418       }
//  419     }
//  420 
//  421     /* Set the new LSE configuration -----------------------------------------*/
//  422     __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
??HAL_RCC_OscConfig_26:
        LDR      R0,[R4, #+8]
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_28
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x20  ;; 0x40023870
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_29
??HAL_RCC_OscConfig_28:
        LDR      R0,[R4, #+8]
        CMP      R0,#+5
        BNE.N    ??HAL_RCC_OscConfig_30
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x20  ;; 0x40023870
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
        B.N      ??HAL_RCC_OscConfig_29
??HAL_RCC_OscConfig_30:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x20  ;; 0x40023870
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//  423     /* Check the LSE State */
//  424     if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
??HAL_RCC_OscConfig_29:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_31
//  425     {
//  426       /* Get Start Tick*/
//  427       tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
//  428 
//  429       /* Wait till LSE is ready */
//  430       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
??HAL_RCC_OscConfig_32:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x20  ;; 0x40023870
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_RCC_OscConfig_33
//  431       {
//  432         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_OscConfig_32
//  433         {
//  434           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  435         }
//  436       }
//  437     }
//  438     else
//  439     {
//  440       /* Get Start Tick */
//  441       tickstart = HAL_GetTick();
??HAL_RCC_OscConfig_31:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
//  442 
//  443       /* Wait till LSE is ready */
//  444       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
??HAL_RCC_OscConfig_34:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x20  ;; 0x40023870
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCC_OscConfig_33
//  445       {
//  446         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_OscConfig_34
//  447         {
//  448           return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  449         }
//  450       }
//  451     }
//  452 
//  453     /* Restore clock configuration if changed */
//  454     if(pwrclkchanged == SET)
??HAL_RCC_OscConfig_33:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??HAL_RCC_OscConfig_24
//  455     {
//  456       __HAL_RCC_PWR_CLK_DISABLE();
        LDR      R0,[R5, #+0]
        BICS     R0,R0,#0x10000000
        STR      R0,[R5, #+0]
//  457     }
//  458   }
//  459   /*-------------------------------- PLL Configuration -----------------------*/
//  460   /* Check the parameters */
//  461   assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
//  462   if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
??HAL_RCC_OscConfig_24:
        LDR      R0,[R4, #+24]
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_OscConfig_35
//  463   {
//  464     /* Check if the PLL is used as system clock or not */
//  465     if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
        LDR.N    R0,??HAL_RCC_OscConfig_0  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+8
        BEQ.N    ??HAL_RCC_OscConfig_36
//  466     {
//  467       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
        LDR      R0,[R4, #+24]
        CMP      R0,#+2
        BNE.N    ??HAL_RCC_OscConfig_37
//  468       {
//  469         /* Check the parameters */
//  470         assert_param(IS_RCC_PLLSOURCE(RCC_OscInitStruct->PLL.PLLSource));
//  471         assert_param(IS_RCC_PLLM_VALUE(RCC_OscInitStruct->PLL.PLLM));
//  472         assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
//  473         assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
//  474         assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));
//  475 
//  476         /* Disable the main PLL. */
//  477         __HAL_RCC_PLL_DISABLE();
        LDR.N    R6,??HAL_RCC_OscConfig_0+0x24  ;; 0x42470060
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
//  478 
//  479         /* Get Start Tick */
//  480         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
//  481 
//  482         /* Wait till PLL is disabled */
//  483         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
??HAL_RCC_OscConfig_38:
        LDR.N    R5,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??HAL_RCC_OscConfig_39
//  484         {
//  485           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_38
//  486           {
//  487             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  488           }
//  489         }
//  490 
//  491         /* Configure the main PLL clock source, multiplication and division factors. */
//  492         WRITE_REG(RCC->PLLCFGR, (RCC_OscInitStruct->PLL.PLLSource                                            | \ 
//  493                                  RCC_OscInitStruct->PLL.PLLM                                                 | \ 
//  494                                  (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)             | \ 
//  495                                  (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U) << RCC_PLLCFGR_PLLP_Pos) | \ 
//  496                                  (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)));
??HAL_RCC_OscConfig_39:
        LDR      R1,[R4, #+28]
        LDR      R0,[R4, #+32]
        ORRS     R1,R0,R1
        LDR      R0,[R4, #+36]
        ORRS     R1,R1,R0, LSL #+6
        LDR      R0,[R4, #+40]
        LSRS     R0,R0,#+1
        SUBS     R0,R0,#+1
        ORRS     R1,R1,R0, LSL #+16
        LDR      R0,[R4, #+44]
        ORRS     R1,R1,R0, LSL #+24
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x4  ;; 0x40023804
        STR      R1,[R0, #+0]
//  497         /* Enable the main PLL. */
//  498         __HAL_RCC_PLL_ENABLE();
        MOVS     R0,#+1
        STR      R0,[R6, #+0]
//  499 
//  500         /* Get Start Tick */
//  501         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R4,R0
//  502 
//  503         /* Wait till PLL is ready */
//  504         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
??HAL_RCC_OscConfig_40:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+6
        BMI.N    ??HAL_RCC_OscConfig_35
//  505         {
//  506           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R4
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_40
//  507           {
//  508             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  509           }
//  510         }
//  511       }
//  512       else
//  513       {
//  514         /* Disable the main PLL. */
//  515         __HAL_RCC_PLL_DISABLE();
??HAL_RCC_OscConfig_37:
        MOVS     R0,#+0
        LDR.N    R1,??HAL_RCC_OscConfig_0+0x24  ;; 0x42470060
        STR      R0,[R1, #+0]
//  516 
//  517         /* Get Start Tick */
//  518         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R4,R0
//  519 
//  520         /* Wait till PLL is disabled */
//  521         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
??HAL_RCC_OscConfig_41:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x8  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??HAL_RCC_OscConfig_35
//  522         {
//  523           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R4
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_OscConfig_41
//  524           {
//  525             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_OscConfig_2
//  526           }
//  527         }
//  528       }
//  529     }
//  530     else
//  531     {
//  532       /* Check if there is a request to disable the PLL used as System clock source */
//  533       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
??HAL_RCC_OscConfig_36:
        LDR      R0,[R4, #+24]
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_OscConfig_42
//  534       {
//  535         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_2
//  536       }
//  537       else
//  538       {
//  539         /* Do not return HAL_ERROR if request repeats the current configuration */
//  540         pll_config = RCC->PLLCFGR;
??HAL_RCC_OscConfig_42:
        LDR.N    R0,??HAL_RCC_OscConfig_0+0x4  ;; 0x40023804
        LDR      R0,[R0, #+0]
//  541 #if defined (RCC_PLLCFGR_PLLR)
//  542         if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
//  543             (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
//  544             (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
//  545             (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
//  546             (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
//  547             (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)) ||
//  548             (READ_BIT(pll_config, RCC_PLLCFGR_PLLR) != (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)))
//  549 #else
//  550         if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
//  551             (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
//  552             (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
//  553             (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
//  554             (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
//  555             (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)))
        LDR      R1,[R4, #+24]
        CMP      R1,#+1
        BEQ.N    ??HAL_RCC_OscConfig_43
        ANDS     R1,R0,#0x400000
        LDR      R2,[R4, #+28]
        CMP      R1,R2
        BNE.N    ??HAL_RCC_OscConfig_43
        ANDS     R1,R0,#0x3F
        LDR      R2,[R4, #+32]
        CMP      R1,R2
        BNE.N    ??HAL_RCC_OscConfig_43
        MOVW     R1,#+32704
        ANDS     R1,R1,R0
        LDR      R2,[R4, #+36]
        CMP      R1,R2, LSL #+6
        BNE.N    ??HAL_RCC_OscConfig_43
        ANDS     R1,R0,#0x30000
        LDR      R2,[R4, #+40]
        LSRS     R2,R2,#+1
        SUBS     R2,R2,#+1
        CMP      R1,R2, LSL #+16
        BNE.N    ??HAL_RCC_OscConfig_43
        ANDS     R0,R0,#0xF000000
        LDR      R1,[R4, #+44]
        CMP      R0,R1, LSL #+24
        BEQ.N    ??HAL_RCC_OscConfig_35
//  556 #endif
//  557         {
//  558           return HAL_ERROR;
??HAL_RCC_OscConfig_43:
        MOVS     R0,#+1
        B.N      ??HAL_RCC_OscConfig_2
//  559         }
//  560       }
//  561     }
//  562   }
//  563   return HAL_OK;
??HAL_RCC_OscConfig_35:
        MOVS     R0,#+0
??HAL_RCC_OscConfig_2:
        POP      {R1,R2,R4-R8,PC}  ;; return
        DATA
??HAL_RCC_OscConfig_0:
        DATA32
        DC32     0x40023808
        DC32     0x40023804
        DC32     0x40023800
        DC32     0x42470e80
        DC32     0x40023874
        DC32     0x42470000
        DC32     0x40023840
        DC32     0x40007000
        DC32     0x40023870
        DC32     0x42470060
//  564 }
          CFI EndBlock cfiBlock1
//  565 
//  566 /**
//  567   * @brief  Initializes the CPU, AHB and APB busses clocks according to the specified
//  568   *         parameters in the RCC_ClkInitStruct.
//  569   * @param  RCC_ClkInitStruct pointer to an RCC_OscInitTypeDef structure that
//  570   *         contains the configuration information for the RCC peripheral.
//  571   * @param  FLatency FLASH Latency, this parameter depend on device selected
//  572   *
//  573   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
//  574   *         and updated by HAL_RCC_GetHCLKFreq() function called within this function
//  575   *
//  576   * @note   The HSI is used (enabled by hardware) as system clock source after
//  577   *         startup from Reset, wake-up from STOP and STANDBY mode, or in case
//  578   *         of failure of the HSE used directly or indirectly as system clock
//  579   *         (if the Clock Security System CSS is enabled).
//  580   *
//  581   * @note   A switch from one clock source to another occurs only if the target
//  582   *         clock source is ready (clock stable after startup delay or PLL locked).
//  583   *         If a clock source which is not yet ready is selected, the switch will
//  584   *         occur when the clock source will be ready.
//  585   *
//  586   * @note   Depending on the device voltage range, the software has to set correctly
//  587   *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
//  588   *         (for more details refer to section above "Initialization/de-initialization functions")
//  589   * @retval None
//  590   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_RCC_ClockConfig
        THUMB
//  591 HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
//  592 {
HAL_RCC_ClockConfig:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R6,R1
//  593   uint32_t tickstart;
//  594 
//  595   /* Check Null pointer */
//  596   if(RCC_ClkInitStruct == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_RCC_ClockConfig_0
//  597   {
//  598     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_1
//  599   }
//  600 
//  601   /* Check the parameters */
//  602   assert_param(IS_RCC_CLOCKTYPE(RCC_ClkInitStruct->ClockType));
//  603   assert_param(IS_FLASH_LATENCY(FLatency));
//  604 
//  605   /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
//  606     must be correctly programmed according to the frequency of the CPU clock
//  607     (HCLK) and the supply voltage of the device. */
//  608 
//  609   /* Increasing the number of wait states because of higher CPU frequency */
//  610   if(FLatency > __HAL_FLASH_GET_LATENCY())
??HAL_RCC_ClockConfig_0:
        LDR.N    R5,??DataTable8  ;; 0x40023c00
        LDR      R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,R6
        BCS.N    ??HAL_RCC_ClockConfig_2
//  611   {
//  612     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
//  613     __HAL_FLASH_SET_LATENCY(FLatency);
        STRB     R6,[R5, #+0]
//  614 
//  615     /* Check that the new number of wait states is taken into account to access the Flash
//  616     memory by reading the FLASH_ACR register */
//  617     if(__HAL_FLASH_GET_LATENCY() != FLatency)
        LDR      R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,R6
        BEQ.N    ??HAL_RCC_ClockConfig_2
//  618     {
//  619       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_1
//  620     }
//  621   }
//  622 
//  623   /*-------------------------- HCLK Configuration --------------------------*/
//  624   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
??HAL_RCC_ClockConfig_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCC_ClockConfig_3
//  625   {
//  626     /* Set the highest APBx dividers in order to ensure that we do not go through
//  627        a non-spec phase whatever we decrease or increase HCLK. */
//  628     if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_RCC_ClockConfig_4
//  629     {
//  630       MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
        LDR.N    R0,??DataTable8_1  ;; 0x40023808
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1C00
        STR      R1,[R0, #+0]
//  631     }
//  632 
//  633     if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
??HAL_RCC_ClockConfig_4:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??HAL_RCC_ClockConfig_5
//  634     {
//  635       MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
        LDR.N    R0,??DataTable8_1  ;; 0x40023808
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0xE000
        STR      R1,[R0, #+0]
//  636     }
//  637 
//  638     assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
//  639     MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
??HAL_RCC_ClockConfig_5:
        LDR.N    R1,??DataTable8_1  ;; 0x40023808
        LDR      R2,[R1, #+0]
        BICS     R2,R2,#0xF0
        LDR      R0,[R4, #+8]
        ORRS     R2,R0,R2
        STR      R2,[R1, #+0]
//  640   }
//  641 
//  642   /*------------------------- SYSCLK Configuration ---------------------------*/
//  643   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
??HAL_RCC_ClockConfig_3:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCC_ClockConfig_6
//  644   {
//  645     assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));
//  646 
//  647     /* HSE is selected as System Clock Source */
//  648     if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
        LDR      R0,[R4, #+4]
        CMP      R0,#+1
        BNE.N    ??HAL_RCC_ClockConfig_7
//  649     {
//  650       /* Check the HSE ready flag */
//  651       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
        LDR.N    R0,??DataTable8_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BMI.N    ??HAL_RCC_ClockConfig_8
//  652       {
//  653         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_1
//  654       }
//  655     }
//  656     /* PLL is selected as System Clock Source */
//  657     else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
//  658             (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLRCLK))
??HAL_RCC_ClockConfig_7:
        LDR      R0,[R4, #+4]
        CMP      R0,#+2
        BEQ.N    ??HAL_RCC_ClockConfig_9
        LDR      R0,[R4, #+4]
        CMP      R0,#+3
        BNE.N    ??HAL_RCC_ClockConfig_10
//  659     {
//  660       /* Check the PLL ready flag */
//  661       if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
??HAL_RCC_ClockConfig_9:
        LDR.N    R0,??DataTable8_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BMI.N    ??HAL_RCC_ClockConfig_8
//  662       {
//  663         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_1
//  664       }
//  665     }
//  666     /* HSI is selected as System Clock Source */
//  667     else
//  668     {
//  669       /* Check the HSI ready flag */
//  670       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
??HAL_RCC_ClockConfig_10:
        LDR.N    R0,??DataTable8_2  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_RCC_ClockConfig_8
//  671       {
//  672         return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_1
//  673       }
//  674     }
//  675 
//  676     __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
??HAL_RCC_ClockConfig_8:
        LDR.N    R7,??DataTable8_1  ;; 0x40023808
        LDR      R1,[R7, #+0]
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        LDR      R0,[R4, #+4]
        ORRS     R1,R0,R1
        STR      R1,[R7, #+0]
//  677 
//  678     /* Get Start Tick */
//  679     tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R8,R0
//  680 
//  681     while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
??HAL_RCC_ClockConfig_11:
        LDR      R0,[R7, #+0]
        ANDS     R0,R0,#0xC
        LDR      R1,[R4, #+4]
        CMP      R0,R1, LSL #+2
        BEQ.N    ??HAL_RCC_ClockConfig_6
//  682     {
//  683       if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R8
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_ClockConfig_11
//  684       {
//  685         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_ClockConfig_1
//  686       }
//  687     }
//  688   }
//  689 
//  690   /* Decreasing the number of wait states because of lower CPU frequency */
//  691   if(FLatency < __HAL_FLASH_GET_LATENCY())
??HAL_RCC_ClockConfig_6:
        LDR      R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R6,R0
        BCS.N    ??HAL_RCC_ClockConfig_12
//  692   {
//  693      /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
//  694     __HAL_FLASH_SET_LATENCY(FLatency);
        STRB     R6,[R5, #+0]
//  695 
//  696     /* Check that the new number of wait states is taken into account to access the Flash
//  697     memory by reading the FLASH_ACR register */
//  698     if(__HAL_FLASH_GET_LATENCY() != FLatency)
        LDR      R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,R6
        BEQ.N    ??HAL_RCC_ClockConfig_12
//  699     {
//  700       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_ClockConfig_1
//  701     }
//  702   }
//  703 
//  704   /*-------------------------- PCLK1 Configuration ---------------------------*/
//  705   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
??HAL_RCC_ClockConfig_12:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_RCC_ClockConfig_13
//  706   {
//  707     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
//  708     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
        LDR.N    R1,??DataTable8_1  ;; 0x40023808
        LDR      R2,[R1, #+0]
        BICS     R2,R2,#0x1C00
        LDR      R0,[R4, #+12]
        ORRS     R2,R0,R2
        STR      R2,[R1, #+0]
//  709   }
//  710 
//  711   /*-------------------------- PCLK2 Configuration ---------------------------*/
//  712   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
??HAL_RCC_ClockConfig_13:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??HAL_RCC_ClockConfig_14
//  713   {
//  714     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
//  715     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
        LDR.N    R0,??DataTable8_1  ;; 0x40023808
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0xE000
        LDR      R2,[R4, #+16]
        ORRS     R1,R1,R2, LSL #+3
        STR      R1,[R0, #+0]
//  716   }
//  717 
//  718   /* Update the SystemCoreClock global variable */
//  719   SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CFGR_HPRE_Pos];
??HAL_RCC_ClockConfig_14:
          CFI FunCall HAL_RCC_GetSysClockFreq
        BL       HAL_RCC_GetSysClockFreq
        LDR.N    R1,??DataTable8_3
        LDR.N    R2,??DataTable8_1  ;; 0x40023808
        LDR      R2,[R2, #+0]
        UBFX     R2,R2,#+4,#+4
        LDRB     R1,[R1, R2]
        LSRS     R0,R0,R1
        LDR.N    R1,??DataTable8_4
        STR      R0,[R1, #+0]
//  720 
//  721   /* Configure the source of time base considering new system clocks settings */
//  722   HAL_InitTick (uwTickPrio);
        LDR.N    R0,??DataTable8_5
        LDR      R0,[R0, #+0]
          CFI FunCall HAL_InitTick
        BL       HAL_InitTick
//  723 
//  724   return HAL_OK;
        MOVS     R0,#+0
??HAL_RCC_ClockConfig_1:
        POP      {R4-R8,PC}       ;; return
//  725 }
          CFI EndBlock cfiBlock2
//  726 
//  727 /**
//  728   * @}
//  729   */
//  730 
//  731 /** @defgroup RCC_Exported_Functions_Group2 Peripheral Control functions
//  732  *  @brief   RCC clocks control functions
//  733  *
//  734 @verbatim
//  735  ===============================================================================
//  736                       ##### Peripheral Control functions #####
//  737  ===============================================================================
//  738     [..]
//  739     This subsection provides a set of functions allowing to control the RCC Clocks
//  740     frequencies.
//  741 
//  742 @endverbatim
//  743   * @{
//  744   */
//  745 
//  746 /**
//  747   * @brief  Selects the clock source to output on MCO1 pin(PA8) or on MCO2 pin(PC9).
//  748   * @note   PA8/PC9 should be configured in alternate function mode.
//  749   * @param  RCC_MCOx specifies the output direction for the clock source.
//  750   *          This parameter can be one of the following values:
//  751   *            @arg RCC_MCO1: Clock source to output on MCO1 pin(PA8).
//  752   *            @arg RCC_MCO2: Clock source to output on MCO2 pin(PC9).
//  753   * @param  RCC_MCOSource specifies the clock source to output.
//  754   *          This parameter can be one of the following values:
//  755   *            @arg RCC_MCO1SOURCE_HSI: HSI clock selected as MCO1 source
//  756   *            @arg RCC_MCO1SOURCE_LSE: LSE clock selected as MCO1 source
//  757   *            @arg RCC_MCO1SOURCE_HSE: HSE clock selected as MCO1 source
//  758   *            @arg RCC_MCO1SOURCE_PLLCLK: main PLL clock selected as MCO1 source
//  759   *            @arg RCC_MCO2SOURCE_SYSCLK: System clock (SYSCLK) selected as MCO2 source
//  760   *            @arg RCC_MCO2SOURCE_PLLI2SCLK: PLLI2S clock selected as MCO2 source, available for all STM32F4 devices except STM32F410xx
//  761   *            @arg RCC_MCO2SOURCE_I2SCLK: I2SCLK clock selected as MCO2 source, available only for STM32F410Rx devices
//  762   *            @arg RCC_MCO2SOURCE_HSE: HSE clock selected as MCO2 source
//  763   *            @arg RCC_MCO2SOURCE_PLLCLK: main PLL clock selected as MCO2 source
//  764   * @param  RCC_MCODiv specifies the MCOx prescaler.
//  765   *          This parameter can be one of the following values:
//  766   *            @arg RCC_MCODIV_1: no division applied to MCOx clock
//  767   *            @arg RCC_MCODIV_2: division by 2 applied to MCOx clock
//  768   *            @arg RCC_MCODIV_3: division by 3 applied to MCOx clock
//  769   *            @arg RCC_MCODIV_4: division by 4 applied to MCOx clock
//  770   *            @arg RCC_MCODIV_5: division by 5 applied to MCOx clock
//  771   * @note  For STM32F410Rx devices to output I2SCLK clock on MCO2 you should have
//  772   *        at last one of the SPI clocks enabled (SPI1, SPI2 or SPI5).
//  773   * @retval None
//  774   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_RCC_MCOConfig
        THUMB
//  775 void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv)
//  776 {
HAL_RCC_MCOConfig:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        SUB      SP,SP,#+24
          CFI CFA R13+40
        MOVS     R4,R1
        MOVS     R5,R2
//  777   GPIO_InitTypeDef GPIO_InitStruct;
//  778   /* Check the parameters */
//  779   assert_param(IS_RCC_MCO(RCC_MCOx));
//  780   assert_param(IS_RCC_MCODIV(RCC_MCODiv));
//  781   /* RCC_MCO1 */
//  782   if(RCC_MCOx == RCC_MCO1)
        CMP      R0,#+0
        BNE.N    ??HAL_RCC_MCOConfig_0
//  783   {
//  784     assert_param(IS_RCC_MCO1SOURCE(RCC_MCOSource));
//  785 
//  786     /* MCO1 Clock Enable */
//  787     __MCO1_CLK_ENABLE();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable8_6  ;; 0x40023830
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x1
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  788 
//  789     /* Configure the MCO1 pin in alternate function mode */
//  790     GPIO_InitStruct.Pin = MCO1_PIN;
        MOV      R0,#+256
        STR      R0,[SP, #+4]
//  791     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//  792     GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        MOVS     R0,#+3
        STR      R0,[SP, #+16]
//  793     GPIO_InitStruct.Pull = GPIO_NOPULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  794     GPIO_InitStruct.Alternate = GPIO_AF0_MCO;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  795     HAL_GPIO_Init(MCO1_GPIO_PORT, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable8_7  ;; 0x40020000
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//  796 
//  797     /* Mask MCO1 and MCO1PRE[2:0] bits then Select MCO1 clock source and prescaler */
//  798     MODIFY_REG(RCC->CFGR, (RCC_CFGR_MCO1 | RCC_CFGR_MCO1PRE), (RCC_MCOSource | RCC_MCODiv));
        LDR.N    R0,??DataTable8_1  ;; 0x40023808
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x7600000
        ORRS     R4,R4,R1
        ORRS     R4,R5,R4
        STR      R4,[R0, #+0]
        B.N      ??HAL_RCC_MCOConfig_1
//  799 
//  800    /* This RCC MCO1 enable feature is available only on STM32F410xx devices */
//  801 #if defined(RCC_CFGR_MCO1EN)
//  802     __HAL_RCC_MCO1_ENABLE();
//  803 #endif /* RCC_CFGR_MCO1EN */
//  804   }
//  805 #if defined(RCC_CFGR_MCO2)
//  806   else
//  807   {
//  808     assert_param(IS_RCC_MCO2SOURCE(RCC_MCOSource));
//  809 
//  810     /* MCO2 Clock Enable */
//  811     __MCO2_CLK_ENABLE();
??HAL_RCC_MCOConfig_0:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable8_6  ;; 0x40023830
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x4
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
//  812 
//  813     /* Configure the MCO2 pin in alternate function mode */
//  814     GPIO_InitStruct.Pin = MCO2_PIN;
        MOV      R0,#+512
        STR      R0,[SP, #+4]
//  815     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        MOVS     R0,#+2
        STR      R0,[SP, #+8]
//  816     GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        MOVS     R0,#+3
        STR      R0,[SP, #+16]
//  817     GPIO_InitStruct.Pull = GPIO_NOPULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//  818     GPIO_InitStruct.Alternate = GPIO_AF0_MCO;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  819     HAL_GPIO_Init(MCO2_GPIO_PORT, &GPIO_InitStruct);
        ADD      R1,SP,#+4
        LDR.N    R0,??DataTable8_8  ;; 0x40020800
          CFI FunCall HAL_GPIO_Init
        BL       HAL_GPIO_Init
//  820 
//  821     /* Mask MCO2 and MCO2PRE[2:0] bits then Select MCO2 clock source and prescaler */
//  822     MODIFY_REG(RCC->CFGR, (RCC_CFGR_MCO2 | RCC_CFGR_MCO2PRE), (RCC_MCOSource | (RCC_MCODiv << 3U)));
        LDR.N    R0,??DataTable8_1  ;; 0x40023808
        LDR      R1,[R0, #+0]
        BIC      R1,R1,#0xF8000000
        ORRS     R4,R4,R1
        ORRS     R4,R4,R5, LSL #+3
        STR      R4,[R0, #+0]
//  823 
//  824    /* This RCC MCO2 enable feature is available only on STM32F410Rx devices */
//  825 #if defined(RCC_CFGR_MCO2EN)
//  826     __HAL_RCC_MCO2_ENABLE();
//  827 #endif /* RCC_CFGR_MCO2EN */
//  828   }
//  829 #endif /* RCC_CFGR_MCO2 */
//  830 }
??HAL_RCC_MCOConfig_1:
        ADD      SP,SP,#+28
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock3
//  831 
//  832 /**
//  833   * @brief  Enables the Clock Security System.
//  834   * @note   If a failure is detected on the HSE oscillator clock, this oscillator
//  835   *         is automatically disabled and an interrupt is generated to inform the
//  836   *         software about the failure (Clock Security System Interrupt, CSSI),
//  837   *         allowing the MCU to perform rescue operations. The CSSI is linked to
//  838   *         the Cortex-M4 NMI (Non-Maskable Interrupt) exception vector.
//  839   * @retval None
//  840   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_RCC_EnableCSS
          CFI NoCalls
        THUMB
//  841 void HAL_RCC_EnableCSS(void)
//  842 {
//  843   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)ENABLE;
HAL_RCC_EnableCSS:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable8_9  ;; 0x4247004c
        STR      R0,[R1, #+0]
//  844 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  845 
//  846 /**
//  847   * @brief  Disables the Clock Security System.
//  848   * @retval None
//  849   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_RCC_DisableCSS
          CFI NoCalls
        THUMB
//  850 void HAL_RCC_DisableCSS(void)
//  851 {
//  852   *(__IO uint32_t *) RCC_CR_CSSON_BB = (uint32_t)DISABLE;
HAL_RCC_DisableCSS:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable8_9  ;; 0x4247004c
        STR      R0,[R1, #+0]
//  853 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  854 
//  855 /**
//  856   * @brief  Returns the SYSCLK frequency
//  857   *
//  858   * @note   The system frequency computed by this function is not the real
//  859   *         frequency in the chip. It is calculated based on the predefined
//  860   *         constant and the selected clock source:
//  861   * @note     If SYSCLK source is HSI, function returns values based on HSI_VALUE(*)
//  862   * @note     If SYSCLK source is HSE, function returns values based on HSE_VALUE(**)
//  863   * @note     If SYSCLK source is PLL, function returns values based on HSE_VALUE(**)
//  864   *           or HSI_VALUE(*) multiplied/divided by the PLL factors.
//  865   * @note     (*) HSI_VALUE is a constant defined in stm32f4xx_hal_conf.h file (default value
//  866   *               16 MHz) but the real value may vary depending on the variations
//  867   *               in voltage and temperature.
//  868   * @note     (**) HSE_VALUE is a constant defined in stm32f4xx_hal_conf.h file (default value
//  869   *                25 MHz), user has to ensure that HSE_VALUE is same as the real
//  870   *                frequency of the crystal used. Otherwise, this function may
//  871   *                have wrong result.
//  872   *
//  873   * @note   The result of this function could be not correct when using fractional
//  874   *         value for HSE crystal.
//  875   *
//  876   * @note   This function can be used by the user application to compute the
//  877   *         baudrate for the communication peripherals or configure other parameters.
//  878   *
//  879   * @note   Each time SYSCLK changes, this function must be called to update the
//  880   *         right SYSCLK value. Otherwise, any configuration based on this function will be incorrect.
//  881   *
//  882   *
//  883   * @retval SYSCLK frequency
//  884   */
//  885 __weak uint32_t HAL_RCC_GetSysClockFreq(void)
//  886 {
//  887   uint32_t pllm = 0U, pllvco = 0U, pllp = 0U;
//  888   uint32_t sysclockfreq = 0U;
//  889 
//  890   /* Get SYSCLK source -------------------------------------------------------*/
//  891   switch (RCC->CFGR & RCC_CFGR_SWS)
//  892   {
//  893     case RCC_CFGR_SWS_HSI:  /* HSI used as system clock source */
//  894     {
//  895       sysclockfreq = HSI_VALUE;
//  896        break;
//  897     }
//  898     case RCC_CFGR_SWS_HSE:  /* HSE used as system clock  source */
//  899     {
//  900       sysclockfreq = HSE_VALUE;
//  901       break;
//  902     }
//  903     case RCC_CFGR_SWS_PLL:  /* PLL used as system clock  source */
//  904     {
//  905       /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
//  906       SYSCLK = PLL_VCO / PLLP */
//  907       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
//  908       if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
//  909       {
//  910         /* HSE used as PLL clock source */
//  911         pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
//  912       }
//  913       else
//  914       {
//  915         /* HSI used as PLL clock source */
//  916         pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
//  917       }
//  918       pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> RCC_PLLCFGR_PLLP_Pos) + 1U) *2U);
//  919 
//  920       sysclockfreq = pllvco/pllp;
//  921       break;
//  922     }
//  923     default:
//  924     {
//  925       sysclockfreq = HSI_VALUE;
//  926       break;
//  927     }
//  928   }
//  929   return sysclockfreq;
//  930 }
//  931 
//  932 /**
//  933   * @brief  Returns the HCLK frequency
//  934   * @note   Each time HCLK changes, this function must be called to update the
//  935   *         right HCLK value. Otherwise, any configuration based on this function will be incorrect.
//  936   *
//  937   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
//  938   *         and updated within this function
//  939   * @retval HCLK frequency
//  940   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_RCC_GetHCLKFreq
          CFI NoCalls
        THUMB
//  941 uint32_t HAL_RCC_GetHCLKFreq(void)
//  942 {
//  943   return SystemCoreClock;
HAL_RCC_GetHCLKFreq:
        LDR.N    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  944 }
          CFI EndBlock cfiBlock6
//  945 
//  946 /**
//  947   * @brief  Returns the PCLK1 frequency
//  948   * @note   Each time PCLK1 changes, this function must be called to update the
//  949   *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
//  950   * @retval PCLK1 frequency
//  951   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_RCC_GetPCLK1Freq
        THUMB
//  952 uint32_t HAL_RCC_GetPCLK1Freq(void)
//  953 {
HAL_RCC_GetPCLK1Freq:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  954   /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
//  955   return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1)>> RCC_CFGR_PPRE1_Pos]);
          CFI FunCall HAL_RCC_GetHCLKFreq
        BL       HAL_RCC_GetHCLKFreq
        LDR.N    R1,??DataTable8_10
        LDR.N    R2,??DataTable8_1  ;; 0x40023808
        LDR      R2,[R2, #+0]
        UBFX     R2,R2,#+10,#+3
        LDRB     R1,[R1, R2]
        LSRS     R0,R0,R1
        POP      {R1,PC}          ;; return
//  956 }
          CFI EndBlock cfiBlock7
//  957 
//  958 /**
//  959   * @brief  Returns the PCLK2 frequency
//  960   * @note   Each time PCLK2 changes, this function must be called to update the
//  961   *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
//  962   * @retval PCLK2 frequency
//  963   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_RCC_GetPCLK2Freq
        THUMB
//  964 uint32_t HAL_RCC_GetPCLK2Freq(void)
//  965 {
HAL_RCC_GetPCLK2Freq:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  966   /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
//  967   return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2)>> RCC_CFGR_PPRE2_Pos]);
          CFI FunCall HAL_RCC_GetHCLKFreq
        BL       HAL_RCC_GetHCLKFreq
        LDR.N    R1,??DataTable8_10
        LDR.N    R2,??DataTable8_1  ;; 0x40023808
        LDR      R2,[R2, #+0]
        UBFX     R2,R2,#+13,#+3
        LDRB     R1,[R1, R2]
        LSRS     R0,R0,R1
        POP      {R1,PC}          ;; return
//  968 }
          CFI EndBlock cfiBlock8
//  969 
//  970 /**
//  971   * @brief  Configures the RCC_OscInitStruct according to the internal
//  972   * RCC configuration registers.
//  973   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that
//  974   * will be configured.
//  975   * @retval None
//  976   */
//  977 __weak void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
//  978 {
//  979   /* Set all possible values for the Oscillator type parameter ---------------*/
//  980   RCC_OscInitStruct->OscillatorType = RCC_OSCILLATORTYPE_HSE | RCC_OSCILLATORTYPE_HSI | RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI;
//  981 
//  982   /* Get the HSE configuration -----------------------------------------------*/
//  983   if((RCC->CR &RCC_CR_HSEBYP) == RCC_CR_HSEBYP)
//  984   {
//  985     RCC_OscInitStruct->HSEState = RCC_HSE_BYPASS;
//  986   }
//  987   else if((RCC->CR &RCC_CR_HSEON) == RCC_CR_HSEON)
//  988   {
//  989     RCC_OscInitStruct->HSEState = RCC_HSE_ON;
//  990   }
//  991   else
//  992   {
//  993     RCC_OscInitStruct->HSEState = RCC_HSE_OFF;
//  994   }
//  995 
//  996   /* Get the HSI configuration -----------------------------------------------*/
//  997   if((RCC->CR &RCC_CR_HSION) == RCC_CR_HSION)
//  998   {
//  999     RCC_OscInitStruct->HSIState = RCC_HSI_ON;
// 1000   }
// 1001   else
// 1002   {
// 1003     RCC_OscInitStruct->HSIState = RCC_HSI_OFF;
// 1004   }
// 1005 
// 1006   RCC_OscInitStruct->HSICalibrationValue = (uint32_t)((RCC->CR &RCC_CR_HSITRIM) >> RCC_CR_HSITRIM_Pos);
// 1007 
// 1008   /* Get the LSE configuration -----------------------------------------------*/
// 1009   if((RCC->BDCR &RCC_BDCR_LSEBYP) == RCC_BDCR_LSEBYP)
// 1010   {
// 1011     RCC_OscInitStruct->LSEState = RCC_LSE_BYPASS;
// 1012   }
// 1013   else if((RCC->BDCR &RCC_BDCR_LSEON) == RCC_BDCR_LSEON)
// 1014   {
// 1015     RCC_OscInitStruct->LSEState = RCC_LSE_ON;
// 1016   }
// 1017   else
// 1018   {
// 1019     RCC_OscInitStruct->LSEState = RCC_LSE_OFF;
// 1020   }
// 1021 
// 1022   /* Get the LSI configuration -----------------------------------------------*/
// 1023   if((RCC->CSR &RCC_CSR_LSION) == RCC_CSR_LSION)
// 1024   {
// 1025     RCC_OscInitStruct->LSIState = RCC_LSI_ON;
// 1026   }
// 1027   else
// 1028   {
// 1029     RCC_OscInitStruct->LSIState = RCC_LSI_OFF;
// 1030   }
// 1031 
// 1032   /* Get the PLL configuration -----------------------------------------------*/
// 1033   if((RCC->CR &RCC_CR_PLLON) == RCC_CR_PLLON)
// 1034   {
// 1035     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_ON;
// 1036   }
// 1037   else
// 1038   {
// 1039     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_OFF;
// 1040   }
// 1041   RCC_OscInitStruct->PLL.PLLSource = (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
// 1042   RCC_OscInitStruct->PLL.PLLM = (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM);
// 1043   RCC_OscInitStruct->PLL.PLLN = (uint32_t)((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
// 1044   RCC_OscInitStruct->PLL.PLLP = (uint32_t)((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) + RCC_PLLCFGR_PLLP_0) << 1U) >> RCC_PLLCFGR_PLLP_Pos);
// 1045   RCC_OscInitStruct->PLL.PLLQ = (uint32_t)((RCC->PLLCFGR & RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PLLQ_Pos);
// 1046 }
// 1047 
// 1048 /**
// 1049   * @brief  Configures the RCC_ClkInitStruct according to the internal
// 1050   * RCC configuration registers.
// 1051   * @param  RCC_ClkInitStruct pointer to an RCC_ClkInitTypeDef structure that
// 1052   * will be configured.
// 1053   * @param  pFLatency Pointer on the Flash Latency.
// 1054   * @retval None
// 1055   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_RCC_GetClockConfig
          CFI NoCalls
        THUMB
// 1056 void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t *pFLatency)
// 1057 {
// 1058   /* Set all possible values for the Clock type parameter --------------------*/
// 1059   RCC_ClkInitStruct->ClockType = RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
HAL_RCC_GetClockConfig:
        MOVS     R2,#+15
        STR      R2,[R0, #+0]
// 1060 
// 1061   /* Get the SYSCLK configuration --------------------------------------------*/
// 1062   RCC_ClkInitStruct->SYSCLKSource = (uint32_t)(RCC->CFGR & RCC_CFGR_SW);
        LDR.N    R2,??DataTable8_1  ;; 0x40023808
        LDR      R3,[R2, #+0]
        ANDS     R3,R3,#0x3
        STR      R3,[R0, #+4]
// 1063 
// 1064   /* Get the HCLK configuration ----------------------------------------------*/
// 1065   RCC_ClkInitStruct->AHBCLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_HPRE);
        LDR      R3,[R2, #+0]
        ANDS     R3,R3,#0xF0
        STR      R3,[R0, #+8]
// 1066 
// 1067   /* Get the APB1 configuration ----------------------------------------------*/
// 1068   RCC_ClkInitStruct->APB1CLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_PPRE1);
        LDR      R3,[R2, #+0]
        ANDS     R3,R3,#0x1C00
        STR      R3,[R0, #+12]
// 1069 
// 1070   /* Get the APB2 configuration ----------------------------------------------*/
// 1071   RCC_ClkInitStruct->APB2CLKDivider = (uint32_t)((RCC->CFGR & RCC_CFGR_PPRE2) >> 3U);
        LDR      R2,[R2, #+0]
        LSRS     R2,R2,#+3
        ANDS     R2,R2,#0x1C00
        STR      R2,[R0, #+16]
// 1072 
// 1073   /* Get the Flash Wait State (Latency) configuration ------------------------*/
// 1074   *pFLatency = (uint32_t)(FLASH->ACR & FLASH_ACR_LATENCY);
        LDR.N    R0,??DataTable8  ;; 0x40023c00
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x7
        STR      R0,[R1, #+0]
// 1075 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_RCC_NMI_IRQHandler
        THUMB
HAL_RCC_NMI_IRQHandler:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR.N    R0,??DataTable8_11  ;; 0x4002380c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??HAL_RCC_NMI_IRQHandler_0
          CFI FunCall HAL_RCC_CSSCallback
        BL       HAL_RCC_CSSCallback
        MOVS     R0,#+128
        LDR.N    R1,??DataTable8_12  ;; 0x4002380e
        STRB     R0,[R1, #+0]
??HAL_RCC_NMI_IRQHandler_0:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DATA32
        DC32     0x40023c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DATA32
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DATA32
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DATA32
        DC32     AHBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DATA32
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DATA32
        DC32     uwTickPrio

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DATA32
        DC32     0x40023830

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DATA32
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DATA32
        DC32     0x40020800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DATA32
        DC32     0x4247004c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DATA32
        DC32     APBPrescTable

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DATA32
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DATA32
        DC32     0x4002380e

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_RCC_GetSysClockFreq
        THUMB
HAL_RCC_GetSysClockFreq:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R0,#+0
        MOVS     R0,#+0
        MOVS     R0,#+0
        MOVS     R0,#+0
        LDR.N    R0,??HAL_RCC_GetSysClockFreq_0  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xC
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_GetSysClockFreq_1
        CMP      R0,#+4
        BEQ.N    ??HAL_RCC_GetSysClockFreq_2
        CMP      R0,#+8
        BEQ.N    ??HAL_RCC_GetSysClockFreq_3
        B.N      ??HAL_RCC_GetSysClockFreq_4
??HAL_RCC_GetSysClockFreq_1:
        LDR.N    R0,??HAL_RCC_GetSysClockFreq_0+0x4  ;; 0xf42400
        B.N      ??HAL_RCC_GetSysClockFreq_5
??HAL_RCC_GetSysClockFreq_2:
        LDR.N    R0,??HAL_RCC_GetSysClockFreq_0+0x8  ;; 0x17d7840
        B.N      ??HAL_RCC_GetSysClockFreq_5
??HAL_RCC_GetSysClockFreq_3:
        LDR.N    R4,??HAL_RCC_GetSysClockFreq_0+0xC  ;; 0x40023804
        LDR      R2,[R4, #+0]
        ANDS     R2,R2,#0x3F
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+9
        BPL.N    ??HAL_RCC_GetSysClockFreq_6
        LDR      R0,[R4, #+0]
        UBFX     R0,R0,#+6,#+9
        LDR.N    R1,??HAL_RCC_GetSysClockFreq_0+0x8  ;; 0x17d7840
        UMULL    R0,R1,R1,R0
        MOVS     R3,#+0
          CFI FunCall __aeabi_uldivmod
        BL       __aeabi_uldivmod
        B.N      ??HAL_RCC_GetSysClockFreq_7
??HAL_RCC_GetSysClockFreq_6:
        LDR      R0,[R4, #+0]
        UBFX     R0,R0,#+6,#+9
        LDR.N    R1,??HAL_RCC_GetSysClockFreq_0+0x4  ;; 0xf42400
        UMULL    R0,R1,R1,R0
        MOVS     R3,#+0
          CFI FunCall __aeabi_uldivmod
        BL       __aeabi_uldivmod
??HAL_RCC_GetSysClockFreq_7:
        LDR      R1,[R4, #+0]
        UBFX     R1,R1,#+16,#+2
        ADDS     R1,R1,#+1
        LSLS     R1,R1,#+1
        UDIV     R0,R0,R1
        B.N      ??HAL_RCC_GetSysClockFreq_5
??HAL_RCC_GetSysClockFreq_4:
        LDR.N    R0,??HAL_RCC_GetSysClockFreq_0+0x4  ;; 0xf42400
??HAL_RCC_GetSysClockFreq_5:
        POP      {R4,PC}          ;; return
        DATA
??HAL_RCC_GetSysClockFreq_0:
        DATA32
        DC32     0x40023808
        DC32     0xf42400
        DC32     0x17d7840
        DC32     0x40023804
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function HAL_RCC_GetOscConfig
          CFI NoCalls
        THUMB
HAL_RCC_GetOscConfig:
        MOVS     R1,#+15
        STR      R1,[R0, #+0]
        LDR.N    R1,??HAL_RCC_GetOscConfig_0  ;; 0x40023800
        LDR      R2,[R1, #+0]
        LSLS     R2,R2,#+13
        BPL.N    ??HAL_RCC_GetOscConfig_1
        MOVS     R2,#+327680
        STR      R2,[R0, #+4]
        B.N      ??HAL_RCC_GetOscConfig_2
??HAL_RCC_GetOscConfig_1:
        LDR      R2,[R1, #+0]
        LSLS     R2,R2,#+15
        BPL.N    ??HAL_RCC_GetOscConfig_3
        MOVS     R2,#+65536
        STR      R2,[R0, #+4]
        B.N      ??HAL_RCC_GetOscConfig_2
??HAL_RCC_GetOscConfig_3:
        MOVS     R2,#+0
        STR      R2,[R0, #+4]
??HAL_RCC_GetOscConfig_2:
        LDR      R2,[R1, #+0]
        LSLS     R2,R2,#+31
        BPL.N    ??HAL_RCC_GetOscConfig_4
        MOVS     R2,#+1
        STR      R2,[R0, #+12]
        B.N      ??HAL_RCC_GetOscConfig_5
??HAL_RCC_GetOscConfig_4:
        MOVS     R2,#+0
        STR      R2,[R0, #+12]
??HAL_RCC_GetOscConfig_5:
        LDR      R2,[R1, #+0]
        UBFX     R2,R2,#+3,#+5
        STR      R2,[R0, #+16]
        LDR.N    R2,??HAL_RCC_GetOscConfig_0+0x4  ;; 0x40023870
        LDR      R3,[R2, #+0]
        LSLS     R3,R3,#+29
        BPL.N    ??HAL_RCC_GetOscConfig_6
        MOVS     R2,#+5
        STR      R2,[R0, #+8]
        B.N      ??HAL_RCC_GetOscConfig_7
??HAL_RCC_GetOscConfig_6:
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BPL.N    ??HAL_RCC_GetOscConfig_8
        MOVS     R2,#+1
        STR      R2,[R0, #+8]
        B.N      ??HAL_RCC_GetOscConfig_7
??HAL_RCC_GetOscConfig_8:
        MOVS     R2,#+0
        STR      R2,[R0, #+8]
??HAL_RCC_GetOscConfig_7:
        LDR.N    R2,??HAL_RCC_GetOscConfig_0+0x8  ;; 0x40023874
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BPL.N    ??HAL_RCC_GetOscConfig_9
        MOVS     R2,#+1
        STR      R2,[R0, #+20]
        B.N      ??HAL_RCC_GetOscConfig_10
??HAL_RCC_GetOscConfig_9:
        MOVS     R2,#+0
        STR      R2,[R0, #+20]
??HAL_RCC_GetOscConfig_10:
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+7
        BPL.N    ??HAL_RCC_GetOscConfig_11
        MOVS     R1,#+2
        STR      R1,[R0, #+24]
        B.N      ??HAL_RCC_GetOscConfig_12
??HAL_RCC_GetOscConfig_11:
        MOVS     R1,#+1
        STR      R1,[R0, #+24]
??HAL_RCC_GetOscConfig_12:
        LDR.N    R1,??HAL_RCC_GetOscConfig_0+0xC  ;; 0x40023804
        LDR      R2,[R1, #+0]
        ANDS     R2,R2,#0x400000
        STR      R2,[R0, #+28]
        LDR      R2,[R1, #+0]
        ANDS     R2,R2,#0x3F
        STR      R2,[R0, #+32]
        LDR      R2,[R1, #+0]
        UBFX     R2,R2,#+6,#+9
        STR      R2,[R0, #+36]
        LDR      R2,[R1, #+0]
        ANDS     R2,R2,#0x30000
        ADDS     R2,R2,#+65536
        LSRS     R2,R2,#+15
        STR      R2,[R0, #+40]
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        STR      R1,[R0, #+44]
        BX       LR               ;; return
        DATA
??HAL_RCC_GetOscConfig_0:
        DATA32
        DC32     0x40023800
        DC32     0x40023870
        DC32     0x40023874
        DC32     0x40023804
          CFI EndBlock cfiBlock12
// 1076 
// 1077 /**
// 1078   * @brief This function handles the RCC CSS interrupt request.
// 1079   * @note This API should be called under the NMI_Handler().
// 1080   * @retval None
// 1081   */
// 1082 void HAL_RCC_NMI_IRQHandler(void)
// 1083 {
// 1084   /* Check RCC CSSF flag  */
// 1085   if(__HAL_RCC_GET_IT(RCC_IT_CSS))
// 1086   {
// 1087     /* RCC Clock Security System interrupt user callback */
// 1088     HAL_RCC_CSSCallback();
// 1089 
// 1090     /* Clear RCC CSS pending bit */
// 1091     __HAL_RCC_CLEAR_IT(RCC_IT_CSS);
// 1092   }
// 1093 }
// 1094 
// 1095 /**
// 1096   * @brief  RCC Clock Security System interrupt callback
// 1097   * @retval None
// 1098   */

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function HAL_RCC_CSSCallback
          CFI NoCalls
        THUMB
// 1099 __weak void HAL_RCC_CSSCallback(void)
// 1100 {
// 1101   /* NOTE : This function Should not be modified, when the callback is needed,
// 1102             the HAL_RCC_CSSCallback could be implemented in the user file
// 1103    */
// 1104 }
HAL_RCC_CSSCallback:
        BX       LR               ;; return
          CFI EndBlock cfiBlock13

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1105 
// 1106 /**
// 1107   * @}
// 1108   */
// 1109 
// 1110 /**
// 1111   * @}
// 1112   */
// 1113 
// 1114 #endif /* HAL_RCC_MODULE_ENABLED */
// 1115 /**
// 1116   * @}
// 1117   */
// 1118 
// 1119 /**
// 1120   * @}
// 1121   */
// 1122 
// 
// 1 952 bytes in section .text
// 
// 662 bytes of CODE memory (+ 1 290 bytes shared)
//
//Errors: none
//Warnings: none
