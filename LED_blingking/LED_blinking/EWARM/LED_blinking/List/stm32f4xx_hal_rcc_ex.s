///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_rcc_ex.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW48C.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_rcc_ex.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_rcc_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_GetTick
        EXTERN HAL_InitTick
        EXTERN SystemCoreClock
        EXTERN uwTickPrio

        PUBLIC HAL_RCCEx_DisablePLLI2S
        PUBLIC HAL_RCCEx_EnablePLLI2S
        PUBLIC HAL_RCCEx_GetPeriphCLKConfig
        PUBLIC HAL_RCCEx_GetPeriphCLKFreq
        PUBLIC HAL_RCCEx_PeriphCLKConfig
        PUBLIC HAL_RCC_DeInit
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_rcc_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_rcc_ex.c
//    4   * @author  MCD Application Team
//    5   * @brief   Extension RCC HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities RCC extension peripheral:
//    8   *           + Extended Peripheral Control functions
//    9   *
//   10   ******************************************************************************
//   11   * @attention
//   12   *
//   13   * Copyright (c) 2017 STMicroelectronics.
//   14   * All rights reserved.
//   15   *
//   16   * This software is licensed under terms that can be found in the LICENSE file in
//   17   * the root directory of this software component.
//   18   * If no LICENSE file comes with this software, it is provided AS-IS.
//   19   ******************************************************************************
//   20   */
//   21 
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "stm32f4xx_hal.h"
//   24 
//   25 /** @addtogroup STM32F4xx_HAL_Driver
//   26   * @{
//   27   */
//   28 
//   29 /** @defgroup RCCEx RCCEx
//   30   * @brief RCCEx HAL module driver
//   31   * @{
//   32   */
//   33 
//   34 #ifdef HAL_RCC_MODULE_ENABLED
//   35 
//   36 /* Private typedef -----------------------------------------------------------*/
//   37 /* Private define ------------------------------------------------------------*/
//   38 /** @addtogroup RCCEx_Private_Constants
//   39   * @{
//   40   */
//   41 /**
//   42   * @}
//   43   */
//   44 /* Private macro -------------------------------------------------------------*/
//   45 /* Private variables ---------------------------------------------------------*/
//   46 /* Private function prototypes -----------------------------------------------*/
//   47 /* Private functions ---------------------------------------------------------*/
//   48 /** @defgroup RCCEx_Exported_Functions RCCEx Exported Functions
//   49   *  @{
//   50   */
//   51 
//   52 /** @defgroup RCCEx_Exported_Functions_Group1 Extended Peripheral Control functions
//   53  *  @brief  Extended Peripheral Control functions
//   54  *
//   55 @verbatim
//   56  ===============================================================================
//   57                 ##### Extended Peripheral Control functions  #####
//   58  ===============================================================================
//   59     [..]
//   60     This subsection provides a set of functions allowing to control the RCC Clocks
//   61     frequencies.
//   62     [..]
//   63     (@) Important note: Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to
//   64         select the RTC clock source; in this case the Backup domain will be reset in
//   65         order to modify the RTC Clock source, as consequence RTC registers (including
//   66         the backup registers) and RCC_BDCR register are set to their reset values.
//   67 
//   68 @endverbatim
//   69   * @{
//   70   */
//   71 
//   72 #if defined(STM32F446xx)
//   73 /**
//   74   * @brief  Initializes the RCC extended peripherals clocks according to the specified
//   75   *         parameters in the RCC_PeriphCLKInitTypeDef.
//   76   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
//   77   *         contains the configuration information for the Extended Peripherals
//   78   *         clocks(I2S, SAI, LTDC RTC and TIM).
//   79   *
//   80   * @note   Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to select
//   81   *         the RTC clock source; in this case the Backup domain will be reset in
//   82   *         order to modify the RTC Clock source, as consequence RTC registers (including
//   83   *         the backup registers) and RCC_BDCR register are set to their reset values.
//   84   *
//   85   * @retval HAL status
//   86   */
//   87 HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
//   88 {
//   89   uint32_t tickstart = 0U;
//   90   uint32_t tmpreg1 = 0U;
//   91   uint32_t plli2sp = 0U;
//   92   uint32_t plli2sq = 0U;
//   93   uint32_t plli2sr = 0U;
//   94   uint32_t pllsaip = 0U;
//   95   uint32_t pllsaiq = 0U;
//   96   uint32_t plli2sused = 0U;
//   97   uint32_t pllsaiused = 0U;
//   98 
//   99   /* Check the peripheral clock selection parameters */
//  100   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
//  101 
//  102   /*------------------------ I2S APB1 configuration --------------------------*/
//  103   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB1) == (RCC_PERIPHCLK_I2S_APB1))
//  104   {
//  105     /* Check the parameters */
//  106     assert_param(IS_RCC_I2SAPB1CLKSOURCE(PeriphClkInit->I2sApb1ClockSelection));
//  107 
//  108     /* Configure I2S Clock source */
//  109     __HAL_RCC_I2S_APB1_CONFIG(PeriphClkInit->I2sApb1ClockSelection);
//  110     /* Enable the PLLI2S when it's used as clock source for I2S */
//  111     if(PeriphClkInit->I2sApb1ClockSelection == RCC_I2SAPB1CLKSOURCE_PLLI2S)
//  112     {
//  113       plli2sused = 1U;
//  114     }
//  115   }
//  116   /*--------------------------------------------------------------------------*/
//  117 
//  118   /*---------------------------- I2S APB2 configuration ----------------------*/
//  119   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB2) == (RCC_PERIPHCLK_I2S_APB2))
//  120   {
//  121     /* Check the parameters */
//  122     assert_param(IS_RCC_I2SAPB2CLKSOURCE(PeriphClkInit->I2sApb2ClockSelection));
//  123 
//  124     /* Configure I2S Clock source */
//  125     __HAL_RCC_I2S_APB2_CONFIG(PeriphClkInit->I2sApb2ClockSelection);
//  126     /* Enable the PLLI2S when it's used as clock source for I2S */
//  127     if(PeriphClkInit->I2sApb2ClockSelection == RCC_I2SAPB2CLKSOURCE_PLLI2S)
//  128     {
//  129       plli2sused = 1U;
//  130     }
//  131   }
//  132   /*--------------------------------------------------------------------------*/
//  133 
//  134   /*--------------------------- SAI1 configuration ---------------------------*/
//  135   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI1) == (RCC_PERIPHCLK_SAI1))
//  136   {
//  137     /* Check the parameters */
//  138     assert_param(IS_RCC_SAI1CLKSOURCE(PeriphClkInit->Sai1ClockSelection));
//  139 
//  140     /* Configure SAI1 Clock source */
//  141     __HAL_RCC_SAI1_CONFIG(PeriphClkInit->Sai1ClockSelection);
//  142     /* Enable the PLLI2S when it's used as clock source for SAI */
//  143     if(PeriphClkInit->Sai1ClockSelection == RCC_SAI1CLKSOURCE_PLLI2S)
//  144     {
//  145       plli2sused = 1U;
//  146     }
//  147     /* Enable the PLLSAI when it's used as clock source for SAI */
//  148     if(PeriphClkInit->Sai1ClockSelection == RCC_SAI1CLKSOURCE_PLLSAI)
//  149     {
//  150       pllsaiused = 1U;
//  151     }
//  152   }
//  153   /*--------------------------------------------------------------------------*/
//  154 
//  155   /*-------------------------- SAI2 configuration ----------------------------*/
//  156   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI2) == (RCC_PERIPHCLK_SAI2))
//  157   {
//  158     /* Check the parameters */
//  159     assert_param(IS_RCC_SAI2CLKSOURCE(PeriphClkInit->Sai2ClockSelection));
//  160 
//  161     /* Configure SAI2 Clock source */
//  162     __HAL_RCC_SAI2_CONFIG(PeriphClkInit->Sai2ClockSelection);
//  163 
//  164     /* Enable the PLLI2S when it's used as clock source for SAI */
//  165     if(PeriphClkInit->Sai2ClockSelection == RCC_SAI2CLKSOURCE_PLLI2S)
//  166     {
//  167       plli2sused = 1U;
//  168     }
//  169     /* Enable the PLLSAI when it's used as clock source for SAI */
//  170     if(PeriphClkInit->Sai2ClockSelection == RCC_SAI2CLKSOURCE_PLLSAI)
//  171     {
//  172       pllsaiused = 1U;
//  173     }
//  174   }
//  175   /*--------------------------------------------------------------------------*/
//  176 
//  177   /*----------------------------- RTC configuration --------------------------*/
//  178   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == (RCC_PERIPHCLK_RTC))
//  179   {
//  180     /* Check for RTC Parameters used to output RTCCLK */
//  181     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
//  182 
//  183     /* Enable Power Clock*/
//  184     __HAL_RCC_PWR_CLK_ENABLE();
//  185 
//  186     /* Enable write access to Backup domain */
//  187     PWR->CR |= PWR_CR_DBP;
//  188 
//  189     /* Get tick */
//  190     tickstart = HAL_GetTick();
//  191 
//  192     while((PWR->CR & PWR_CR_DBP) == RESET)
//  193     {
//  194       if((HAL_GetTick() - tickstart ) > RCC_DBP_TIMEOUT_VALUE)
//  195       {
//  196         return HAL_TIMEOUT;
//  197       }
//  198     }
//  199     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value */
//  200     tmpreg1 = (RCC->BDCR & RCC_BDCR_RTCSEL);
//  201     if((tmpreg1 != 0x00000000U) && ((tmpreg1) != (PeriphClkInit->RTCClockSelection & RCC_BDCR_RTCSEL)))
//  202     {
//  203       /* Store the content of BDCR register before the reset of Backup Domain */
//  204       tmpreg1 = (RCC->BDCR & ~(RCC_BDCR_RTCSEL));
//  205       /* RTC Clock selection can be changed only if the Backup Domain is reset */
//  206       __HAL_RCC_BACKUPRESET_FORCE();
//  207       __HAL_RCC_BACKUPRESET_RELEASE();
//  208       /* Restore the Content of BDCR register */
//  209       RCC->BDCR = tmpreg1;
//  210 
//  211       /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
//  212       if(HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSEON))
//  213       {
//  214         /* Get tick */
//  215         tickstart = HAL_GetTick();
//  216 
//  217         /* Wait till LSE is ready */
//  218         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
//  219         {
//  220           if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
//  221           {
//  222             return HAL_TIMEOUT;
//  223           }
//  224         }
//  225       }
//  226     }
//  227     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
//  228   }
//  229   /*--------------------------------------------------------------------------*/
//  230 
//  231   /*---------------------------- TIM configuration ---------------------------*/
//  232   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_TIM) == (RCC_PERIPHCLK_TIM))
//  233   {
//  234     /* Configure Timer Prescaler */
//  235     __HAL_RCC_TIMCLKPRESCALER(PeriphClkInit->TIMPresSelection);
//  236   }
//  237   /*--------------------------------------------------------------------------*/
//  238 
//  239   /*---------------------------- FMPI2C1 Configuration -----------------------*/
//  240   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_FMPI2C1) == RCC_PERIPHCLK_FMPI2C1)
//  241   {
//  242     /* Check the parameters */
//  243     assert_param(IS_RCC_FMPI2C1CLKSOURCE(PeriphClkInit->Fmpi2c1ClockSelection));
//  244 
//  245     /* Configure the FMPI2C1 clock source */
//  246     __HAL_RCC_FMPI2C1_CONFIG(PeriphClkInit->Fmpi2c1ClockSelection);
//  247   }
//  248   /*--------------------------------------------------------------------------*/
//  249 
//  250   /*------------------------------ CEC Configuration -------------------------*/
//  251   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CEC) == RCC_PERIPHCLK_CEC)
//  252   {
//  253     /* Check the parameters */
//  254     assert_param(IS_RCC_CECCLKSOURCE(PeriphClkInit->CecClockSelection));
//  255 
//  256     /* Configure the CEC clock source */
//  257     __HAL_RCC_CEC_CONFIG(PeriphClkInit->CecClockSelection);
//  258   }
//  259   /*--------------------------------------------------------------------------*/
//  260 
//  261   /*----------------------------- CLK48 Configuration ------------------------*/
//  262   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CLK48) == RCC_PERIPHCLK_CLK48)
//  263   {
//  264     /* Check the parameters */
//  265     assert_param(IS_RCC_CLK48CLKSOURCE(PeriphClkInit->Clk48ClockSelection));
//  266 
//  267     /* Configure the CLK48 clock source */
//  268     __HAL_RCC_CLK48_CONFIG(PeriphClkInit->Clk48ClockSelection);
//  269 
//  270     /* Enable the PLLSAI when it's used as clock source for CLK48 */
//  271     if(PeriphClkInit->Clk48ClockSelection == RCC_CLK48CLKSOURCE_PLLSAIP)
//  272     {
//  273       pllsaiused = 1U;
//  274     }
//  275   }
//  276   /*--------------------------------------------------------------------------*/
//  277 
//  278   /*----------------------------- SDIO Configuration -------------------------*/
//  279   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SDIO) == RCC_PERIPHCLK_SDIO)
//  280   {
//  281     /* Check the parameters */
//  282     assert_param(IS_RCC_SDIOCLKSOURCE(PeriphClkInit->SdioClockSelection));
//  283 
//  284     /* Configure the SDIO clock source */
//  285     __HAL_RCC_SDIO_CONFIG(PeriphClkInit->SdioClockSelection);
//  286   }
//  287   /*--------------------------------------------------------------------------*/
//  288 
//  289   /*------------------------------ SPDIFRX Configuration ---------------------*/
//  290   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SPDIFRX) == RCC_PERIPHCLK_SPDIFRX)
//  291   {
//  292     /* Check the parameters */
//  293     assert_param(IS_RCC_SPDIFRXCLKSOURCE(PeriphClkInit->SpdifClockSelection));
//  294 
//  295     /* Configure the SPDIFRX clock source */
//  296     __HAL_RCC_SPDIFRX_CONFIG(PeriphClkInit->SpdifClockSelection);
//  297     /* Enable the PLLI2S when it's used as clock source for SPDIFRX */
//  298     if(PeriphClkInit->SpdifClockSelection == RCC_SPDIFRXCLKSOURCE_PLLI2SP)
//  299     {
//  300       plli2sused = 1U;
//  301     }
//  302   }
//  303   /*--------------------------------------------------------------------------*/
//  304 
//  305   /*---------------------------- PLLI2S Configuration ------------------------*/
//  306   /* PLLI2S is configured when a peripheral will use it as source clock : SAI1, SAI2, I2S on APB1,
//  307      I2S on APB2 or SPDIFRX */
//  308   if((plli2sused == 1U) || (PeriphClkInit->PeriphClockSelection == RCC_PERIPHCLK_PLLI2S))
//  309   {
//  310     /* Disable the PLLI2S */
//  311     __HAL_RCC_PLLI2S_DISABLE();
//  312     /* Get tick */
//  313     tickstart = HAL_GetTick();
//  314     /* Wait till PLLI2S is disabled */
//  315     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  != RESET)
//  316     {
//  317       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
//  318       {
//  319         /* return in case of Timeout detected */
//  320         return HAL_TIMEOUT;
//  321       }
//  322     }
//  323 
//  324     /* check for common PLLI2S Parameters */
//  325     assert_param(IS_RCC_PLLI2SM_VALUE(PeriphClkInit->PLLI2S.PLLI2SM));
//  326     assert_param(IS_RCC_PLLI2SN_VALUE(PeriphClkInit->PLLI2S.PLLI2SN));
//  327 
//  328     /*------ In Case of PLLI2S is selected as source clock for I2S -----------*/
//  329     if(((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB1) == RCC_PERIPHCLK_I2S_APB1) && (PeriphClkInit->I2sApb1ClockSelection == RCC_I2SAPB1CLKSOURCE_PLLI2S)) ||
//  330        ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB2) == RCC_PERIPHCLK_I2S_APB2) && (PeriphClkInit->I2sApb2ClockSelection == RCC_I2SAPB2CLKSOURCE_PLLI2S)))
//  331     {
//  332       /* check for Parameters */
//  333       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
//  334 
//  335       /* Read PLLI2SP/PLLI2SQ value from PLLI2SCFGR register (this value is not needed for I2S configuration) */
//  336       plli2sp = ((((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SP) >> RCC_PLLI2SCFGR_PLLI2SP_Pos) + 1U) << 1U);
//  337       plli2sq = ((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SQ) >> RCC_PLLI2SCFGR_PLLI2SQ_Pos);
//  338       /* Configure the PLLI2S division factors */
//  339       /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM) */
//  340       /* I2SCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SR */
//  341       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN , plli2sp, plli2sq, PeriphClkInit->PLLI2S.PLLI2SR);
//  342     }
//  343 
//  344     /*------- In Case of PLLI2S is selected as source clock for SAI ----------*/
//  345     if(((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI1) == RCC_PERIPHCLK_SAI1) && (PeriphClkInit->Sai1ClockSelection == RCC_SAI1CLKSOURCE_PLLI2S)) ||
//  346        ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI2) == RCC_PERIPHCLK_SAI2) && (PeriphClkInit->Sai2ClockSelection == RCC_SAI2CLKSOURCE_PLLI2S)))
//  347     {
//  348       /* Check for PLLI2S Parameters */
//  349       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
//  350       /* Check for PLLI2S/DIVQ parameters */
//  351       assert_param(IS_RCC_PLLI2S_DIVQ_VALUE(PeriphClkInit->PLLI2SDivQ));
//  352 
//  353       /* Read PLLI2SP/PLLI2SR value from PLLI2SCFGR register (this value is not needed for SAI configuration) */
//  354       plli2sp = ((((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SP) >> RCC_PLLI2SCFGR_PLLI2SP_Pos) + 1U) << 1U);
//  355       plli2sr = ((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
//  356       /* Configure the PLLI2S division factors */
//  357       /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
//  358       /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
//  359       /* SAI_CLK(first level) = PLLI2S_VCO Output/PLLI2SQ */
//  360       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN , plli2sp, PeriphClkInit->PLLI2S.PLLI2SQ, plli2sr);
//  361 
//  362       /* SAI_CLK_x = SAI_CLK(first level)/PLLI2SDIVQ */
//  363       __HAL_RCC_PLLI2S_PLLSAICLKDIVQ_CONFIG(PeriphClkInit->PLLI2SDivQ);
//  364     }
//  365 
//  366     /*------ In Case of PLLI2S is selected as source clock for SPDIFRX -------*/
//  367     if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SPDIFRX) == RCC_PERIPHCLK_SPDIFRX) && (PeriphClkInit->SpdifClockSelection == RCC_SPDIFRXCLKSOURCE_PLLI2SP))
//  368     {
//  369       /* check for Parameters */
//  370       assert_param(IS_RCC_PLLI2SP_VALUE(PeriphClkInit->PLLI2S.PLLI2SP));
//  371       /* Read PLLI2SR value from PLLI2SCFGR register (this value is not need for SAI configuration) */
//  372       plli2sq = ((((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SP) >> RCC_PLLI2SCFGR_PLLI2SP_Pos) + 1U) << 1U);
//  373       plli2sr = ((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
//  374       /* Configure the PLLI2S division factors */
//  375       /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM) */
//  376       /* SPDIFRXCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SP */
//  377       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SP, plli2sq, plli2sr);
//  378     }
//  379 
//  380      /*----------------- In Case of PLLI2S is just selected  -----------------*/
//  381     if((PeriphClkInit->PeriphClockSelection & RCC_PERIPHCLK_PLLI2S) == RCC_PERIPHCLK_PLLI2S)
//  382     {
//  383       /* Check for Parameters */
//  384       assert_param(IS_RCC_PLLI2SP_VALUE(PeriphClkInit->PLLI2S.PLLI2SP));
//  385       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
//  386       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
//  387 
//  388       /* Configure the PLLI2S division factors */
//  389       /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM) */
//  390       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SP, PeriphClkInit->PLLI2S.PLLI2SQ, PeriphClkInit->PLLI2S.PLLI2SR);
//  391     }
//  392 
//  393     /* Enable the PLLI2S */
//  394     __HAL_RCC_PLLI2S_ENABLE();
//  395     /* Get tick */
//  396     tickstart = HAL_GetTick();
//  397     /* Wait till PLLI2S is ready */
//  398     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  == RESET)
//  399     {
//  400       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
//  401       {
//  402         /* return in case of Timeout detected */
//  403         return HAL_TIMEOUT;
//  404       }
//  405     }
//  406   }
//  407   /*--------------------------------------------------------------------------*/
//  408 
//  409   /*----------------------------- PLLSAI Configuration -----------------------*/
//  410   /* PLLSAI is configured when a peripheral will use it as source clock : SAI1, SAI2, CLK48 or SDIO */
//  411   if(pllsaiused == 1U)
//  412   {
//  413     /* Disable PLLSAI Clock */
//  414     __HAL_RCC_PLLSAI_DISABLE();
//  415     /* Get tick */
//  416     tickstart = HAL_GetTick();
//  417     /* Wait till PLLSAI is disabled */
//  418     while(__HAL_RCC_PLLSAI_GET_FLAG() != RESET)
//  419     {
//  420       if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
//  421       {
//  422         /* return in case of Timeout detected */
//  423         return HAL_TIMEOUT;
//  424       }
//  425     }
//  426 
//  427     /* Check the PLLSAI division factors */
//  428     assert_param(IS_RCC_PLLSAIM_VALUE(PeriphClkInit->PLLSAI.PLLSAIM));
//  429     assert_param(IS_RCC_PLLSAIN_VALUE(PeriphClkInit->PLLSAI.PLLSAIN));
//  430 
//  431     /*------ In Case of PLLSAI is selected as source clock for SAI -----------*/
//  432     if(((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI1) == RCC_PERIPHCLK_SAI1) && (PeriphClkInit->Sai1ClockSelection == RCC_SAI1CLKSOURCE_PLLSAI)) ||
//  433        ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI2) == RCC_PERIPHCLK_SAI2) && (PeriphClkInit->Sai2ClockSelection == RCC_SAI2CLKSOURCE_PLLSAI)))
//  434     {
//  435       /* check for PLLSAIQ Parameter */
//  436       assert_param(IS_RCC_PLLSAIQ_VALUE(PeriphClkInit->PLLSAI.PLLSAIQ));
//  437       /* check for PLLSAI/DIVQ Parameter */
//  438       assert_param(IS_RCC_PLLSAI_DIVQ_VALUE(PeriphClkInit->PLLSAIDivQ));
//  439 
//  440       /* Read PLLSAIP value from PLLSAICFGR register (this value is not needed for SAI configuration) */
//  441       pllsaip = ((((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIP) >> RCC_PLLSAICFGR_PLLSAIP_Pos) + 1U) << 1U);
//  442       /* PLLSAI_VCO Input  = PLL_SOURCE/PLLM */
//  443       /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN */
//  444       /* SAI_CLK(first level) = PLLSAI_VCO Output/PLLSAIQ */
//  445       __HAL_RCC_PLLSAI_CONFIG(PeriphClkInit->PLLSAI.PLLSAIM, PeriphClkInit->PLLSAI.PLLSAIN , pllsaip, PeriphClkInit->PLLSAI.PLLSAIQ, 0U);
//  446 
//  447       /* SAI_CLK_x = SAI_CLK(first level)/PLLSAIDIVQ */
//  448       __HAL_RCC_PLLSAI_PLLSAICLKDIVQ_CONFIG(PeriphClkInit->PLLSAIDivQ);
//  449     }
//  450 
//  451     /*------ In Case of PLLSAI is selected as source clock for CLK48 ---------*/
//  452     /* In Case of PLLI2S is selected as source clock for CLK48 */
//  453     if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CLK48) == RCC_PERIPHCLK_CLK48) && (PeriphClkInit->Clk48ClockSelection == RCC_CLK48CLKSOURCE_PLLSAIP))
//  454     {
//  455       /* check for Parameters */
//  456       assert_param(IS_RCC_PLLSAIP_VALUE(PeriphClkInit->PLLSAI.PLLSAIP));
//  457       /* Read PLLSAIQ value from PLLI2SCFGR register (this value is not need for SAI configuration) */
//  458       pllsaiq = ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> RCC_PLLSAICFGR_PLLSAIQ_Pos);
//  459       /* Configure the PLLSAI division factors */
//  460       /* PLLSAI_VCO = f(VCO clock) = f(PLLSAI clock input) * (PLLI2SN/PLLSAIM) */
//  461       /* 48CLK = f(PLLSAI clock output) = f(VCO clock) / PLLSAIP */
//  462       __HAL_RCC_PLLSAI_CONFIG(PeriphClkInit->PLLSAI.PLLSAIM, PeriphClkInit->PLLSAI.PLLSAIN , PeriphClkInit->PLLSAI.PLLSAIP, pllsaiq, 0U);
//  463     }
//  464 
//  465     /* Enable PLLSAI Clock */
//  466     __HAL_RCC_PLLSAI_ENABLE();
//  467     /* Get tick */
//  468     tickstart = HAL_GetTick();
//  469     /* Wait till PLLSAI is ready */
//  470     while(__HAL_RCC_PLLSAI_GET_FLAG() == RESET)
//  471     {
//  472       if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
//  473       {
//  474         /* return in case of Timeout detected */
//  475         return HAL_TIMEOUT;
//  476       }
//  477     }
//  478   }
//  479   return HAL_OK;
//  480 }
//  481 
//  482 /**
//  483   * @brief  Get the RCC_PeriphCLKInitTypeDef according to the internal
//  484   *         RCC configuration registers.
//  485   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
//  486   *         will be configured.
//  487   * @retval None
//  488   */
//  489 void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
//  490 {
//  491   uint32_t tempreg;
//  492 
//  493   /* Set all possible values for the extended clock type parameter------------*/
//  494   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_I2S_APB1 | RCC_PERIPHCLK_I2S_APB2 |\ 
//  495                                         RCC_PERIPHCLK_SAI1     | RCC_PERIPHCLK_SAI2     |\ 
//  496                                         RCC_PERIPHCLK_TIM      | RCC_PERIPHCLK_RTC      |\ 
//  497                                         RCC_PERIPHCLK_CEC      | RCC_PERIPHCLK_FMPI2C1  |\ 
//  498                                         RCC_PERIPHCLK_CLK48     | RCC_PERIPHCLK_SDIO     |\ 
//  499                                         RCC_PERIPHCLK_SPDIFRX;
//  500 
//  501   /* Get the PLLI2S Clock configuration --------------------------------------*/
//  502   PeriphClkInit->PLLI2S.PLLI2SM = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM) >> RCC_PLLI2SCFGR_PLLI2SM_Pos);
//  503   PeriphClkInit->PLLI2S.PLLI2SN = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> RCC_PLLI2SCFGR_PLLI2SN_Pos);
//  504   PeriphClkInit->PLLI2S.PLLI2SP = (uint32_t)((((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SP) >> RCC_PLLI2SCFGR_PLLI2SP_Pos) + 1U) << 1U);
//  505   PeriphClkInit->PLLI2S.PLLI2SQ = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SQ) >> RCC_PLLI2SCFGR_PLLI2SQ_Pos);
//  506   PeriphClkInit->PLLI2S.PLLI2SR = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
//  507   /* Get the PLLSAI Clock configuration --------------------------------------*/
//  508   PeriphClkInit->PLLSAI.PLLSAIM = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIM) >> RCC_PLLSAICFGR_PLLSAIM_Pos);
//  509   PeriphClkInit->PLLSAI.PLLSAIN = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIN) >> RCC_PLLSAICFGR_PLLSAIN_Pos);
//  510   PeriphClkInit->PLLSAI.PLLSAIP = (uint32_t)((((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIP) >> RCC_PLLSAICFGR_PLLSAIP_Pos) + 1U) << 1U);
//  511   PeriphClkInit->PLLSAI.PLLSAIQ = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> RCC_PLLSAICFGR_PLLSAIQ_Pos);
//  512   /* Get the PLLSAI/PLLI2S division factors ----------------------------------*/
//  513   PeriphClkInit->PLLI2SDivQ = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLI2SDIVQ) >> RCC_DCKCFGR_PLLI2SDIVQ_Pos);
//  514   PeriphClkInit->PLLSAIDivQ = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLSAIDIVQ) >> RCC_DCKCFGR_PLLSAIDIVQ_Pos);
//  515 
//  516   /* Get the SAI1 clock configuration ----------------------------------------*/
//  517   PeriphClkInit->Sai1ClockSelection = __HAL_RCC_GET_SAI1_SOURCE();
//  518 
//  519   /* Get the SAI2 clock configuration ----------------------------------------*/
//  520   PeriphClkInit->Sai2ClockSelection = __HAL_RCC_GET_SAI2_SOURCE();
//  521 
//  522   /* Get the I2S APB1 clock configuration ------------------------------------*/
//  523   PeriphClkInit->I2sApb1ClockSelection = __HAL_RCC_GET_I2S_APB1_SOURCE();
//  524 
//  525   /* Get the I2S APB2 clock configuration ------------------------------------*/
//  526   PeriphClkInit->I2sApb2ClockSelection = __HAL_RCC_GET_I2S_APB2_SOURCE();
//  527 
//  528   /* Get the RTC Clock configuration -----------------------------------------*/
//  529   tempreg = (RCC->CFGR & RCC_CFGR_RTCPRE);
//  530   PeriphClkInit->RTCClockSelection = (uint32_t)((tempreg) | (RCC->BDCR & RCC_BDCR_RTCSEL));
//  531 
//  532   /* Get the CEC clock configuration -----------------------------------------*/
//  533   PeriphClkInit->CecClockSelection = __HAL_RCC_GET_CEC_SOURCE();
//  534 
//  535   /* Get the FMPI2C1 clock configuration -------------------------------------*/
//  536   PeriphClkInit->Fmpi2c1ClockSelection = __HAL_RCC_GET_FMPI2C1_SOURCE();
//  537 
//  538   /* Get the CLK48 clock configuration ----------------------------------------*/
//  539   PeriphClkInit->Clk48ClockSelection = __HAL_RCC_GET_CLK48_SOURCE();
//  540 
//  541   /* Get the SDIO clock configuration ----------------------------------------*/
//  542   PeriphClkInit->SdioClockSelection = __HAL_RCC_GET_SDIO_SOURCE();
//  543 
//  544   /* Get the SPDIFRX clock configuration -------------------------------------*/
//  545   PeriphClkInit->SpdifClockSelection = __HAL_RCC_GET_SPDIFRX_SOURCE();
//  546 
//  547   /* Get the TIM Prescaler configuration -------------------------------------*/
//  548   if ((RCC->DCKCFGR & RCC_DCKCFGR_TIMPRE) == RESET)
//  549   {
//  550     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_DESACTIVATED;
//  551   }
//  552   else
//  553   {
//  554     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_ACTIVATED;
//  555   }
//  556 }
//  557 
//  558 /**
//  559   * @brief  Return the peripheral clock frequency for a given peripheral(SAI..)
//  560   * @note   Return 0 if peripheral clock identifier not managed by this API
//  561   * @param  PeriphClk Peripheral clock identifier
//  562   *         This parameter can be one of the following values:
//  563   *            @arg RCC_PERIPHCLK_SAI1: SAI1 peripheral clock
//  564   *            @arg RCC_PERIPHCLK_SAI2: SAI2 peripheral clock
//  565   *            @arg RCC_PERIPHCLK_I2S_APB1: I2S APB1 peripheral clock
//  566   *            @arg RCC_PERIPHCLK_I2S_APB2: I2S APB2 peripheral clock
//  567   * @retval Frequency in KHz
//  568   */
//  569 uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
//  570 {
//  571   uint32_t tmpreg1 = 0U;
//  572   /* This variable used to store the SAI clock frequency (value in Hz) */
//  573   uint32_t frequency = 0U;
//  574   /* This variable used to store the VCO Input (value in Hz) */
//  575   uint32_t vcoinput = 0U;
//  576   /* This variable used to store the SAI clock source */
//  577   uint32_t saiclocksource = 0U;
//  578   uint32_t srcclk = 0U;
//  579   /* This variable used to store the VCO Output (value in Hz) */
//  580   uint32_t vcooutput = 0U;
//  581   switch (PeriphClk)
//  582   {
//  583   case RCC_PERIPHCLK_SAI1:
//  584   case RCC_PERIPHCLK_SAI2:
//  585     {
//  586       saiclocksource = RCC->DCKCFGR;
//  587       saiclocksource &= (RCC_DCKCFGR_SAI1SRC | RCC_DCKCFGR_SAI2SRC);
//  588       switch (saiclocksource)
//  589       {
//  590       case 0U: /* PLLSAI is the clock source for SAI*/
//  591         {
//  592           /* Configure the PLLSAI division factor */
//  593           /* PLLSAI_VCO Input  = PLL_SOURCE/PLLSAIM */
//  594           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSI)
//  595           {
//  596             /* In Case the PLL Source is HSI (Internal Clock) */
//  597             vcoinput = (HSI_VALUE / (uint32_t)(RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIM));
//  598           }
//  599           else
//  600           {
//  601             /* In Case the PLL Source is HSE (External Clock) */
//  602             vcoinput = ((HSE_VALUE / (uint32_t)(RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIM)));
//  603           }
//  604           /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN */
//  605           /* SAI_CLK(first level) = PLLSAI_VCO Output/PLLSAIQ */
//  606           tmpreg1 = (RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> 24U;
//  607           frequency = (vcoinput * ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIN) >> 6U))/(tmpreg1);
//  608 
//  609           /* SAI_CLK_x = SAI_CLK(first level)/PLLSAIDIVQ */
//  610           tmpreg1 = (((RCC->DCKCFGR & RCC_DCKCFGR_PLLSAIDIVQ) >> 8U) + 1U);
//  611           frequency = frequency/(tmpreg1);
//  612           break;
//  613         }
//  614       case RCC_DCKCFGR_SAI1SRC_0: /* PLLI2S is the clock source for SAI*/
//  615       case RCC_DCKCFGR_SAI2SRC_0: /* PLLI2S is the clock source for SAI*/
//  616         {
//  617           /* Configure the PLLI2S division factor */
//  618           /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
//  619           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSI)
//  620           {
//  621             /* In Case the PLL Source is HSI (Internal Clock) */
//  622             vcoinput = (HSI_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
//  623           }
//  624           else
//  625           {
//  626             /* In Case the PLL Source is HSE (External Clock) */
//  627             vcoinput = ((HSE_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM)));
//  628           }
//  629 
//  630           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
//  631           /* SAI_CLK(first level) = PLLI2S_VCO Output/PLLI2SQ */
//  632           tmpreg1 = (RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SQ) >> 24U;
//  633           frequency = (vcoinput * ((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U))/(tmpreg1);
//  634 
//  635           /* SAI_CLK_x = SAI_CLK(first level)/PLLI2SDIVQ */
//  636           tmpreg1 = ((RCC->DCKCFGR & RCC_DCKCFGR_PLLI2SDIVQ) + 1U);
//  637           frequency = frequency/(tmpreg1);
//  638           break;
//  639         }
//  640       case RCC_DCKCFGR_SAI1SRC_1: /* PLLR is the clock source for SAI*/
//  641       case RCC_DCKCFGR_SAI2SRC_1: /* PLLR is the clock source for SAI*/
//  642         {
//  643           /* Configure the PLLI2S division factor */
//  644           /* PLL_VCO Input  = PLL_SOURCE/PLLM */
//  645           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSI)
//  646           {
//  647             /* In Case the PLL Source is HSI (Internal Clock) */
//  648             vcoinput = (HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
//  649           }
//  650           else
//  651           {
//  652             /* In Case the PLL Source is HSE (External Clock) */
//  653             vcoinput = ((HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM)));
//  654           }
//  655 
//  656           /* PLL_VCO Output = PLL_VCO Input * PLLN */
//  657           /* SAI_CLK_x = PLL_VCO Output/PLLR */
//  658           tmpreg1 = (RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 28U;
//  659           frequency = (vcoinput * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6U))/(tmpreg1);
//  660           break;
//  661         }
//  662       case RCC_DCKCFGR_SAI1SRC: /* External clock is the clock source for SAI*/
//  663         {
//  664           frequency = EXTERNAL_CLOCK_VALUE;
//  665           break;
//  666         }
//  667       case RCC_DCKCFGR_SAI2SRC: /* PLLSRC(HSE or HSI) is the clock source for SAI*/
//  668         {
//  669           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSI)
//  670           {
//  671             /* In Case the PLL Source is HSI (Internal Clock) */
//  672             frequency = (uint32_t)(HSI_VALUE);
//  673           }
//  674           else
//  675           {
//  676             /* In Case the PLL Source is HSE (External Clock) */
//  677             frequency = (uint32_t)(HSE_VALUE);
//  678           }
//  679           break;
//  680         }
//  681       default :
//  682         {
//  683           break;
//  684         }
//  685       }
//  686       break;
//  687     }
//  688   case RCC_PERIPHCLK_I2S_APB1:
//  689     {
//  690       /* Get the current I2S source */
//  691       srcclk = __HAL_RCC_GET_I2S_APB1_SOURCE();
//  692       switch (srcclk)
//  693       {
//  694       /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
//  695       case RCC_I2SAPB1CLKSOURCE_EXT:
//  696         {
//  697           /* Set the I2S clock to the external clock  value */
//  698           frequency = EXTERNAL_CLOCK_VALUE;
//  699           break;
//  700         }
//  701       /* Check if I2S clock selection is PLLI2S VCO output clock divided by PLLI2SR used as I2S clock */
//  702       case RCC_I2SAPB1CLKSOURCE_PLLI2S:
//  703         {
//  704           /* Configure the PLLI2S division factor */
//  705           /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
//  706           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
//  707           {
//  708             /* Get the I2S source clock value */
//  709             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
//  710           }
//  711           else
//  712           {
//  713             /* Get the I2S source clock value */
//  714             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
//  715           }
//  716 
//  717           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
//  718           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U) & (RCC_PLLI2SCFGR_PLLI2SN >> 6U)));
//  719           /* I2S_CLK = PLLI2S_VCO Output/PLLI2SR */
//  720           frequency = (uint32_t)(vcooutput /(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28U) & (RCC_PLLI2SCFGR_PLLI2SR >> 28U)));
//  721           break;
//  722         }
//  723       /* Check if I2S clock selection is PLL VCO Output divided by PLLR used as I2S clock */
//  724       case RCC_I2SAPB1CLKSOURCE_PLLR:
//  725         {
//  726           /* Configure the PLL division factor R */
//  727           /* PLL_VCO Input  = PLL_SOURCE/PLLM */
//  728           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
//  729           {
//  730             /* Get the I2S source clock value */
//  731             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
//  732           }
//  733           else
//  734           {
//  735             /* Get the I2S source clock value */
//  736             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
//  737           }
//  738 
//  739           /* PLL_VCO Output = PLL_VCO Input * PLLN */
//  740           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6U) & (RCC_PLLCFGR_PLLN >> 6U)));
//  741           /* I2S_CLK = PLL_VCO Output/PLLR */
//  742           frequency = (uint32_t)(vcooutput /(((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 28U) & (RCC_PLLCFGR_PLLR >> 28U)));
//  743           break;
//  744         }
//  745       /* Check if I2S clock selection is HSI or HSE depending from PLL source Clock */
//  746       case RCC_I2SAPB1CLKSOURCE_PLLSRC:
//  747         {
//  748           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
//  749           {
//  750             frequency = HSE_VALUE;
//  751           }
//  752           else
//  753           {
//  754             frequency = HSI_VALUE;
//  755           }
//  756           break;
//  757         }
//  758         /* Clock not enabled for I2S*/
//  759       default:
//  760         {
//  761           frequency = 0U;
//  762           break;
//  763         }
//  764       }
//  765       break;
//  766     }
//  767   case RCC_PERIPHCLK_I2S_APB2:
//  768     {
//  769       /* Get the current I2S source */
//  770       srcclk = __HAL_RCC_GET_I2S_APB2_SOURCE();
//  771       switch (srcclk)
//  772       {
//  773         /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
//  774       case RCC_I2SAPB2CLKSOURCE_EXT:
//  775         {
//  776           /* Set the I2S clock to the external clock  value */
//  777           frequency = EXTERNAL_CLOCK_VALUE;
//  778           break;
//  779         }
//  780         /* Check if I2S clock selection is PLLI2S VCO output clock divided by PLLI2SR used as I2S clock */
//  781       case RCC_I2SAPB2CLKSOURCE_PLLI2S:
//  782         {
//  783           /* Configure the PLLI2S division factor */
//  784           /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
//  785           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
//  786           {
//  787             /* Get the I2S source clock value */
//  788             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
//  789           }
//  790           else
//  791           {
//  792             /* Get the I2S source clock value */
//  793             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
//  794           }
//  795 
//  796           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
//  797           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U) & (RCC_PLLI2SCFGR_PLLI2SN >> 6U)));
//  798           /* I2S_CLK = PLLI2S_VCO Output/PLLI2SR */
//  799           frequency = (uint32_t)(vcooutput /(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28U) & (RCC_PLLI2SCFGR_PLLI2SR >> 28U)));
//  800           break;
//  801         }
//  802         /* Check if I2S clock selection is PLL VCO Output divided by PLLR used as I2S clock */
//  803       case RCC_I2SAPB2CLKSOURCE_PLLR:
//  804         {
//  805           /* Configure the PLL division factor R */
//  806           /* PLL_VCO Input  = PLL_SOURCE/PLLM */
//  807           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
//  808           {
//  809             /* Get the I2S source clock value */
//  810             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
//  811           }
//  812           else
//  813           {
//  814             /* Get the I2S source clock value */
//  815             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
//  816           }
//  817 
//  818           /* PLL_VCO Output = PLL_VCO Input * PLLN */
//  819           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6U) & (RCC_PLLCFGR_PLLN >> 6U)));
//  820           /* I2S_CLK = PLL_VCO Output/PLLR */
//  821           frequency = (uint32_t)(vcooutput /(((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 28U) & (RCC_PLLCFGR_PLLR >> 28U)));
//  822           break;
//  823         }
//  824         /* Check if I2S clock selection is HSI or HSE depending from PLL source Clock */
//  825       case RCC_I2SAPB2CLKSOURCE_PLLSRC:
//  826         {
//  827           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
//  828           {
//  829             frequency = HSE_VALUE;
//  830           }
//  831           else
//  832           {
//  833             frequency = HSI_VALUE;
//  834           }
//  835           break;
//  836         }
//  837         /* Clock not enabled for I2S*/
//  838       default:
//  839         {
//  840           frequency = 0U;
//  841           break;
//  842         }
//  843       }
//  844       break;
//  845     }
//  846   default:
//  847     {
//  848        break;
//  849     }
//  850   }
//  851   return frequency;
//  852 }
//  853 #endif /* STM32F446xx */
//  854 
//  855 #if defined(STM32F469xx) || defined(STM32F479xx)
//  856 /**
//  857   * @brief  Initializes the RCC extended peripherals clocks according to the specified
//  858   *         parameters in the RCC_PeriphCLKInitTypeDef.
//  859   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
//  860   *         contains the configuration information for the Extended Peripherals
//  861   *         clocks(I2S, SAI, LTDC, RTC and TIM).
//  862   *
//  863   * @note   Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to select
//  864   *         the RTC clock source; in this case the Backup domain will be reset in
//  865   *         order to modify the RTC Clock source, as consequence RTC registers (including
//  866   *         the backup registers) and RCC_BDCR register are set to their reset values.
//  867   *
//  868   * @retval HAL status
//  869   */
//  870 HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
//  871 {
//  872   uint32_t tickstart = 0U;
//  873   uint32_t tmpreg1 = 0U;
//  874   uint32_t pllsaip = 0U;
//  875   uint32_t pllsaiq = 0U;
//  876   uint32_t pllsair = 0U;
//  877 
//  878   /* Check the parameters */
//  879   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
//  880 
//  881   /*--------------------------- CLK48 Configuration --------------------------*/
//  882   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CLK48) == RCC_PERIPHCLK_CLK48)
//  883   {
//  884     /* Check the parameters */
//  885     assert_param(IS_RCC_CLK48CLKSOURCE(PeriphClkInit->Clk48ClockSelection));
//  886 
//  887     /* Configure the CLK48 clock source */
//  888     __HAL_RCC_CLK48_CONFIG(PeriphClkInit->Clk48ClockSelection);
//  889   }
//  890   /*--------------------------------------------------------------------------*/
//  891 
//  892   /*------------------------------ SDIO Configuration ------------------------*/
//  893   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SDIO) == RCC_PERIPHCLK_SDIO)
//  894   {
//  895     /* Check the parameters */
//  896     assert_param(IS_RCC_SDIOCLKSOURCE(PeriphClkInit->SdioClockSelection));
//  897 
//  898     /* Configure the SDIO clock source */
//  899     __HAL_RCC_SDIO_CONFIG(PeriphClkInit->SdioClockSelection);
//  900   }
//  901   /*--------------------------------------------------------------------------*/
//  902 
//  903   /*----------------------- SAI/I2S Configuration (PLLI2S) -------------------*/
//  904   /*------------------- Common configuration SAI/I2S -------------------------*/
//  905   /* In Case of SAI or I2S Clock Configuration through PLLI2S, PLLI2SN division
//  906      factor is common parameters for both peripherals */
//  907   if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S) == RCC_PERIPHCLK_I2S) ||
//  908      (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLI2S) == RCC_PERIPHCLK_SAI_PLLI2S) ||
//  909      (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_PLLI2S) == RCC_PERIPHCLK_PLLI2S))
//  910   {
//  911     /* check for Parameters */
//  912     assert_param(IS_RCC_PLLI2SN_VALUE(PeriphClkInit->PLLI2S.PLLI2SN));
//  913 
//  914     /* Disable the PLLI2S */
//  915     __HAL_RCC_PLLI2S_DISABLE();
//  916     /* Get tick */
//  917     tickstart = HAL_GetTick();
//  918     /* Wait till PLLI2S is disabled */
//  919     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  != RESET)
//  920     {
//  921       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
//  922       {
//  923         /* return in case of Timeout detected */
//  924         return HAL_TIMEOUT;
//  925       }
//  926     }
//  927 
//  928     /*---------------------- I2S configuration -------------------------------*/
//  929     /* In Case of I2S Clock Configuration through PLLI2S, PLLI2SR must be added
//  930       only for I2S configuration */
//  931     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S) == (RCC_PERIPHCLK_I2S))
//  932     {
//  933       /* check for Parameters */
//  934       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
//  935       /* Configure the PLLI2S division factors */
//  936       /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) x (PLLI2SN/PLLM) */
//  937       /* I2SCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SR */
//  938       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SR);
//  939     }
//  940 
//  941     /*---------------------------- SAI configuration -------------------------*/
//  942     /* In Case of SAI Clock Configuration through PLLI2S, PLLI2SQ and PLLI2S_DIVQ must
//  943        be added only for SAI configuration */
//  944     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLI2S) == (RCC_PERIPHCLK_SAI_PLLI2S))
//  945     {
//  946       /* Check the PLLI2S division factors */
//  947       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
//  948       assert_param(IS_RCC_PLLI2S_DIVQ_VALUE(PeriphClkInit->PLLI2SDivQ));
//  949 
//  950       /* Read PLLI2SR value from PLLI2SCFGR register (this value is not need for SAI configuration) */
//  951       tmpreg1 = ((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
//  952       /* Configure the PLLI2S division factors */
//  953       /* PLLI2S_VCO Input  = PLL_SOURCE/PLLM */
//  954       /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
//  955       /* SAI_CLK(first level) = PLLI2S_VCO Output/PLLI2SQ */
//  956       __HAL_RCC_PLLI2S_SAICLK_CONFIG(PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SQ , tmpreg1);
//  957       /* SAI_CLK_x = SAI_CLK(first level)/PLLI2SDIVQ */
//  958       __HAL_RCC_PLLI2S_PLLSAICLKDIVQ_CONFIG(PeriphClkInit->PLLI2SDivQ);
//  959     }
//  960 
//  961     /*----------------- In Case of PLLI2S is just selected  -----------------*/
//  962     if((PeriphClkInit->PeriphClockSelection & RCC_PERIPHCLK_PLLI2S) == RCC_PERIPHCLK_PLLI2S)
//  963     {
//  964       /* Check for Parameters */
//  965       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
//  966       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
//  967 
//  968       /* Configure the PLLI2S multiplication and division factors */
//  969       __HAL_RCC_PLLI2S_SAICLK_CONFIG(PeriphClkInit->PLLI2S.PLLI2SN, PeriphClkInit->PLLI2S.PLLI2SQ, PeriphClkInit->PLLI2S.PLLI2SR);
//  970     }
//  971 
//  972     /* Enable the PLLI2S */
//  973     __HAL_RCC_PLLI2S_ENABLE();
//  974     /* Get tick */
//  975     tickstart = HAL_GetTick();
//  976     /* Wait till PLLI2S is ready */
//  977     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  == RESET)
//  978     {
//  979       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
//  980       {
//  981         /* return in case of Timeout detected */
//  982         return HAL_TIMEOUT;
//  983       }
//  984     }
//  985   }
//  986   /*--------------------------------------------------------------------------*/
//  987 
//  988   /*----------------------- SAI/LTDC Configuration (PLLSAI) ------------------*/
//  989   /*----------------------- Common configuration SAI/LTDC --------------------*/
//  990   /* In Case of SAI, LTDC or CLK48 Clock Configuration through PLLSAI, PLLSAIN division
//  991      factor is common parameters for these peripherals */
//  992   if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLSAI) == RCC_PERIPHCLK_SAI_PLLSAI) ||
//  993      (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LTDC) == RCC_PERIPHCLK_LTDC)             ||
//  994      ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CLK48) == RCC_PERIPHCLK_CLK48)          &&
//  995       (PeriphClkInit->Clk48ClockSelection == RCC_CLK48CLKSOURCE_PLLSAIP)))
//  996   {
//  997     /* Check the PLLSAI division factors */
//  998     assert_param(IS_RCC_PLLSAIN_VALUE(PeriphClkInit->PLLSAI.PLLSAIN));
//  999 
// 1000     /* Disable PLLSAI Clock */
// 1001     __HAL_RCC_PLLSAI_DISABLE();
// 1002     /* Get tick */
// 1003     tickstart = HAL_GetTick();
// 1004     /* Wait till PLLSAI is disabled */
// 1005     while(__HAL_RCC_PLLSAI_GET_FLAG() != RESET)
// 1006     {
// 1007       if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
// 1008       {
// 1009         /* return in case of Timeout detected */
// 1010         return HAL_TIMEOUT;
// 1011       }
// 1012     }
// 1013 
// 1014     /*---------------------------- SAI configuration -------------------------*/
// 1015     /* In Case of SAI Clock Configuration through PLLSAI, PLLSAIQ and PLLSAI_DIVQ must
// 1016        be added only for SAI configuration */
// 1017     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLSAI) == (RCC_PERIPHCLK_SAI_PLLSAI))
// 1018     {
// 1019       assert_param(IS_RCC_PLLSAIQ_VALUE(PeriphClkInit->PLLSAI.PLLSAIQ));
// 1020       assert_param(IS_RCC_PLLSAI_DIVQ_VALUE(PeriphClkInit->PLLSAIDivQ));
// 1021 
// 1022       /* Read PLLSAIP value from PLLSAICFGR register (this value is not needed for SAI configuration) */
// 1023       pllsaip = ((((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIP) >> RCC_PLLSAICFGR_PLLSAIP_Pos) + 1U) << 1U);
// 1024       /* Read PLLSAIR value from PLLSAICFGR register (this value is not need for SAI configuration) */
// 1025       pllsair = ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIR) >> RCC_PLLSAICFGR_PLLSAIR_Pos);
// 1026       /* PLLSAI_VCO Input  = PLL_SOURCE/PLLM */
// 1027       /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN */
// 1028       /* SAI_CLK(first level) = PLLSAI_VCO Output/PLLSAIQ */
// 1029       __HAL_RCC_PLLSAI_CONFIG(PeriphClkInit->PLLSAI.PLLSAIN, pllsaip, PeriphClkInit->PLLSAI.PLLSAIQ, pllsair);
// 1030       /* SAI_CLK_x = SAI_CLK(first level)/PLLSAIDIVQ */
// 1031       __HAL_RCC_PLLSAI_PLLSAICLKDIVQ_CONFIG(PeriphClkInit->PLLSAIDivQ);
// 1032     }
// 1033 
// 1034     /*---------------------------- LTDC configuration ------------------------*/
// 1035     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LTDC) == (RCC_PERIPHCLK_LTDC))
// 1036     {
// 1037       assert_param(IS_RCC_PLLSAIR_VALUE(PeriphClkInit->PLLSAI.PLLSAIR));
// 1038       assert_param(IS_RCC_PLLSAI_DIVR_VALUE(PeriphClkInit->PLLSAIDivR));
// 1039 
// 1040       /* Read PLLSAIP value from PLLSAICFGR register (this value is not needed for SAI configuration) */
// 1041       pllsaip = ((((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIP) >> RCC_PLLSAICFGR_PLLSAIP_Pos) + 1U) << 1U);
// 1042       /* Read PLLSAIQ value from PLLSAICFGR register (this value is not need for SAI configuration) */
// 1043       pllsaiq = ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> RCC_PLLSAICFGR_PLLSAIQ_Pos);
// 1044       /* PLLSAI_VCO Input  = PLL_SOURCE/PLLM */
// 1045       /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN */
// 1046       /* LTDC_CLK(first level) = PLLSAI_VCO Output/PLLSAIR */
// 1047       __HAL_RCC_PLLSAI_CONFIG(PeriphClkInit->PLLSAI.PLLSAIN, pllsaip, pllsaiq, PeriphClkInit->PLLSAI.PLLSAIR);
// 1048       /* LTDC_CLK = LTDC_CLK(first level)/PLLSAIDIVR */
// 1049       __HAL_RCC_PLLSAI_PLLSAICLKDIVR_CONFIG(PeriphClkInit->PLLSAIDivR);
// 1050     }
// 1051 
// 1052     /*---------------------------- CLK48 configuration ------------------------*/
// 1053     /* Configure the PLLSAI when it is used as clock source for CLK48 */
// 1054     if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CLK48) == (RCC_PERIPHCLK_CLK48)) &&
// 1055        (PeriphClkInit->Clk48ClockSelection == RCC_CLK48CLKSOURCE_PLLSAIP))
// 1056     {
// 1057       assert_param(IS_RCC_PLLSAIP_VALUE(PeriphClkInit->PLLSAI.PLLSAIP));
// 1058 
// 1059       /* Read PLLSAIQ value from PLLSAICFGR register (this value is not need for SAI configuration) */
// 1060       pllsaiq = ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> RCC_PLLSAICFGR_PLLSAIQ_Pos);
// 1061       /* Read PLLSAIR value from PLLSAICFGR register (this value is not need for SAI configuration) */
// 1062       pllsair = ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIR) >> RCC_PLLSAICFGR_PLLSAIR_Pos);
// 1063       /* PLLSAI_VCO Input  = PLL_SOURCE/PLLM */
// 1064       /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN */
// 1065       /* CLK48_CLK(first level) = PLLSAI_VCO Output/PLLSAIP */
// 1066       __HAL_RCC_PLLSAI_CONFIG(PeriphClkInit->PLLSAI.PLLSAIN, PeriphClkInit->PLLSAI.PLLSAIP, pllsaiq, pllsair);
// 1067     }
// 1068 
// 1069     /* Enable PLLSAI Clock */
// 1070     __HAL_RCC_PLLSAI_ENABLE();
// 1071     /* Get tick */
// 1072     tickstart = HAL_GetTick();
// 1073     /* Wait till PLLSAI is ready */
// 1074     while(__HAL_RCC_PLLSAI_GET_FLAG() == RESET)
// 1075     {
// 1076       if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
// 1077       {
// 1078         /* return in case of Timeout detected */
// 1079         return HAL_TIMEOUT;
// 1080       }
// 1081     }
// 1082   }
// 1083 
// 1084   /*--------------------------------------------------------------------------*/
// 1085 
// 1086   /*---------------------------- RTC configuration ---------------------------*/
// 1087   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == (RCC_PERIPHCLK_RTC))
// 1088   {
// 1089     /* Check for RTC Parameters used to output RTCCLK */
// 1090     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
// 1091 
// 1092     /* Enable Power Clock*/
// 1093     __HAL_RCC_PWR_CLK_ENABLE();
// 1094 
// 1095     /* Enable write access to Backup domain */
// 1096     PWR->CR |= PWR_CR_DBP;
// 1097 
// 1098     /* Get tick */
// 1099     tickstart = HAL_GetTick();
// 1100 
// 1101     while((PWR->CR & PWR_CR_DBP) == RESET)
// 1102     {
// 1103       if((HAL_GetTick() - tickstart ) > RCC_DBP_TIMEOUT_VALUE)
// 1104       {
// 1105         return HAL_TIMEOUT;
// 1106       }
// 1107     }
// 1108     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value */
// 1109     tmpreg1 = (RCC->BDCR & RCC_BDCR_RTCSEL);
// 1110     if((tmpreg1 != 0x00000000U) && ((tmpreg1) != (PeriphClkInit->RTCClockSelection & RCC_BDCR_RTCSEL)))
// 1111     {
// 1112       /* Store the content of BDCR register before the reset of Backup Domain */
// 1113       tmpreg1 = (RCC->BDCR & ~(RCC_BDCR_RTCSEL));
// 1114       /* RTC Clock selection can be changed only if the Backup Domain is reset */
// 1115       __HAL_RCC_BACKUPRESET_FORCE();
// 1116       __HAL_RCC_BACKUPRESET_RELEASE();
// 1117       /* Restore the Content of BDCR register */
// 1118       RCC->BDCR = tmpreg1;
// 1119 
// 1120       /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
// 1121       if(HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSEON))
// 1122       {
// 1123         /* Get tick */
// 1124         tickstart = HAL_GetTick();
// 1125 
// 1126         /* Wait till LSE is ready */
// 1127         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
// 1128         {
// 1129           if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
// 1130           {
// 1131             return HAL_TIMEOUT;
// 1132           }
// 1133         }
// 1134       }
// 1135     }
// 1136     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
// 1137   }
// 1138   /*--------------------------------------------------------------------------*/
// 1139 
// 1140   /*---------------------------- TIM configuration ---------------------------*/
// 1141   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_TIM) == (RCC_PERIPHCLK_TIM))
// 1142   {
// 1143     __HAL_RCC_TIMCLKPRESCALER(PeriphClkInit->TIMPresSelection);
// 1144   }
// 1145   return HAL_OK;
// 1146 }
// 1147 
// 1148 /**
// 1149   * @brief  Configures the RCC_PeriphCLKInitTypeDef according to the internal
// 1150   * RCC configuration registers.
// 1151   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 1152   *         will be configured.
// 1153   * @retval None
// 1154   */
// 1155 void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 1156 {
// 1157   uint32_t tempreg;
// 1158 
// 1159   /* Set all possible values for the extended clock type parameter------------*/
// 1160   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_I2S        | RCC_PERIPHCLK_SAI_PLLSAI |\ 
// 1161                                         RCC_PERIPHCLK_SAI_PLLI2S | RCC_PERIPHCLK_LTDC       |\ 
// 1162                                         RCC_PERIPHCLK_TIM        | RCC_PERIPHCLK_RTC        |\ 
// 1163                                         RCC_PERIPHCLK_CLK48       | RCC_PERIPHCLK_SDIO;
// 1164 
// 1165   /* Get the PLLI2S Clock configuration --------------------------------------*/
// 1166   PeriphClkInit->PLLI2S.PLLI2SN = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> RCC_PLLI2SCFGR_PLLI2SN_Pos);
// 1167   PeriphClkInit->PLLI2S.PLLI2SR = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
// 1168   PeriphClkInit->PLLI2S.PLLI2SQ = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SQ) >> RCC_PLLI2SCFGR_PLLI2SQ_Pos);
// 1169   /* Get the PLLSAI Clock configuration --------------------------------------*/
// 1170   PeriphClkInit->PLLSAI.PLLSAIN = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIN) >> RCC_PLLSAICFGR_PLLSAIN_Pos);
// 1171   PeriphClkInit->PLLSAI.PLLSAIR = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIR) >> RCC_PLLSAICFGR_PLLSAIR_Pos);
// 1172   PeriphClkInit->PLLSAI.PLLSAIQ = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> RCC_PLLSAICFGR_PLLSAIQ_Pos);
// 1173   /* Get the PLLSAI/PLLI2S division factors ----------------------------------*/
// 1174   PeriphClkInit->PLLI2SDivQ = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLI2SDIVQ) >> RCC_DCKCFGR_PLLI2SDIVQ_Pos);
// 1175   PeriphClkInit->PLLSAIDivQ = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLSAIDIVQ) >> RCC_DCKCFGR_PLLSAIDIVQ_Pos);
// 1176   PeriphClkInit->PLLSAIDivR = (uint32_t)(RCC->DCKCFGR & RCC_DCKCFGR_PLLSAIDIVR);
// 1177   /* Get the RTC Clock configuration -----------------------------------------*/
// 1178   tempreg = (RCC->CFGR & RCC_CFGR_RTCPRE);
// 1179   PeriphClkInit->RTCClockSelection = (uint32_t)((tempreg) | (RCC->BDCR & RCC_BDCR_RTCSEL));
// 1180 
// 1181     /* Get the CLK48 clock configuration -------------------------------------*/
// 1182   PeriphClkInit->Clk48ClockSelection = __HAL_RCC_GET_CLK48_SOURCE();
// 1183 
// 1184   /* Get the SDIO clock configuration ----------------------------------------*/
// 1185   PeriphClkInit->SdioClockSelection = __HAL_RCC_GET_SDIO_SOURCE();
// 1186 
// 1187   if ((RCC->DCKCFGR & RCC_DCKCFGR_TIMPRE) == RESET)
// 1188   {
// 1189     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_DESACTIVATED;
// 1190   }
// 1191   else
// 1192   {
// 1193     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_ACTIVATED;
// 1194   }
// 1195 }
// 1196 
// 1197 /**
// 1198   * @brief  Return the peripheral clock frequency for a given peripheral(SAI..)
// 1199   * @note   Return 0 if peripheral clock identifier not managed by this API
// 1200   * @param  PeriphClk Peripheral clock identifier
// 1201   *         This parameter can be one of the following values:
// 1202   *            @arg RCC_PERIPHCLK_I2S: I2S peripheral clock
// 1203   * @retval Frequency in KHz
// 1204   */
// 1205 uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
// 1206 {
// 1207   /* This variable used to store the I2S clock frequency (value in Hz) */
// 1208   uint32_t frequency = 0U;
// 1209   /* This variable used to store the VCO Input (value in Hz) */
// 1210   uint32_t vcoinput = 0U;
// 1211   uint32_t srcclk = 0U;
// 1212   /* This variable used to store the VCO Output (value in Hz) */
// 1213   uint32_t vcooutput = 0U;
// 1214   switch (PeriphClk)
// 1215   {
// 1216   case RCC_PERIPHCLK_I2S:
// 1217     {
// 1218       /* Get the current I2S source */
// 1219       srcclk = __HAL_RCC_GET_I2S_SOURCE();
// 1220       switch (srcclk)
// 1221       {
// 1222       /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
// 1223       case RCC_I2SCLKSOURCE_EXT:
// 1224         {
// 1225           /* Set the I2S clock to the external clock  value */
// 1226           frequency = EXTERNAL_CLOCK_VALUE;
// 1227           break;
// 1228         }
// 1229       /* Check if I2S clock selection is PLLI2S VCO output clock divided by PLLI2SR used as I2S clock */
// 1230       case RCC_I2SCLKSOURCE_PLLI2S:
// 1231         {
// 1232           /* Configure the PLLI2S division factor */
// 1233           /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
// 1234           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 1235           {
// 1236             /* Get the I2S source clock value */
// 1237             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 1238           }
// 1239           else
// 1240           {
// 1241             /* Get the I2S source clock value */
// 1242             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 1243           }
// 1244 
// 1245           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
// 1246           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U) & (RCC_PLLI2SCFGR_PLLI2SN >> 6U)));
// 1247           /* I2S_CLK = PLLI2S_VCO Output/PLLI2SR */
// 1248           frequency = (uint32_t)(vcooutput /(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28U) & (RCC_PLLI2SCFGR_PLLI2SR >> 28U)));
// 1249           break;
// 1250         }
// 1251         /* Clock not enabled for I2S*/
// 1252       default:
// 1253         {
// 1254           frequency = 0U;
// 1255           break;
// 1256         }
// 1257       }
// 1258       break;
// 1259     }
// 1260   default:
// 1261     {
// 1262        break;
// 1263     }
// 1264   }
// 1265   return frequency;
// 1266 }
// 1267 #endif /* STM32F469xx || STM32F479xx */
// 1268 
// 1269 #if defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) || defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
// 1270 /**
// 1271   * @brief  Initializes the RCC extended peripherals clocks according to the specified
// 1272   *         parameters in the RCC_PeriphCLKInitTypeDef.
// 1273   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 1274   *         contains the configuration information for the Extended Peripherals
// 1275   *         clocks(I2S, LTDC RTC and TIM).
// 1276   *
// 1277   * @note   Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to select
// 1278   *         the RTC clock source; in this case the Backup domain will be reset in
// 1279   *         order to modify the RTC Clock source, as consequence RTC registers (including
// 1280   *         the backup registers) and RCC_BDCR register are set to their reset values.
// 1281   *
// 1282   * @retval HAL status
// 1283   */
// 1284 HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 1285 {
// 1286   uint32_t tickstart = 0U;
// 1287   uint32_t tmpreg1 = 0U;
// 1288 #if defined(STM32F413xx) || defined(STM32F423xx)
// 1289   uint32_t plli2sq = 0U;
// 1290 #endif /* STM32F413xx || STM32F423xx */
// 1291   uint32_t plli2sused = 0U;
// 1292 
// 1293   /* Check the peripheral clock selection parameters */
// 1294   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
// 1295 
// 1296   /*----------------------------------- I2S APB1 configuration ---------------*/
// 1297   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB1) == (RCC_PERIPHCLK_I2S_APB1))
// 1298   {
// 1299     /* Check the parameters */
// 1300     assert_param(IS_RCC_I2SAPB1CLKSOURCE(PeriphClkInit->I2sApb1ClockSelection));
// 1301 
// 1302     /* Configure I2S Clock source */
// 1303     __HAL_RCC_I2S_APB1_CONFIG(PeriphClkInit->I2sApb1ClockSelection);
// 1304     /* Enable the PLLI2S when it's used as clock source for I2S */
// 1305     if(PeriphClkInit->I2sApb1ClockSelection == RCC_I2SAPB1CLKSOURCE_PLLI2S)
// 1306     {
// 1307       plli2sused = 1U;
// 1308     }
// 1309   }
// 1310   /*--------------------------------------------------------------------------*/
// 1311 
// 1312   /*----------------------------------- I2S APB2 configuration ---------------*/
// 1313   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB2) == (RCC_PERIPHCLK_I2S_APB2))
// 1314   {
// 1315     /* Check the parameters */
// 1316     assert_param(IS_RCC_I2SAPB2CLKSOURCE(PeriphClkInit->I2sApb2ClockSelection));
// 1317 
// 1318     /* Configure I2S Clock source */
// 1319     __HAL_RCC_I2S_APB2_CONFIG(PeriphClkInit->I2sApb2ClockSelection);
// 1320     /* Enable the PLLI2S when it's used as clock source for I2S */
// 1321     if(PeriphClkInit->I2sApb2ClockSelection == RCC_I2SAPB2CLKSOURCE_PLLI2S)
// 1322     {
// 1323       plli2sused = 1U;
// 1324     }
// 1325   }
// 1326   /*--------------------------------------------------------------------------*/
// 1327 
// 1328 #if defined(STM32F413xx) || defined(STM32F423xx)
// 1329   /*----------------------- SAI1 Block A configuration -----------------------*/
// 1330   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAIA) == (RCC_PERIPHCLK_SAIA))
// 1331   {
// 1332     /* Check the parameters */
// 1333     assert_param(IS_RCC_SAIACLKSOURCE(PeriphClkInit->SaiAClockSelection));
// 1334 
// 1335     /* Configure SAI1 Clock source */
// 1336     __HAL_RCC_SAI_BLOCKACLKSOURCE_CONFIG(PeriphClkInit->SaiAClockSelection);
// 1337     /* Enable the PLLI2S when it's used as clock source for SAI */
// 1338     if(PeriphClkInit->SaiAClockSelection == RCC_SAIACLKSOURCE_PLLI2SR)
// 1339     {
// 1340       plli2sused = 1U;
// 1341     }
// 1342     /* Enable the PLLSAI when it's used as clock source for SAI */
// 1343     if(PeriphClkInit->SaiAClockSelection == RCC_SAIACLKSOURCE_PLLR)
// 1344     {
// 1345       /* Check for PLL/DIVR parameters */
// 1346       assert_param(IS_RCC_PLL_DIVR_VALUE(PeriphClkInit->PLLDivR));
// 1347 
// 1348       /* SAI_CLK_x = SAI_CLK(first level)/PLLDIVR */
// 1349       __HAL_RCC_PLL_PLLSAICLKDIVR_CONFIG(PeriphClkInit->PLLDivR);
// 1350     }
// 1351   }
// 1352   /*--------------------------------------------------------------------------*/
// 1353 
// 1354   /*---------------------- SAI1 Block B configuration ------------------------*/
// 1355   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAIB) == (RCC_PERIPHCLK_SAIB))
// 1356   {
// 1357     /* Check the parameters */
// 1358     assert_param(IS_RCC_SAIBCLKSOURCE(PeriphClkInit->SaiBClockSelection));
// 1359 
// 1360     /* Configure SAI1 Clock source */
// 1361     __HAL_RCC_SAI_BLOCKBCLKSOURCE_CONFIG(PeriphClkInit->SaiBClockSelection);
// 1362     /* Enable the PLLI2S when it's used as clock source for SAI */
// 1363     if(PeriphClkInit->SaiBClockSelection == RCC_SAIBCLKSOURCE_PLLI2SR)
// 1364     {
// 1365       plli2sused = 1U;
// 1366     }
// 1367     /* Enable the PLLSAI when it's used as clock source for SAI */
// 1368     if(PeriphClkInit->SaiBClockSelection == RCC_SAIBCLKSOURCE_PLLR)
// 1369     {
// 1370       /* Check for PLL/DIVR parameters */
// 1371       assert_param(IS_RCC_PLL_DIVR_VALUE(PeriphClkInit->PLLDivR));
// 1372 
// 1373       /* SAI_CLK_x = SAI_CLK(first level)/PLLDIVR */
// 1374       __HAL_RCC_PLL_PLLSAICLKDIVR_CONFIG(PeriphClkInit->PLLDivR);
// 1375     }
// 1376   }
// 1377   /*--------------------------------------------------------------------------*/
// 1378 #endif /* STM32F413xx || STM32F423xx */
// 1379 
// 1380   /*------------------------------------ RTC configuration -------------------*/
// 1381   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == (RCC_PERIPHCLK_RTC))
// 1382   {
// 1383     /* Check for RTC Parameters used to output RTCCLK */
// 1384     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
// 1385 
// 1386     /* Enable Power Clock*/
// 1387     __HAL_RCC_PWR_CLK_ENABLE();
// 1388 
// 1389     /* Enable write access to Backup domain */
// 1390     PWR->CR |= PWR_CR_DBP;
// 1391 
// 1392     /* Get tick */
// 1393     tickstart = HAL_GetTick();
// 1394 
// 1395     while((PWR->CR & PWR_CR_DBP) == RESET)
// 1396     {
// 1397       if((HAL_GetTick() - tickstart ) > RCC_DBP_TIMEOUT_VALUE)
// 1398       {
// 1399         return HAL_TIMEOUT;
// 1400       }
// 1401     }
// 1402     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value */
// 1403     tmpreg1 = (RCC->BDCR & RCC_BDCR_RTCSEL);
// 1404     if((tmpreg1 != 0x00000000U) && ((tmpreg1) != (PeriphClkInit->RTCClockSelection & RCC_BDCR_RTCSEL)))
// 1405     {
// 1406       /* Store the content of BDCR register before the reset of Backup Domain */
// 1407       tmpreg1 = (RCC->BDCR & ~(RCC_BDCR_RTCSEL));
// 1408       /* RTC Clock selection can be changed only if the Backup Domain is reset */
// 1409       __HAL_RCC_BACKUPRESET_FORCE();
// 1410       __HAL_RCC_BACKUPRESET_RELEASE();
// 1411       /* Restore the Content of BDCR register */
// 1412       RCC->BDCR = tmpreg1;
// 1413 
// 1414       /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
// 1415       if(HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSEON))
// 1416       {
// 1417         /* Get tick */
// 1418         tickstart = HAL_GetTick();
// 1419 
// 1420         /* Wait till LSE is ready */
// 1421         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
// 1422         {
// 1423           if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
// 1424           {
// 1425             return HAL_TIMEOUT;
// 1426           }
// 1427         }
// 1428       }
// 1429     }
// 1430     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
// 1431   }
// 1432   /*--------------------------------------------------------------------------*/
// 1433 
// 1434   /*------------------------------------ TIM configuration -------------------*/
// 1435   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_TIM) == (RCC_PERIPHCLK_TIM))
// 1436   {
// 1437     /* Configure Timer Prescaler */
// 1438     __HAL_RCC_TIMCLKPRESCALER(PeriphClkInit->TIMPresSelection);
// 1439   }
// 1440   /*--------------------------------------------------------------------------*/
// 1441 
// 1442   /*------------------------------------- FMPI2C1 Configuration --------------*/
// 1443   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_FMPI2C1) == RCC_PERIPHCLK_FMPI2C1)
// 1444   {
// 1445     /* Check the parameters */
// 1446     assert_param(IS_RCC_FMPI2C1CLKSOURCE(PeriphClkInit->Fmpi2c1ClockSelection));
// 1447 
// 1448     /* Configure the FMPI2C1 clock source */
// 1449     __HAL_RCC_FMPI2C1_CONFIG(PeriphClkInit->Fmpi2c1ClockSelection);
// 1450   }
// 1451   /*--------------------------------------------------------------------------*/
// 1452 
// 1453   /*------------------------------------- CLK48 Configuration ----------------*/
// 1454   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CLK48) == RCC_PERIPHCLK_CLK48)
// 1455   {
// 1456     /* Check the parameters */
// 1457     assert_param(IS_RCC_CLK48CLKSOURCE(PeriphClkInit->Clk48ClockSelection));
// 1458 
// 1459     /* Configure the SDIO clock source */
// 1460     __HAL_RCC_CLK48_CONFIG(PeriphClkInit->Clk48ClockSelection);
// 1461 
// 1462     /* Enable the PLLI2S when it's used as clock source for CLK48 */
// 1463     if(PeriphClkInit->Clk48ClockSelection == RCC_CLK48CLKSOURCE_PLLI2SQ)
// 1464     {
// 1465       plli2sused = 1U;
// 1466     }
// 1467   }
// 1468   /*--------------------------------------------------------------------------*/
// 1469 
// 1470   /*------------------------------------- SDIO Configuration -----------------*/
// 1471   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SDIO) == RCC_PERIPHCLK_SDIO)
// 1472   {
// 1473     /* Check the parameters */
// 1474     assert_param(IS_RCC_SDIOCLKSOURCE(PeriphClkInit->SdioClockSelection));
// 1475 
// 1476     /* Configure the SDIO clock source */
// 1477     __HAL_RCC_SDIO_CONFIG(PeriphClkInit->SdioClockSelection);
// 1478   }
// 1479   /*--------------------------------------------------------------------------*/
// 1480 
// 1481   /*-------------------------------------- PLLI2S Configuration --------------*/
// 1482   /* PLLI2S is configured when a peripheral will use it as source clock : I2S on APB1 or
// 1483      I2S on APB2*/
// 1484   if((plli2sused == 1U) || (PeriphClkInit->PeriphClockSelection == RCC_PERIPHCLK_PLLI2S))
// 1485   {
// 1486     /* Disable the PLLI2S */
// 1487     __HAL_RCC_PLLI2S_DISABLE();
// 1488     /* Get tick */
// 1489     tickstart = HAL_GetTick();
// 1490     /* Wait till PLLI2S is disabled */
// 1491     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  != RESET)
// 1492     {
// 1493       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
// 1494       {
// 1495         /* return in case of Timeout detected */
// 1496         return HAL_TIMEOUT;
// 1497       }
// 1498     }
// 1499 
// 1500     /* check for common PLLI2S Parameters */
// 1501     assert_param(IS_RCC_PLLI2SCLKSOURCE(PeriphClkInit->PLLI2SSelection));
// 1502     assert_param(IS_RCC_PLLI2SM_VALUE(PeriphClkInit->PLLI2S.PLLI2SM));
// 1503     assert_param(IS_RCC_PLLI2SN_VALUE(PeriphClkInit->PLLI2S.PLLI2SN));
// 1504     /*-------------------- Set the PLL I2S clock -----------------------------*/
// 1505     __HAL_RCC_PLL_I2S_CONFIG(PeriphClkInit->PLLI2SSelection);
// 1506 
// 1507     /*------- In Case of PLLI2S is selected as source clock for I2S ----------*/
// 1508     if(((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB1) == RCC_PERIPHCLK_I2S_APB1) && (PeriphClkInit->I2sApb1ClockSelection == RCC_I2SAPB1CLKSOURCE_PLLI2S)) ||
// 1509        ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S_APB2) == RCC_PERIPHCLK_I2S_APB2) && (PeriphClkInit->I2sApb2ClockSelection == RCC_I2SAPB2CLKSOURCE_PLLI2S)) ||
// 1510        ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_CLK48) == RCC_PERIPHCLK_CLK48) && (PeriphClkInit->Clk48ClockSelection == RCC_CLK48CLKSOURCE_PLLI2SQ)) ||
// 1511        ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SDIO) == RCC_PERIPHCLK_SDIO) && (PeriphClkInit->SdioClockSelection == RCC_SDIOCLKSOURCE_CLK48) && (PeriphClkInit->Clk48ClockSelection == RCC_CLK48CLKSOURCE_PLLI2SQ)))
// 1512     {
// 1513       /* check for Parameters */
// 1514       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
// 1515       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
// 1516 
// 1517       /* Configure the PLLI2S division factors */
// 1518       /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM)*/
// 1519       /* I2SCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SR */
// 1520       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SQ, PeriphClkInit->PLLI2S.PLLI2SR);
// 1521     }
// 1522 
// 1523 #if defined(STM32F413xx) || defined(STM32F423xx)
// 1524     /*------- In Case of PLLI2S is selected as source clock for SAI ----------*/
// 1525     if(((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAIA) == RCC_PERIPHCLK_SAIA) && (PeriphClkInit->SaiAClockSelection == RCC_SAIACLKSOURCE_PLLI2SR)) ||
// 1526        ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAIB) == RCC_PERIPHCLK_SAIB) && (PeriphClkInit->SaiBClockSelection == RCC_SAIBCLKSOURCE_PLLI2SR)))
// 1527     {
// 1528       /* Check for PLLI2S Parameters */
// 1529       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
// 1530       /* Check for PLLI2S/DIVR parameters */
// 1531       assert_param(IS_RCC_PLLI2S_DIVR_VALUE(PeriphClkInit->PLLI2SDivR));
// 1532 
// 1533       /* Read PLLI2SQ value from PLLI2SCFGR register (this value is not needed for SAI configuration) */
// 1534       plli2sq = ((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SQ) >> RCC_PLLI2SCFGR_PLLI2SQ_Pos);
// 1535       /* Configure the PLLI2S division factors */
// 1536       /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
// 1537       /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
// 1538       /* SAI_CLK(first level) = PLLI2S_VCO Output/PLLI2SQ */
// 1539       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN, plli2sq, PeriphClkInit->PLLI2S.PLLI2SR);
// 1540 
// 1541       /* SAI_CLK_x = SAI_CLK(first level)/PLLI2SDIVR */
// 1542       __HAL_RCC_PLLI2S_PLLSAICLKDIVR_CONFIG(PeriphClkInit->PLLI2SDivR);
// 1543     }
// 1544 #endif /* STM32F413xx || STM32F423xx */
// 1545 
// 1546     /*----------------- In Case of PLLI2S is just selected  ------------------*/
// 1547     if((PeriphClkInit->PeriphClockSelection & RCC_PERIPHCLK_PLLI2S) == RCC_PERIPHCLK_PLLI2S)
// 1548     {
// 1549       /* Check for Parameters */
// 1550       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
// 1551       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
// 1552 
// 1553       /* Configure the PLLI2S division factors */
// 1554       /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM)*/
// 1555       /* SPDIFRXCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SP */
// 1556       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SQ, PeriphClkInit->PLLI2S.PLLI2SR);
// 1557     }
// 1558 
// 1559     /* Enable the PLLI2S */
// 1560     __HAL_RCC_PLLI2S_ENABLE();
// 1561     /* Get tick */
// 1562     tickstart = HAL_GetTick();
// 1563     /* Wait till PLLI2S is ready */
// 1564     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  == RESET)
// 1565     {
// 1566       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
// 1567       {
// 1568         /* return in case of Timeout detected */
// 1569         return HAL_TIMEOUT;
// 1570       }
// 1571     }
// 1572   }
// 1573   /*--------------------------------------------------------------------------*/
// 1574 
// 1575   /*-------------------- DFSDM1 clock source configuration -------------------*/
// 1576   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_DFSDM1) == RCC_PERIPHCLK_DFSDM1)
// 1577   {
// 1578     /* Check the parameters */
// 1579     assert_param(IS_RCC_DFSDM1CLKSOURCE(PeriphClkInit->Dfsdm1ClockSelection));
// 1580 
// 1581     /* Configure the DFSDM1 interface clock source */
// 1582     __HAL_RCC_DFSDM1_CONFIG(PeriphClkInit->Dfsdm1ClockSelection);
// 1583   }
// 1584   /*--------------------------------------------------------------------------*/
// 1585 
// 1586   /*-------------------- DFSDM1 Audio clock source configuration -------------*/
// 1587   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_DFSDM1_AUDIO) == RCC_PERIPHCLK_DFSDM1_AUDIO)
// 1588   {
// 1589     /* Check the parameters */
// 1590     assert_param(IS_RCC_DFSDM1AUDIOCLKSOURCE(PeriphClkInit->Dfsdm1AudioClockSelection));
// 1591 
// 1592     /* Configure the DFSDM1 Audio interface clock source */
// 1593     __HAL_RCC_DFSDM1AUDIO_CONFIG(PeriphClkInit->Dfsdm1AudioClockSelection);
// 1594   }
// 1595   /*--------------------------------------------------------------------------*/
// 1596 
// 1597 #if defined(STM32F413xx) || defined(STM32F423xx)
// 1598   /*-------------------- DFSDM2 clock source configuration -------------------*/
// 1599   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_DFSDM2) == RCC_PERIPHCLK_DFSDM2)
// 1600   {
// 1601     /* Check the parameters */
// 1602     assert_param(IS_RCC_DFSDM2CLKSOURCE(PeriphClkInit->Dfsdm2ClockSelection));
// 1603 
// 1604     /* Configure the DFSDM1 interface clock source */
// 1605     __HAL_RCC_DFSDM2_CONFIG(PeriphClkInit->Dfsdm2ClockSelection);
// 1606   }
// 1607   /*--------------------------------------------------------------------------*/
// 1608 
// 1609   /*-------------------- DFSDM2 Audio clock source configuration -------------*/
// 1610   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_DFSDM2_AUDIO) == RCC_PERIPHCLK_DFSDM2_AUDIO)
// 1611   {
// 1612     /* Check the parameters */
// 1613     assert_param(IS_RCC_DFSDM2AUDIOCLKSOURCE(PeriphClkInit->Dfsdm2AudioClockSelection));
// 1614 
// 1615     /* Configure the DFSDM1 Audio interface clock source */
// 1616     __HAL_RCC_DFSDM2AUDIO_CONFIG(PeriphClkInit->Dfsdm2AudioClockSelection);
// 1617   }
// 1618   /*--------------------------------------------------------------------------*/
// 1619 
// 1620   /*---------------------------- LPTIM1 Configuration ------------------------*/
// 1621   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPTIM1) == RCC_PERIPHCLK_LPTIM1)
// 1622   {
// 1623     /* Check the parameters */
// 1624     assert_param(IS_RCC_LPTIM1CLKSOURCE(PeriphClkInit->Lptim1ClockSelection));
// 1625 
// 1626     /* Configure the LPTIM1 clock source */
// 1627     __HAL_RCC_LPTIM1_CONFIG(PeriphClkInit->Lptim1ClockSelection);
// 1628   }
// 1629   /*--------------------------------------------------------------------------*/
// 1630 #endif /* STM32F413xx || STM32F423xx */
// 1631 
// 1632   return HAL_OK;
// 1633 }
// 1634 
// 1635 /**
// 1636   * @brief  Get the RCC_PeriphCLKInitTypeDef according to the internal
// 1637   *         RCC configuration registers.
// 1638   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 1639   *         will be configured.
// 1640   * @retval None
// 1641   */
// 1642 void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 1643 {
// 1644   uint32_t tempreg;
// 1645 
// 1646   /* Set all possible values for the extended clock type parameter------------*/
// 1647 #if defined(STM32F413xx) || defined(STM32F423xx)
// 1648   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_I2S_APB1     | RCC_PERIPHCLK_I2S_APB2 |\ 
// 1649                                         RCC_PERIPHCLK_TIM          | RCC_PERIPHCLK_RTC      |\ 
// 1650                                         RCC_PERIPHCLK_FMPI2C1      | RCC_PERIPHCLK_CLK48    |\ 
// 1651                                         RCC_PERIPHCLK_SDIO         | RCC_PERIPHCLK_DFSDM1   |\ 
// 1652                                         RCC_PERIPHCLK_DFSDM1_AUDIO | RCC_PERIPHCLK_DFSDM2   |\ 
// 1653                                         RCC_PERIPHCLK_DFSDM2_AUDIO | RCC_PERIPHCLK_LPTIM1   |\ 
// 1654                                         RCC_PERIPHCLK_SAIA         | RCC_PERIPHCLK_SAIB;
// 1655 #else /* STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx */
// 1656   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_I2S_APB1 | RCC_PERIPHCLK_I2S_APB2 |\ 
// 1657                                         RCC_PERIPHCLK_TIM      | RCC_PERIPHCLK_RTC      |\ 
// 1658                                         RCC_PERIPHCLK_FMPI2C1  | RCC_PERIPHCLK_CLK48    |\ 
// 1659                                         RCC_PERIPHCLK_SDIO     | RCC_PERIPHCLK_DFSDM1   |\ 
// 1660                                         RCC_PERIPHCLK_DFSDM1_AUDIO;
// 1661 #endif /* STM32F413xx || STM32F423xx */
// 1662 
// 1663 
// 1664 
// 1665   /* Get the PLLI2S Clock configuration --------------------------------------*/
// 1666   PeriphClkInit->PLLI2S.PLLI2SM = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM) >> RCC_PLLI2SCFGR_PLLI2SM_Pos);
// 1667   PeriphClkInit->PLLI2S.PLLI2SN = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> RCC_PLLI2SCFGR_PLLI2SN_Pos);
// 1668   PeriphClkInit->PLLI2S.PLLI2SQ = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SQ) >> RCC_PLLI2SCFGR_PLLI2SQ_Pos);
// 1669   PeriphClkInit->PLLI2S.PLLI2SR = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
// 1670 #if defined(STM32F413xx) || defined(STM32F423xx)
// 1671   /* Get the PLL/PLLI2S division factors -------------------------------------*/
// 1672   PeriphClkInit->PLLI2SDivR = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLI2SDIVR) >> RCC_DCKCFGR_PLLI2SDIVR_Pos);
// 1673   PeriphClkInit->PLLDivR = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLDIVR) >> RCC_DCKCFGR_PLLDIVR_Pos);
// 1674 #endif /* STM32F413xx || STM32F423xx */
// 1675 
// 1676   /* Get the I2S APB1 clock configuration ------------------------------------*/
// 1677   PeriphClkInit->I2sApb1ClockSelection = __HAL_RCC_GET_I2S_APB1_SOURCE();
// 1678 
// 1679   /* Get the I2S APB2 clock configuration ------------------------------------*/
// 1680   PeriphClkInit->I2sApb2ClockSelection = __HAL_RCC_GET_I2S_APB2_SOURCE();
// 1681 
// 1682   /* Get the RTC Clock configuration -----------------------------------------*/
// 1683   tempreg = (RCC->CFGR & RCC_CFGR_RTCPRE);
// 1684   PeriphClkInit->RTCClockSelection = (uint32_t)((tempreg) | (RCC->BDCR & RCC_BDCR_RTCSEL));
// 1685 
// 1686   /* Get the FMPI2C1 clock configuration -------------------------------------*/
// 1687   PeriphClkInit->Fmpi2c1ClockSelection = __HAL_RCC_GET_FMPI2C1_SOURCE();
// 1688 
// 1689   /* Get the CLK48 clock configuration ---------------------------------------*/
// 1690   PeriphClkInit->Clk48ClockSelection = __HAL_RCC_GET_CLK48_SOURCE();
// 1691 
// 1692   /* Get the SDIO clock configuration ----------------------------------------*/
// 1693   PeriphClkInit->SdioClockSelection = __HAL_RCC_GET_SDIO_SOURCE();
// 1694 
// 1695   /* Get the DFSDM1 clock configuration --------------------------------------*/
// 1696   PeriphClkInit->Dfsdm1ClockSelection = __HAL_RCC_GET_DFSDM1_SOURCE();
// 1697 
// 1698   /* Get the DFSDM1 Audio clock configuration --------------------------------*/
// 1699   PeriphClkInit->Dfsdm1AudioClockSelection = __HAL_RCC_GET_DFSDM1AUDIO_SOURCE();
// 1700 
// 1701 #if defined(STM32F413xx) || defined(STM32F423xx)
// 1702   /* Get the DFSDM2 clock configuration --------------------------------------*/
// 1703   PeriphClkInit->Dfsdm2ClockSelection = __HAL_RCC_GET_DFSDM2_SOURCE();
// 1704 
// 1705   /* Get the DFSDM2 Audio clock configuration --------------------------------*/
// 1706   PeriphClkInit->Dfsdm2AudioClockSelection = __HAL_RCC_GET_DFSDM2AUDIO_SOURCE();
// 1707 
// 1708   /* Get the LPTIM1 clock configuration --------------------------------------*/
// 1709   PeriphClkInit->Lptim1ClockSelection = __HAL_RCC_GET_LPTIM1_SOURCE();
// 1710 
// 1711   /* Get the SAI1 Block Aclock configuration ---------------------------------*/
// 1712   PeriphClkInit->SaiAClockSelection = __HAL_RCC_GET_SAI_BLOCKA_SOURCE();
// 1713 
// 1714   /* Get the SAI1 Block B clock configuration --------------------------------*/
// 1715   PeriphClkInit->SaiBClockSelection = __HAL_RCC_GET_SAI_BLOCKB_SOURCE();
// 1716 #endif /* STM32F413xx || STM32F423xx */
// 1717 
// 1718   /* Get the TIM Prescaler configuration -------------------------------------*/
// 1719   if ((RCC->DCKCFGR & RCC_DCKCFGR_TIMPRE) == RESET)
// 1720   {
// 1721     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_DESACTIVATED;
// 1722   }
// 1723   else
// 1724   {
// 1725     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_ACTIVATED;
// 1726   }
// 1727 }
// 1728 
// 1729 /**
// 1730   * @brief  Return the peripheral clock frequency for a given peripheral(I2S..)
// 1731   * @note   Return 0 if peripheral clock identifier not managed by this API
// 1732   * @param  PeriphClk Peripheral clock identifier
// 1733   *         This parameter can be one of the following values:
// 1734   *            @arg RCC_PERIPHCLK_I2S_APB1: I2S APB1 peripheral clock
// 1735   *            @arg RCC_PERIPHCLK_I2S_APB2: I2S APB2 peripheral clock
// 1736   * @retval Frequency in KHz
// 1737   */
// 1738 uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
// 1739 {
// 1740   /* This variable used to store the I2S clock frequency (value in Hz) */
// 1741   uint32_t frequency = 0U;
// 1742   /* This variable used to store the VCO Input (value in Hz) */
// 1743   uint32_t vcoinput = 0U;
// 1744   uint32_t srcclk = 0U;
// 1745   /* This variable used to store the VCO Output (value in Hz) */
// 1746   uint32_t vcooutput = 0U;
// 1747   switch (PeriphClk)
// 1748   {
// 1749   case RCC_PERIPHCLK_I2S_APB1:
// 1750     {
// 1751       /* Get the current I2S source */
// 1752       srcclk = __HAL_RCC_GET_I2S_APB1_SOURCE();
// 1753       switch (srcclk)
// 1754       {
// 1755       /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
// 1756       case RCC_I2SAPB1CLKSOURCE_EXT:
// 1757         {
// 1758           /* Set the I2S clock to the external clock  value */
// 1759           frequency = EXTERNAL_CLOCK_VALUE;
// 1760           break;
// 1761         }
// 1762       /* Check if I2S clock selection is PLLI2S VCO output clock divided by PLLI2SR used as I2S clock */
// 1763       case RCC_I2SAPB1CLKSOURCE_PLLI2S:
// 1764         {
// 1765           if((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SSRC) == RCC_PLLI2SCFGR_PLLI2SSRC)
// 1766           {
// 1767             /* Get the I2S source clock value */
// 1768             vcoinput = (uint32_t)(EXTERNAL_CLOCK_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 1769           }
// 1770           else
// 1771           {
// 1772             /* Configure the PLLI2S division factor */
// 1773             /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
// 1774             if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 1775             {
// 1776               /* Get the I2S source clock value */
// 1777               vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 1778             }
// 1779             else
// 1780             {
// 1781               /* Get the I2S source clock value */
// 1782               vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 1783             }
// 1784           }
// 1785           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
// 1786           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U) & (RCC_PLLI2SCFGR_PLLI2SN >> 6U)));
// 1787           /* I2S_CLK = PLLI2S_VCO Output/PLLI2SR */
// 1788           frequency = (uint32_t)(vcooutput /(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28U) & (RCC_PLLI2SCFGR_PLLI2SR >> 28U)));
// 1789           break;
// 1790         }
// 1791       /* Check if I2S clock selection is PLL VCO Output divided by PLLR used as I2S clock */
// 1792       case RCC_I2SAPB1CLKSOURCE_PLLR:
// 1793         {
// 1794           /* Configure the PLL division factor R */
// 1795           /* PLL_VCO Input  = PLL_SOURCE/PLLM */
// 1796           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 1797           {
// 1798             /* Get the I2S source clock value */
// 1799             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 1800           }
// 1801           else
// 1802           {
// 1803             /* Get the I2S source clock value */
// 1804             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 1805           }
// 1806 
// 1807           /* PLL_VCO Output = PLL_VCO Input * PLLN */
// 1808           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6U) & (RCC_PLLCFGR_PLLN >> 6U)));
// 1809           /* I2S_CLK = PLL_VCO Output/PLLR */
// 1810           frequency = (uint32_t)(vcooutput /(((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 28U) & (RCC_PLLCFGR_PLLR >> 28U)));
// 1811           break;
// 1812         }
// 1813       /* Check if I2S clock selection is HSI or HSE depending from PLL source Clock */
// 1814       case RCC_I2SAPB1CLKSOURCE_PLLSRC:
// 1815         {
// 1816           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 1817           {
// 1818             frequency = HSE_VALUE;
// 1819           }
// 1820           else
// 1821           {
// 1822             frequency = HSI_VALUE;
// 1823           }
// 1824           break;
// 1825         }
// 1826         /* Clock not enabled for I2S*/
// 1827       default:
// 1828         {
// 1829           frequency = 0U;
// 1830           break;
// 1831         }
// 1832       }
// 1833       break;
// 1834     }
// 1835   case RCC_PERIPHCLK_I2S_APB2:
// 1836     {
// 1837       /* Get the current I2S source */
// 1838       srcclk = __HAL_RCC_GET_I2S_APB2_SOURCE();
// 1839       switch (srcclk)
// 1840       {
// 1841         /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
// 1842       case RCC_I2SAPB2CLKSOURCE_EXT:
// 1843         {
// 1844           /* Set the I2S clock to the external clock  value */
// 1845           frequency = EXTERNAL_CLOCK_VALUE;
// 1846           break;
// 1847         }
// 1848         /* Check if I2S clock selection is PLLI2S VCO output clock divided by PLLI2SR used as I2S clock */
// 1849       case RCC_I2SAPB2CLKSOURCE_PLLI2S:
// 1850         {
// 1851           if((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SSRC) == RCC_PLLI2SCFGR_PLLI2SSRC)
// 1852           {
// 1853             /* Get the I2S source clock value */
// 1854             vcoinput = (uint32_t)(EXTERNAL_CLOCK_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 1855           }
// 1856           else
// 1857           {
// 1858             /* Configure the PLLI2S division factor */
// 1859             /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
// 1860             if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 1861             {
// 1862               /* Get the I2S source clock value */
// 1863               vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 1864             }
// 1865             else
// 1866             {
// 1867               /* Get the I2S source clock value */
// 1868               vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 1869             }
// 1870           }
// 1871           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
// 1872           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U) & (RCC_PLLI2SCFGR_PLLI2SN >> 6U)));
// 1873           /* I2S_CLK = PLLI2S_VCO Output/PLLI2SR */
// 1874           frequency = (uint32_t)(vcooutput /(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28U) & (RCC_PLLI2SCFGR_PLLI2SR >> 28U)));
// 1875           break;
// 1876         }
// 1877         /* Check if I2S clock selection is PLL VCO Output divided by PLLR used as I2S clock */
// 1878       case RCC_I2SAPB2CLKSOURCE_PLLR:
// 1879         {
// 1880           /* Configure the PLL division factor R */
// 1881           /* PLL_VCO Input  = PLL_SOURCE/PLLM */
// 1882           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 1883           {
// 1884             /* Get the I2S source clock value */
// 1885             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 1886           }
// 1887           else
// 1888           {
// 1889             /* Get the I2S source clock value */
// 1890             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 1891           }
// 1892 
// 1893           /* PLL_VCO Output = PLL_VCO Input * PLLN */
// 1894           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6U) & (RCC_PLLCFGR_PLLN >> 6U)));
// 1895           /* I2S_CLK = PLL_VCO Output/PLLR */
// 1896           frequency = (uint32_t)(vcooutput /(((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 28U) & (RCC_PLLCFGR_PLLR >> 28U)));
// 1897           break;
// 1898         }
// 1899         /* Check if I2S clock selection is HSI or HSE depending from PLL source Clock */
// 1900       case RCC_I2SAPB2CLKSOURCE_PLLSRC:
// 1901         {
// 1902           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 1903           {
// 1904             frequency = HSE_VALUE;
// 1905           }
// 1906           else
// 1907           {
// 1908             frequency = HSI_VALUE;
// 1909           }
// 1910           break;
// 1911         }
// 1912       /* Clock not enabled for I2S*/
// 1913       default:
// 1914         {
// 1915           frequency = 0U;
// 1916           break;
// 1917         }
// 1918       }
// 1919       break;
// 1920     }
// 1921   default:
// 1922     {
// 1923        break;
// 1924     }
// 1925   }
// 1926   return frequency;
// 1927 }
// 1928 #endif /* STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx || STM32F413xx || STM32F423xx */
// 1929 
// 1930 #if defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx)
// 1931 /**
// 1932   * @brief  Initializes the RCC extended peripherals clocks according to the specified parameters in the
// 1933   *         RCC_PeriphCLKInitTypeDef.
// 1934   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 1935   *         contains the configuration information for the Extended Peripherals clocks(I2S and RTC clocks).
// 1936   *
// 1937   * @note   A caution to be taken when HAL_RCCEx_PeriphCLKConfig() is used to select RTC clock selection, in this case
// 1938   *         the Reset of Backup domain will be applied in order to modify the RTC Clock source as consequence all backup
// 1939   *        domain (RTC and RCC_BDCR register expect BKPSRAM) will be reset
// 1940   *
// 1941   * @retval HAL status
// 1942   */
// 1943 HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 1944 {
// 1945   uint32_t tickstart = 0U;
// 1946   uint32_t tmpreg1 = 0U;
// 1947 
// 1948   /* Check the parameters */
// 1949   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
// 1950 
// 1951   /*---------------------------- RTC configuration ---------------------------*/
// 1952   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == (RCC_PERIPHCLK_RTC))
// 1953   {
// 1954     /* Check for RTC Parameters used to output RTCCLK */
// 1955     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
// 1956 
// 1957     /* Enable Power Clock*/
// 1958     __HAL_RCC_PWR_CLK_ENABLE();
// 1959 
// 1960     /* Enable write access to Backup domain */
// 1961     PWR->CR |= PWR_CR_DBP;
// 1962 
// 1963     /* Get tick */
// 1964     tickstart = HAL_GetTick();
// 1965 
// 1966     while((PWR->CR & PWR_CR_DBP) == RESET)
// 1967     {
// 1968       if((HAL_GetTick() - tickstart ) > RCC_DBP_TIMEOUT_VALUE)
// 1969       {
// 1970         return HAL_TIMEOUT;
// 1971       }
// 1972     }
// 1973     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value */
// 1974     tmpreg1 = (RCC->BDCR & RCC_BDCR_RTCSEL);
// 1975     if((tmpreg1 != 0x00000000U) && ((tmpreg1) != (PeriphClkInit->RTCClockSelection & RCC_BDCR_RTCSEL)))
// 1976     {
// 1977       /* Store the content of BDCR register before the reset of Backup Domain */
// 1978       tmpreg1 = (RCC->BDCR & ~(RCC_BDCR_RTCSEL));
// 1979       /* RTC Clock selection can be changed only if the Backup Domain is reset */
// 1980       __HAL_RCC_BACKUPRESET_FORCE();
// 1981       __HAL_RCC_BACKUPRESET_RELEASE();
// 1982       /* Restore the Content of BDCR register */
// 1983       RCC->BDCR = tmpreg1;
// 1984 
// 1985       /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
// 1986       if(HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSEON))
// 1987       {
// 1988         /* Get tick */
// 1989         tickstart = HAL_GetTick();
// 1990 
// 1991         /* Wait till LSE is ready */
// 1992         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
// 1993         {
// 1994           if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
// 1995           {
// 1996             return HAL_TIMEOUT;
// 1997           }
// 1998         }
// 1999       }
// 2000     }
// 2001     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
// 2002   }
// 2003   /*--------------------------------------------------------------------------*/
// 2004 
// 2005   /*---------------------------- TIM configuration ---------------------------*/
// 2006   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_TIM) == (RCC_PERIPHCLK_TIM))
// 2007   {
// 2008     __HAL_RCC_TIMCLKPRESCALER(PeriphClkInit->TIMPresSelection);
// 2009   }
// 2010   /*--------------------------------------------------------------------------*/
// 2011 
// 2012   /*---------------------------- FMPI2C1 Configuration -----------------------*/
// 2013   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_FMPI2C1) == RCC_PERIPHCLK_FMPI2C1)
// 2014   {
// 2015     /* Check the parameters */
// 2016     assert_param(IS_RCC_FMPI2C1CLKSOURCE(PeriphClkInit->Fmpi2c1ClockSelection));
// 2017 
// 2018     /* Configure the FMPI2C1 clock source */
// 2019     __HAL_RCC_FMPI2C1_CONFIG(PeriphClkInit->Fmpi2c1ClockSelection);
// 2020   }
// 2021   /*--------------------------------------------------------------------------*/
// 2022 
// 2023   /*---------------------------- LPTIM1 Configuration ------------------------*/
// 2024   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPTIM1) == RCC_PERIPHCLK_LPTIM1)
// 2025   {
// 2026     /* Check the parameters */
// 2027     assert_param(IS_RCC_LPTIM1CLKSOURCE(PeriphClkInit->Lptim1ClockSelection));
// 2028 
// 2029     /* Configure the LPTIM1 clock source */
// 2030     __HAL_RCC_LPTIM1_CONFIG(PeriphClkInit->Lptim1ClockSelection);
// 2031   }
// 2032 
// 2033   /*---------------------------- I2S Configuration ---------------------------*/
// 2034   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S) == RCC_PERIPHCLK_I2S)
// 2035   {
// 2036     /* Check the parameters */
// 2037     assert_param(IS_RCC_I2SAPBCLKSOURCE(PeriphClkInit->I2SClockSelection));
// 2038 
// 2039     /* Configure the I2S clock source */
// 2040     __HAL_RCC_I2S_CONFIG(PeriphClkInit->I2SClockSelection);
// 2041   }
// 2042 
// 2043   return HAL_OK;
// 2044 }
// 2045 
// 2046 /**
// 2047   * @brief  Configures the RCC_OscInitStruct according to the internal
// 2048   * RCC configuration registers.
// 2049   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 2050   * will be configured.
// 2051   * @retval None
// 2052   */
// 2053 void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 2054 {
// 2055   uint32_t tempreg;
// 2056 
// 2057   /* Set all possible values for the extended clock type parameter------------*/
// 2058   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_FMPI2C1 | RCC_PERIPHCLK_LPTIM1 | RCC_PERIPHCLK_TIM | RCC_PERIPHCLK_RTC;
// 2059 
// 2060   tempreg = (RCC->CFGR & RCC_CFGR_RTCPRE);
// 2061   PeriphClkInit->RTCClockSelection = (uint32_t)((tempreg) | (RCC->BDCR & RCC_BDCR_RTCSEL));
// 2062 
// 2063   if ((RCC->DCKCFGR & RCC_DCKCFGR_TIMPRE) == RESET)
// 2064   {
// 2065     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_DESACTIVATED;
// 2066   }
// 2067   else
// 2068   {
// 2069     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_ACTIVATED;
// 2070   }
// 2071   /* Get the FMPI2C1 clock configuration -------------------------------------*/
// 2072   PeriphClkInit->Fmpi2c1ClockSelection = __HAL_RCC_GET_FMPI2C1_SOURCE();
// 2073 
// 2074   /* Get the I2S clock configuration -----------------------------------------*/
// 2075   PeriphClkInit->I2SClockSelection = __HAL_RCC_GET_I2S_SOURCE();
// 2076 
// 2077 
// 2078 }
// 2079 /**
// 2080   * @brief  Return the peripheral clock frequency for a given peripheral(SAI..)
// 2081   * @note   Return 0 if peripheral clock identifier not managed by this API
// 2082   * @param  PeriphClk Peripheral clock identifier
// 2083   *         This parameter can be one of the following values:
// 2084   *            @arg RCC_PERIPHCLK_I2S: I2S peripheral clock
// 2085   * @retval Frequency in KHz
// 2086   */
// 2087 uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
// 2088 {
// 2089   /* This variable used to store the I2S clock frequency (value in Hz) */
// 2090   uint32_t frequency = 0U;
// 2091   /* This variable used to store the VCO Input (value in Hz) */
// 2092   uint32_t vcoinput = 0U;
// 2093   uint32_t srcclk = 0U;
// 2094   /* This variable used to store the VCO Output (value in Hz) */
// 2095   uint32_t vcooutput = 0U;
// 2096   switch (PeriphClk)
// 2097   {
// 2098   case RCC_PERIPHCLK_I2S:
// 2099     {
// 2100       /* Get the current I2S source */
// 2101       srcclk = __HAL_RCC_GET_I2S_SOURCE();
// 2102       switch (srcclk)
// 2103       {
// 2104       /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
// 2105       case RCC_I2SAPBCLKSOURCE_EXT:
// 2106         {
// 2107           /* Set the I2S clock to the external clock  value */
// 2108           frequency = EXTERNAL_CLOCK_VALUE;
// 2109           break;
// 2110         }
// 2111       /* Check if I2S clock selection is PLL VCO Output divided by PLLR used as I2S clock */
// 2112       case RCC_I2SAPBCLKSOURCE_PLLR:
// 2113         {
// 2114           /* Configure the PLL division factor R */
// 2115           /* PLL_VCO Input  = PLL_SOURCE/PLLM */
// 2116           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 2117           {
// 2118             /* Get the I2S source clock value */
// 2119             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 2120           }
// 2121           else
// 2122           {
// 2123             /* Get the I2S source clock value */
// 2124             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 2125           }
// 2126 
// 2127           /* PLL_VCO Output = PLL_VCO Input * PLLN */
// 2128           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6U) & (RCC_PLLCFGR_PLLN >> 6U)));
// 2129           /* I2S_CLK = PLL_VCO Output/PLLR */
// 2130           frequency = (uint32_t)(vcooutput /(((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 28U) & (RCC_PLLCFGR_PLLR >> 28U)));
// 2131           break;
// 2132         }
// 2133       /* Check if I2S clock selection is HSI or HSE depending from PLL source Clock */
// 2134       case RCC_I2SAPBCLKSOURCE_PLLSRC:
// 2135         {
// 2136           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 2137           {
// 2138             frequency = HSE_VALUE;
// 2139           }
// 2140           else
// 2141           {
// 2142             frequency = HSI_VALUE;
// 2143           }
// 2144           break;
// 2145         }
// 2146         /* Clock not enabled for I2S*/
// 2147       default:
// 2148         {
// 2149           frequency = 0U;
// 2150           break;
// 2151         }
// 2152       }
// 2153       break;
// 2154     }
// 2155   default:
// 2156     {
// 2157        break;
// 2158     }
// 2159   }
// 2160   return frequency;
// 2161 }
// 2162 #endif /* STM32F410Tx || STM32F410Cx || STM32F410Rx */
// 2163 
// 2164 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx)
// 2165 /**
// 2166   * @brief  Initializes the RCC extended peripherals clocks according to the specified
// 2167   *         parameters in the RCC_PeriphCLKInitTypeDef.
// 2168   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 2169   *         contains the configuration information for the Extended Peripherals
// 2170   *         clocks(I2S, SAI, LTDC RTC and TIM).
// 2171   *
// 2172   * @note   Care must be taken when HAL_RCCEx_PeriphCLKConfig() is used to select
// 2173   *         the RTC clock source; in this case the Backup domain will be reset in
// 2174   *         order to modify the RTC Clock source, as consequence RTC registers (including
// 2175   *         the backup registers) and RCC_BDCR register are set to their reset values.
// 2176   *
// 2177   * @retval HAL status
// 2178   */
// 2179 HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 2180 {
// 2181   uint32_t tickstart = 0U;
// 2182   uint32_t tmpreg1 = 0U;
// 2183 
// 2184   /* Check the parameters */
// 2185   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
// 2186 
// 2187   /*----------------------- SAI/I2S Configuration (PLLI2S) -------------------*/
// 2188   /*----------------------- Common configuration SAI/I2S ---------------------*/
// 2189   /* In Case of SAI or I2S Clock Configuration through PLLI2S, PLLI2SN division
// 2190      factor is common parameters for both peripherals */
// 2191   if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S) == RCC_PERIPHCLK_I2S) ||
// 2192      (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLI2S) == RCC_PERIPHCLK_SAI_PLLI2S) ||
// 2193      (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_PLLI2S) == RCC_PERIPHCLK_PLLI2S))
// 2194   {
// 2195     /* check for Parameters */
// 2196     assert_param(IS_RCC_PLLI2SN_VALUE(PeriphClkInit->PLLI2S.PLLI2SN));
// 2197 
// 2198     /* Disable the PLLI2S */
// 2199     __HAL_RCC_PLLI2S_DISABLE();
// 2200     /* Get tick */
// 2201     tickstart = HAL_GetTick();
// 2202     /* Wait till PLLI2S is disabled */
// 2203     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  != RESET)
// 2204     {
// 2205       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
// 2206       {
// 2207         /* return in case of Timeout detected */
// 2208         return HAL_TIMEOUT;
// 2209       }
// 2210     }
// 2211 
// 2212     /*---------------------------- I2S configuration -------------------------*/
// 2213     /* In Case of I2S Clock Configuration through PLLI2S, PLLI2SR must be added
// 2214       only for I2S configuration */
// 2215     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S) == (RCC_PERIPHCLK_I2S))
// 2216     {
// 2217       /* check for Parameters */
// 2218       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
// 2219       /* Configure the PLLI2S division factors */
// 2220       /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLM) */
// 2221       /* I2SCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SR */
// 2222       __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SR);
// 2223     }
// 2224 
// 2225     /*---------------------------- SAI configuration -------------------------*/
// 2226     /* In Case of SAI Clock Configuration through PLLI2S, PLLI2SQ and PLLI2S_DIVQ must
// 2227        be added only for SAI configuration */
// 2228     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLI2S) == (RCC_PERIPHCLK_SAI_PLLI2S))
// 2229     {
// 2230       /* Check the PLLI2S division factors */
// 2231       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
// 2232       assert_param(IS_RCC_PLLI2S_DIVQ_VALUE(PeriphClkInit->PLLI2SDivQ));
// 2233 
// 2234       /* Read PLLI2SR value from PLLI2SCFGR register (this value is not need for SAI configuration) */
// 2235       tmpreg1 = ((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
// 2236       /* Configure the PLLI2S division factors */
// 2237       /* PLLI2S_VCO Input  = PLL_SOURCE/PLLM */
// 2238       /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
// 2239       /* SAI_CLK(first level) = PLLI2S_VCO Output/PLLI2SQ */
// 2240       __HAL_RCC_PLLI2S_SAICLK_CONFIG(PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SQ , tmpreg1);
// 2241       /* SAI_CLK_x = SAI_CLK(first level)/PLLI2SDIVQ */
// 2242       __HAL_RCC_PLLI2S_PLLSAICLKDIVQ_CONFIG(PeriphClkInit->PLLI2SDivQ);
// 2243     }
// 2244 
// 2245     /*----------------- In Case of PLLI2S is just selected  -----------------*/
// 2246     if((PeriphClkInit->PeriphClockSelection & RCC_PERIPHCLK_PLLI2S) == RCC_PERIPHCLK_PLLI2S)
// 2247     {
// 2248       /* Check for Parameters */
// 2249       assert_param(IS_RCC_PLLI2SQ_VALUE(PeriphClkInit->PLLI2S.PLLI2SQ));
// 2250       assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
// 2251 
// 2252       /* Configure the PLLI2S multiplication and division factors */
// 2253       __HAL_RCC_PLLI2S_SAICLK_CONFIG(PeriphClkInit->PLLI2S.PLLI2SN, PeriphClkInit->PLLI2S.PLLI2SQ, PeriphClkInit->PLLI2S.PLLI2SR);
// 2254     }
// 2255 
// 2256     /* Enable the PLLI2S */
// 2257     __HAL_RCC_PLLI2S_ENABLE();
// 2258     /* Get tick */
// 2259     tickstart = HAL_GetTick();
// 2260     /* Wait till PLLI2S is ready */
// 2261     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  == RESET)
// 2262     {
// 2263       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
// 2264       {
// 2265         /* return in case of Timeout detected */
// 2266         return HAL_TIMEOUT;
// 2267       }
// 2268     }
// 2269   }
// 2270   /*--------------------------------------------------------------------------*/
// 2271 
// 2272   /*----------------------- SAI/LTDC Configuration (PLLSAI) ------------------*/
// 2273   /*----------------------- Common configuration SAI/LTDC --------------------*/
// 2274   /* In Case of SAI or LTDC Clock Configuration through PLLSAI, PLLSAIN division
// 2275      factor is common parameters for both peripherals */
// 2276   if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLSAI) == RCC_PERIPHCLK_SAI_PLLSAI) ||
// 2277      (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LTDC) == RCC_PERIPHCLK_LTDC))
// 2278   {
// 2279     /* Check the PLLSAI division factors */
// 2280     assert_param(IS_RCC_PLLSAIN_VALUE(PeriphClkInit->PLLSAI.PLLSAIN));
// 2281 
// 2282     /* Disable PLLSAI Clock */
// 2283     __HAL_RCC_PLLSAI_DISABLE();
// 2284     /* Get tick */
// 2285     tickstart = HAL_GetTick();
// 2286     /* Wait till PLLSAI is disabled */
// 2287     while(__HAL_RCC_PLLSAI_GET_FLAG() != RESET)
// 2288     {
// 2289       if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
// 2290       {
// 2291         /* return in case of Timeout detected */
// 2292         return HAL_TIMEOUT;
// 2293       }
// 2294     }
// 2295 
// 2296     /*---------------------------- SAI configuration -------------------------*/
// 2297     /* In Case of SAI Clock Configuration through PLLSAI, PLLSAIQ and PLLSAI_DIVQ must
// 2298        be added only for SAI configuration */
// 2299     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI_PLLSAI) == (RCC_PERIPHCLK_SAI_PLLSAI))
// 2300     {
// 2301       assert_param(IS_RCC_PLLSAIQ_VALUE(PeriphClkInit->PLLSAI.PLLSAIQ));
// 2302       assert_param(IS_RCC_PLLSAI_DIVQ_VALUE(PeriphClkInit->PLLSAIDivQ));
// 2303 
// 2304       /* Read PLLSAIR value from PLLSAICFGR register (this value is not need for SAI configuration) */
// 2305       tmpreg1 = ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIR) >> RCC_PLLSAICFGR_PLLSAIR_Pos);
// 2306       /* PLLSAI_VCO Input  = PLL_SOURCE/PLLM */
// 2307       /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN */
// 2308       /* SAI_CLK(first level) = PLLSAI_VCO Output/PLLSAIQ */
// 2309       __HAL_RCC_PLLSAI_CONFIG(PeriphClkInit->PLLSAI.PLLSAIN , PeriphClkInit->PLLSAI.PLLSAIQ, tmpreg1);
// 2310       /* SAI_CLK_x = SAI_CLK(first level)/PLLSAIDIVQ */
// 2311       __HAL_RCC_PLLSAI_PLLSAICLKDIVQ_CONFIG(PeriphClkInit->PLLSAIDivQ);
// 2312     }
// 2313 
// 2314     /*---------------------------- LTDC configuration ------------------------*/
// 2315     if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LTDC) == (RCC_PERIPHCLK_LTDC))
// 2316     {
// 2317       assert_param(IS_RCC_PLLSAIR_VALUE(PeriphClkInit->PLLSAI.PLLSAIR));
// 2318       assert_param(IS_RCC_PLLSAI_DIVR_VALUE(PeriphClkInit->PLLSAIDivR));
// 2319 
// 2320       /* Read PLLSAIR value from PLLSAICFGR register (this value is not need for SAI configuration) */
// 2321       tmpreg1 = ((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> RCC_PLLSAICFGR_PLLSAIQ_Pos);
// 2322       /* PLLSAI_VCO Input  = PLL_SOURCE/PLLM */
// 2323       /* PLLSAI_VCO Output = PLLSAI_VCO Input * PLLSAIN */
// 2324       /* LTDC_CLK(first level) = PLLSAI_VCO Output/PLLSAIR */
// 2325       __HAL_RCC_PLLSAI_CONFIG(PeriphClkInit->PLLSAI.PLLSAIN , tmpreg1, PeriphClkInit->PLLSAI.PLLSAIR);
// 2326       /* LTDC_CLK = LTDC_CLK(first level)/PLLSAIDIVR */
// 2327       __HAL_RCC_PLLSAI_PLLSAICLKDIVR_CONFIG(PeriphClkInit->PLLSAIDivR);
// 2328     }
// 2329     /* Enable PLLSAI Clock */
// 2330     __HAL_RCC_PLLSAI_ENABLE();
// 2331     /* Get tick */
// 2332     tickstart = HAL_GetTick();
// 2333     /* Wait till PLLSAI is ready */
// 2334     while(__HAL_RCC_PLLSAI_GET_FLAG() == RESET)
// 2335     {
// 2336       if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
// 2337       {
// 2338         /* return in case of Timeout detected */
// 2339         return HAL_TIMEOUT;
// 2340       }
// 2341     }
// 2342   }
// 2343   /*--------------------------------------------------------------------------*/
// 2344 
// 2345   /*---------------------------- RTC configuration ---------------------------*/
// 2346   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == (RCC_PERIPHCLK_RTC))
// 2347   {
// 2348     /* Check for RTC Parameters used to output RTCCLK */
// 2349     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
// 2350 
// 2351     /* Enable Power Clock*/
// 2352     __HAL_RCC_PWR_CLK_ENABLE();
// 2353 
// 2354     /* Enable write access to Backup domain */
// 2355     PWR->CR |= PWR_CR_DBP;
// 2356 
// 2357     /* Get tick */
// 2358     tickstart = HAL_GetTick();
// 2359 
// 2360     while((PWR->CR & PWR_CR_DBP) == RESET)
// 2361     {
// 2362       if((HAL_GetTick() - tickstart ) > RCC_DBP_TIMEOUT_VALUE)
// 2363       {
// 2364         return HAL_TIMEOUT;
// 2365       }
// 2366     }
// 2367     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value */
// 2368     tmpreg1 = (RCC->BDCR & RCC_BDCR_RTCSEL);
// 2369     if((tmpreg1 != 0x00000000U) && ((tmpreg1) != (PeriphClkInit->RTCClockSelection & RCC_BDCR_RTCSEL)))
// 2370     {
// 2371       /* Store the content of BDCR register before the reset of Backup Domain */
// 2372       tmpreg1 = (RCC->BDCR & ~(RCC_BDCR_RTCSEL));
// 2373       /* RTC Clock selection can be changed only if the Backup Domain is reset */
// 2374       __HAL_RCC_BACKUPRESET_FORCE();
// 2375       __HAL_RCC_BACKUPRESET_RELEASE();
// 2376       /* Restore the Content of BDCR register */
// 2377       RCC->BDCR = tmpreg1;
// 2378 
// 2379       /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
// 2380       if(HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSEON))
// 2381       {
// 2382         /* Get tick */
// 2383         tickstart = HAL_GetTick();
// 2384 
// 2385         /* Wait till LSE is ready */
// 2386         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
// 2387         {
// 2388           if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
// 2389           {
// 2390             return HAL_TIMEOUT;
// 2391           }
// 2392         }
// 2393       }
// 2394     }
// 2395     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
// 2396   }
// 2397   /*--------------------------------------------------------------------------*/
// 2398 
// 2399   /*---------------------------- TIM configuration ---------------------------*/
// 2400   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_TIM) == (RCC_PERIPHCLK_TIM))
// 2401   {
// 2402     __HAL_RCC_TIMCLKPRESCALER(PeriphClkInit->TIMPresSelection);
// 2403   }
// 2404   return HAL_OK;
// 2405 }
// 2406 
// 2407 /**
// 2408   * @brief  Configures the PeriphClkInit according to the internal
// 2409   * RCC configuration registers.
// 2410   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 2411   *         will be configured.
// 2412   * @retval None
// 2413   */
// 2414 void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 2415 {
// 2416   uint32_t tempreg;
// 2417 
// 2418   /* Set all possible values for the extended clock type parameter------------*/
// 2419   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_I2S | RCC_PERIPHCLK_SAI_PLLSAI | RCC_PERIPHCLK_SAI_PLLI2S | RCC_PERIPHCLK_LTDC | RCC_PERIPHCLK_TIM | RCC_PERIPHCLK_RTC;
// 2420 
// 2421   /* Get the PLLI2S Clock configuration -----------------------------------------------*/
// 2422   PeriphClkInit->PLLI2S.PLLI2SN = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> RCC_PLLI2SCFGR_PLLI2SN_Pos);
// 2423   PeriphClkInit->PLLI2S.PLLI2SR = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
// 2424   PeriphClkInit->PLLI2S.PLLI2SQ = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SQ) >> RCC_PLLI2SCFGR_PLLI2SQ_Pos);
// 2425   /* Get the PLLSAI Clock configuration -----------------------------------------------*/
// 2426   PeriphClkInit->PLLSAI.PLLSAIN = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIN) >> RCC_PLLSAICFGR_PLLSAIN_Pos);
// 2427   PeriphClkInit->PLLSAI.PLLSAIR = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIR) >> RCC_PLLSAICFGR_PLLSAIR_Pos);
// 2428   PeriphClkInit->PLLSAI.PLLSAIQ = (uint32_t)((RCC->PLLSAICFGR & RCC_PLLSAICFGR_PLLSAIQ) >> RCC_PLLSAICFGR_PLLSAIQ_Pos);
// 2429   /* Get the PLLSAI/PLLI2S division factors -----------------------------------------------*/
// 2430   PeriphClkInit->PLLI2SDivQ = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLI2SDIVQ) >> RCC_DCKCFGR_PLLI2SDIVQ_Pos);
// 2431   PeriphClkInit->PLLSAIDivQ = (uint32_t)((RCC->DCKCFGR & RCC_DCKCFGR_PLLSAIDIVQ) >> RCC_DCKCFGR_PLLSAIDIVQ_Pos);
// 2432   PeriphClkInit->PLLSAIDivR = (uint32_t)(RCC->DCKCFGR & RCC_DCKCFGR_PLLSAIDIVR);
// 2433   /* Get the RTC Clock configuration -----------------------------------------------*/
// 2434   tempreg = (RCC->CFGR & RCC_CFGR_RTCPRE);
// 2435   PeriphClkInit->RTCClockSelection = (uint32_t)((tempreg) | (RCC->BDCR & RCC_BDCR_RTCSEL));
// 2436 
// 2437   if ((RCC->DCKCFGR & RCC_DCKCFGR_TIMPRE) == RESET)
// 2438   {
// 2439     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_DESACTIVATED;
// 2440   }
// 2441   else
// 2442   {
// 2443     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_ACTIVATED;
// 2444   }
// 2445 }
// 2446 
// 2447 /**
// 2448   * @brief  Return the peripheral clock frequency for a given peripheral(SAI..)
// 2449   * @note   Return 0 if peripheral clock identifier not managed by this API
// 2450   * @param  PeriphClk Peripheral clock identifier
// 2451   *         This parameter can be one of the following values:
// 2452   *            @arg RCC_PERIPHCLK_I2S: I2S peripheral clock
// 2453   * @retval Frequency in KHz
// 2454   */
// 2455 uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
// 2456 {
// 2457   /* This variable used to store the I2S clock frequency (value in Hz) */
// 2458   uint32_t frequency = 0U;
// 2459   /* This variable used to store the VCO Input (value in Hz) */
// 2460   uint32_t vcoinput = 0U;
// 2461   uint32_t srcclk = 0U;
// 2462   /* This variable used to store the VCO Output (value in Hz) */
// 2463   uint32_t vcooutput = 0U;
// 2464   switch (PeriphClk)
// 2465   {
// 2466   case RCC_PERIPHCLK_I2S:
// 2467     {
// 2468       /* Get the current I2S source */
// 2469       srcclk = __HAL_RCC_GET_I2S_SOURCE();
// 2470       switch (srcclk)
// 2471       {
// 2472       /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
// 2473       case RCC_I2SCLKSOURCE_EXT:
// 2474         {
// 2475           /* Set the I2S clock to the external clock  value */
// 2476           frequency = EXTERNAL_CLOCK_VALUE;
// 2477           break;
// 2478         }
// 2479       /* Check if I2S clock selection is PLLI2S VCO output clock divided by PLLI2SR used as I2S clock */
// 2480       case RCC_I2SCLKSOURCE_PLLI2S:
// 2481         {
// 2482           /* Configure the PLLI2S division factor */
// 2483           /* PLLI2S_VCO Input  = PLL_SOURCE/PLLM */
// 2484           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 2485           {
// 2486             /* Get the I2S source clock value */
// 2487             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 2488           }
// 2489           else
// 2490           {
// 2491             /* Get the I2S source clock value */
// 2492             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
// 2493           }
// 2494 
// 2495           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
// 2496           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U) & (RCC_PLLI2SCFGR_PLLI2SN >> 6U)));
// 2497           /* I2S_CLK = PLLI2S_VCO Output/PLLI2SR */
// 2498           frequency = (uint32_t)(vcooutput /(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28U) & (RCC_PLLI2SCFGR_PLLI2SR >> 28U)));
// 2499           break;
// 2500         }
// 2501         /* Clock not enabled for I2S*/
// 2502       default:
// 2503         {
// 2504           frequency = 0U;
// 2505           break;
// 2506         }
// 2507       }
// 2508       break;
// 2509     }
// 2510   default:
// 2511     {
// 2512        break;
// 2513     }
// 2514   }
// 2515   return frequency;
// 2516 }
// 2517 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx */
// 2518 
// 2519 #if defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx)|| defined(STM32F417xx) ||\ 
// 2520     defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F411xE)
// 2521 /**
// 2522   * @brief  Initializes the RCC extended peripherals clocks according to the specified parameters in the
// 2523   *         RCC_PeriphCLKInitTypeDef.
// 2524   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 2525   *         contains the configuration information for the Extended Peripherals clocks(I2S and RTC clocks).
// 2526   *
// 2527   * @note   A caution to be taken when HAL_RCCEx_PeriphCLKConfig() is used to select RTC clock selection, in this case
// 2528   *         the Reset of Backup domain will be applied in order to modify the RTC Clock source as consequence all backup
// 2529   *        domain (RTC and RCC_BDCR register expect BKPSRAM) will be reset
// 2530   *
// 2531   * @retval HAL status
// 2532   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_RCCEx_PeriphCLKConfig
        THUMB
// 2533 HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 2534 {
HAL_RCCEx_PeriphCLKConfig:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
// 2535   uint32_t tickstart = 0U;
        MOVS     R0,#+0
// 2536   uint32_t tmpreg1 = 0U;
        MOVS     R0,#+0
// 2537 
// 2538   /* Check the parameters */
// 2539   assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));
// 2540 
// 2541   /*---------------------------- I2S configuration ---------------------------*/
// 2542   if((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2S) == RCC_PERIPHCLK_I2S) ||
// 2543      (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_PLLI2S) == RCC_PERIPHCLK_PLLI2S))
        LDRB     R0,[R4, #+0]
        TST      R0,#0x5
        BEQ.N    ??HAL_RCCEx_PeriphCLKConfig_0
// 2544   {
// 2545     /* check for Parameters */
// 2546     assert_param(IS_RCC_PLLI2SR_VALUE(PeriphClkInit->PLLI2S.PLLI2SR));
// 2547     assert_param(IS_RCC_PLLI2SN_VALUE(PeriphClkInit->PLLI2S.PLLI2SN));
// 2548 #if defined(STM32F411xE)
// 2549     assert_param(IS_RCC_PLLI2SM_VALUE(PeriphClkInit->PLLI2S.PLLI2SM));
// 2550 #endif /* STM32F411xE */
// 2551     /* Disable the PLLI2S */
// 2552     __HAL_RCC_PLLI2S_DISABLE();
        LDR.W    R5,??DataTable5  ;; 0x42470068
        MOVS     R0,#+0
        STR      R0,[R5, #+0]
// 2553     /* Get tick */
// 2554     tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
// 2555     /* Wait till PLLI2S is disabled */
// 2556     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  != RESET)
??HAL_RCCEx_PeriphCLKConfig_1:
        LDR.W    R6,??DataTable5_1  ;; 0x40023800
        LDR      R0,[R6, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??HAL_RCCEx_PeriphCLKConfig_2
// 2557     {
// 2558       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        CMP      R0,#+3
        BCC.N    ??HAL_RCCEx_PeriphCLKConfig_1
// 2559       {
// 2560         /* return in case of Timeout detected */
// 2561         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_PeriphCLKConfig_3
// 2562       }
// 2563     }
// 2564 
// 2565 #if defined(STM32F411xE)
// 2566     /* Configure the PLLI2S division factors */
// 2567     /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM) */
// 2568     /* I2SCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SR */
// 2569     __HAL_RCC_PLLI2S_I2SCLK_CONFIG(PeriphClkInit->PLLI2S.PLLI2SM, PeriphClkInit->PLLI2S.PLLI2SN, PeriphClkInit->PLLI2S.PLLI2SR);
// 2570 #else
// 2571     /* Configure the PLLI2S division factors */
// 2572     /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLM) */
// 2573     /* I2SCLK = f(PLLI2S clock output) = f(VCO clock) / PLLI2SR */
// 2574     __HAL_RCC_PLLI2S_CONFIG(PeriphClkInit->PLLI2S.PLLI2SN , PeriphClkInit->PLLI2S.PLLI2SR);
??HAL_RCCEx_PeriphCLKConfig_2:
        LDR      R0,[R4, #+4]
        LDR      R1,[R4, #+8]
        LSLS     R1,R1,#+28
        ORRS     R1,R1,R0, LSL #+6
        LDR.W    R0,??DataTable5_2  ;; 0x40023884
        STR      R1,[R0, #+0]
// 2575 #endif /* STM32F411xE */
// 2576 
// 2577     /* Enable the PLLI2S */
// 2578     __HAL_RCC_PLLI2S_ENABLE();
        MOVS     R0,#+1
        STR      R0,[R5, #+0]
// 2579     /* Get tick */
// 2580     tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 2581     /* Wait till PLLI2S is ready */
// 2582     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY)  == RESET)
??HAL_RCCEx_PeriphCLKConfig_4:
        LDR      R0,[R6, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??HAL_RCCEx_PeriphCLKConfig_0
// 2583     {
// 2584       if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCCEx_PeriphCLKConfig_4
// 2585       {
// 2586         /* return in case of Timeout detected */
// 2587         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_PeriphCLKConfig_3
// 2588       }
// 2589     }
// 2590   }
// 2591 
// 2592   /*---------------------------- RTC configuration ---------------------------*/
// 2593   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RTC) == (RCC_PERIPHCLK_RTC))
??HAL_RCCEx_PeriphCLKConfig_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_RCCEx_PeriphCLKConfig_5
// 2594   {
// 2595     /* Check for RTC Parameters used to output RTCCLK */
// 2596     assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));
// 2597 
// 2598     /* Enable Power Clock*/
// 2599     __HAL_RCC_PWR_CLK_ENABLE();
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable5_3  ;; 0x40023840
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x10000000
        STR      R1,[R0, #+0]
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x10000000
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
// 2600 
// 2601     /* Enable write access to Backup domain */
// 2602     PWR->CR |= PWR_CR_DBP;
        LDR.N    R6,??DataTable5_4  ;; 0x40007000
        LDR      R0,[R6, #+0]
        ORRS     R0,R0,#0x100
        STR      R0,[R6, #+0]
// 2603 
// 2604     /* Get tick */
// 2605     tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 2606 
// 2607     while((PWR->CR & PWR_CR_DBP) == RESET)
??HAL_RCCEx_PeriphCLKConfig_6:
        LDR      R0,[R6, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_RCCEx_PeriphCLKConfig_7
// 2608     {
// 2609       if((HAL_GetTick() - tickstart ) > RCC_DBP_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCCEx_PeriphCLKConfig_6
// 2610       {
// 2611         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_PeriphCLKConfig_3
// 2612       }
// 2613     }
// 2614     /* Reset the Backup domain only if the RTC Clock source selection is modified from reset value */
// 2615     tmpreg1 = (RCC->BDCR & RCC_BDCR_RTCSEL);
??HAL_RCCEx_PeriphCLKConfig_7:
        LDR.N    R5,??DataTable5_5  ;; 0x40023870
        LDR      R0,[R5, #+0]
        ANDS     R0,R0,#0x300
// 2616     if((tmpreg1 != 0x00000000U) && ((tmpreg1) != (PeriphClkInit->RTCClockSelection & RCC_BDCR_RTCSEL)))
        CMP      R0,#+0
        BEQ.N    ??HAL_RCCEx_PeriphCLKConfig_8
        LDR      R1,[R4, #+12]
        ANDS     R1,R1,#0x300
        CMP      R0,R1
        BEQ.N    ??HAL_RCCEx_PeriphCLKConfig_8
// 2617     {
// 2618       /* Store the content of BDCR register before the reset of Backup Domain */
// 2619       tmpreg1 = (RCC->BDCR & ~(RCC_BDCR_RTCSEL));
        LDR      R0,[R5, #+0]
        BICS     R0,R0,#0x300
// 2620       /* RTC Clock selection can be changed only if the Backup Domain is reset */
// 2621       __HAL_RCC_BACKUPRESET_FORCE();
        LDR.N    R1,??DataTable5_6  ;; 0x42470e40
        MOVS     R2,#+1
        STR      R2,[R1, #+0]
// 2622       __HAL_RCC_BACKUPRESET_RELEASE();
        MOVS     R2,#+0
        STR      R2,[R1, #+0]
// 2623       /* Restore the Content of BDCR register */
// 2624       RCC->BDCR = tmpreg1;
        STR      R0,[R5, #+0]
// 2625 
// 2626       /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
// 2627       if(HAL_IS_BIT_SET(RCC->BDCR, RCC_BDCR_LSEON))
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_RCCEx_PeriphCLKConfig_8
// 2628       {
// 2629         /* Get tick */
// 2630         tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
// 2631 
// 2632         /* Wait till LSE is ready */
// 2633         while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
??HAL_RCCEx_PeriphCLKConfig_9:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_RCCEx_PeriphCLKConfig_8
// 2634         {
// 2635           if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCCEx_PeriphCLKConfig_9
// 2636           {
// 2637             return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_PeriphCLKConfig_3
// 2638           }
// 2639         }
// 2640       }
// 2641     }
// 2642     __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
??HAL_RCCEx_PeriphCLKConfig_8:
        LDR      R0,[R4, #+12]
        ANDS     R0,R0,#0x300
        CMP      R0,#+768
        BNE.N    ??HAL_RCCEx_PeriphCLKConfig_10
        LDR.N    R1,??DataTable5_7  ;; 0x40023808
        LDR      R2,[R1, #+0]
        BICS     R2,R2,#0x1F0000
        LDR      R3,[R4, #+12]
        LDR.N    R0,??DataTable5_8  ;; 0xffffcff
        ANDS     R3,R0,R3
        ORRS     R2,R3,R2
        STR      R2,[R1, #+0]
        B.N      ??HAL_RCCEx_PeriphCLKConfig_11
??HAL_RCCEx_PeriphCLKConfig_10:
        LDR.N    R0,??DataTable5_7  ;; 0x40023808
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x1F0000
        STR      R1,[R0, #+0]
??HAL_RCCEx_PeriphCLKConfig_11:
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+12]
        LSLS     R1,R1,#+20       ;; ZeroExtS R1,R1,#+20,#+20
        LSRS     R1,R1,#+20
        ORRS     R0,R1,R0
        STR      R0,[R5, #+0]
// 2643   }
// 2644 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F411xE)
// 2645   /*---------------------------- TIM configuration ---------------------------*/
// 2646   if(((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_TIM) == (RCC_PERIPHCLK_TIM))
// 2647   {
// 2648     __HAL_RCC_TIMCLKPRESCALER(PeriphClkInit->TIMPresSelection);
// 2649   }
// 2650 #endif /* STM32F401xC || STM32F401xE || STM32F411xE */
// 2651   return HAL_OK;
??HAL_RCCEx_PeriphCLKConfig_5:
        MOVS     R0,#+0
??HAL_RCCEx_PeriphCLKConfig_3:
        POP      {R1,R4-R7,PC}    ;; return
// 2652 }
          CFI EndBlock cfiBlock0
// 2653 
// 2654 /**
// 2655   * @brief  Configures the RCC_OscInitStruct according to the internal
// 2656   * RCC configuration registers.
// 2657   * @param  PeriphClkInit pointer to an RCC_PeriphCLKInitTypeDef structure that
// 2658   * will be configured.
// 2659   * @retval None
// 2660   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_RCCEx_GetPeriphCLKConfig
          CFI NoCalls
        THUMB
// 2661 void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
// 2662 {
// 2663   uint32_t tempreg;
// 2664 
// 2665   /* Set all possible values for the extended clock type parameter------------*/
// 2666   PeriphClkInit->PeriphClockSelection = RCC_PERIPHCLK_I2S | RCC_PERIPHCLK_RTC;
HAL_RCCEx_GetPeriphCLKConfig:
        MOVS     R1,#+3
        STR      R1,[R0, #+0]
// 2667 
// 2668   /* Get the PLLI2S Clock configuration --------------------------------------*/
// 2669   PeriphClkInit->PLLI2S.PLLI2SN = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> RCC_PLLI2SCFGR_PLLI2SN_Pos);
        LDR.N    R1,??DataTable5_2  ;; 0x40023884
        LDR      R2,[R1, #+0]
        UBFX     R2,R2,#+6,#+9
        STR      R2,[R0, #+4]
// 2670   PeriphClkInit->PLLI2S.PLLI2SR = (uint32_t)((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> RCC_PLLI2SCFGR_PLLI2SR_Pos);
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+28,#+3
        STR      R1,[R0, #+8]
// 2671 #if defined(STM32F411xE)
// 2672   PeriphClkInit->PLLI2S.PLLI2SM = (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM);
// 2673 #endif /* STM32F411xE */
// 2674   /* Get the RTC Clock configuration -----------------------------------------*/
// 2675   tempreg = (RCC->CFGR & RCC_CFGR_RTCPRE);
        LDR.N    R1,??DataTable5_7  ;; 0x40023808
        LDR      R1,[R1, #+0]
        ANDS     R1,R1,#0x1F0000
// 2676   PeriphClkInit->RTCClockSelection = (uint32_t)((tempreg) | (RCC->BDCR & RCC_BDCR_RTCSEL));
        LDR.N    R2,??DataTable5_5  ;; 0x40023870
        LDR      R2,[R2, #+0]
        ANDS     R2,R2,#0x300
        ORRS     R1,R2,R1
        STR      R1,[R0, #+12]
// 2677 
// 2678 #if defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F411xE)
// 2679   /* Get the TIM Prescaler configuration -------------------------------------*/
// 2680   if ((RCC->DCKCFGR & RCC_DCKCFGR_TIMPRE) == RESET)
// 2681   {
// 2682     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_DESACTIVATED;
// 2683   }
// 2684   else
// 2685   {
// 2686     PeriphClkInit->TIMPresSelection = RCC_TIMPRES_ACTIVATED;
// 2687   }
// 2688 #endif /* STM32F401xC || STM32F401xE || STM32F411xE */
// 2689 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
// 2690 
// 2691 /**
// 2692   * @brief  Return the peripheral clock frequency for a given peripheral(SAI..)
// 2693   * @note   Return 0 if peripheral clock identifier not managed by this API
// 2694   * @param  PeriphClk Peripheral clock identifier
// 2695   *         This parameter can be one of the following values:
// 2696   *            @arg RCC_PERIPHCLK_I2S: I2S peripheral clock
// 2697   * @retval Frequency in KHz
// 2698   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_RCCEx_GetPeriphCLKFreq
          CFI NoCalls
        THUMB
// 2699 uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk)
// 2700 {
HAL_RCCEx_GetPeriphCLKFreq:
        MOVS     R1,R0
// 2701   /* This variable used to store the I2S clock frequency (value in Hz) */
// 2702   uint32_t frequency = 0U;
        MOVS     R0,#+0
// 2703   /* This variable used to store the VCO Input (value in Hz) */
// 2704   uint32_t vcoinput = 0U;
        MOVS     R2,#+0
// 2705   uint32_t srcclk = 0U;
        MOVS     R2,#+0
// 2706   /* This variable used to store the VCO Output (value in Hz) */
// 2707   uint32_t vcooutput = 0U;
        MOVS     R2,#+0
// 2708   switch (PeriphClk)
        CMP      R1,#+1
        BNE.N    ??HAL_RCCEx_GetPeriphCLKFreq_0
// 2709   {
// 2710   case RCC_PERIPHCLK_I2S:
// 2711     {
// 2712       /* Get the current I2S source */
// 2713       srcclk = __HAL_RCC_GET_I2S_SOURCE();
        LDR.N    R0,??DataTable5_7  ;; 0x40023808
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x800000
// 2714       switch (srcclk)
        CMP      R0,#+0
        BEQ.N    ??HAL_RCCEx_GetPeriphCLKFreq_1
        CMP      R0,#+8388608
        BNE.N    ??HAL_RCCEx_GetPeriphCLKFreq_2
// 2715       {
// 2716       /* Check if I2S clock selection is External clock mapped on the I2S_CKIN pin used as I2S clock */
// 2717       case RCC_I2SCLKSOURCE_EXT:
// 2718         {
// 2719           /* Set the I2S clock to the external clock  value */
// 2720           frequency = EXTERNAL_CLOCK_VALUE;
??HAL_RCCEx_GetPeriphCLKFreq_3:
        LDR.N    R0,??DataTable5_9  ;; 0xbb8000
// 2721           break;
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_4
// 2722         }
// 2723       /* Check if I2S clock selection is PLLI2S VCO output clock divided by PLLI2SR used as I2S clock */
// 2724       case RCC_I2SCLKSOURCE_PLLI2S:
// 2725         {
// 2726 #if defined(STM32F411xE)
// 2727           /* Configure the PLLI2S division factor */
// 2728           /* PLLI2S_VCO Input  = PLL_SOURCE/PLLI2SM */
// 2729           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
// 2730           {
// 2731             /* Get the I2S source clock value */
// 2732             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 2733           }
// 2734           else
// 2735           {
// 2736             /* Get the I2S source clock value */
// 2737             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SM));
// 2738           }
// 2739 #else
// 2740           /* Configure the PLLI2S division factor */
// 2741           /* PLLI2S_VCO Input  = PLL_SOURCE/PLLM */
// 2742           if((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLSOURCE_HSE)
??HAL_RCCEx_GetPeriphCLKFreq_1:
        LDR.N    R0,??DataTable5_10  ;; 0x40023804
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+9
        BPL.N    ??HAL_RCCEx_GetPeriphCLKFreq_5
// 2743           {
// 2744             /* Get the I2S source clock value */
// 2745             vcoinput = (uint32_t)(HSE_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
        LDR.N    R1,??DataTable5_11  ;; 0x17d7840
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        UDIV     R1,R1,R0
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_6
// 2746           }
// 2747           else
// 2748           {
// 2749             /* Get the I2S source clock value */
// 2750             vcoinput = (uint32_t)(HSI_VALUE / (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM));
??HAL_RCCEx_GetPeriphCLKFreq_5:
        LDR.N    R1,??DataTable5_12  ;; 0xf42400
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3F
        UDIV     R1,R1,R0
// 2751           }
// 2752 #endif /* STM32F411xE */
// 2753           /* PLLI2S_VCO Output = PLLI2S_VCO Input * PLLI2SN */
// 2754           vcooutput = (uint32_t)(vcoinput * (((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SN) >> 6U) & (RCC_PLLI2SCFGR_PLLI2SN >> 6U)));
??HAL_RCCEx_GetPeriphCLKFreq_6:
        LDR.N    R2,??DataTable5_2  ;; 0x40023884
        LDR      R0,[R2, #+0]
        UBFX     R0,R0,#+6,#+9
        MULS     R1,R0,R1
// 2755           /* I2S_CLK = PLLI2S_VCO Output/PLLI2SR */
// 2756           frequency = (uint32_t)(vcooutput /(((RCC->PLLI2SCFGR & RCC_PLLI2SCFGR_PLLI2SR) >> 28U) & (RCC_PLLI2SCFGR_PLLI2SR >> 28U)));
        LDR      R0,[R2, #+0]
        UBFX     R0,R0,#+28,#+3
        UDIV     R0,R1,R0
// 2757           break;
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_4
// 2758         }
// 2759         /* Clock not enabled for I2S*/
// 2760       default:
// 2761         {
// 2762           frequency = 0U;
??HAL_RCCEx_GetPeriphCLKFreq_2:
        MOVS     R0,#+0
// 2763           break;
// 2764         }
// 2765       }
// 2766       break;
??HAL_RCCEx_GetPeriphCLKFreq_4:
        B.N      ??HAL_RCCEx_GetPeriphCLKFreq_7
// 2767     }
// 2768   default:
// 2769     {
// 2770        break;
// 2771     }
// 2772   }
// 2773   return frequency;
??HAL_RCCEx_GetPeriphCLKFreq_0:
??HAL_RCCEx_GetPeriphCLKFreq_7:
        BX       LR               ;; return
// 2774 }
          CFI EndBlock cfiBlock2
// 2775 #endif /* STM32F405xx || STM32F415xx || STM32F407xx || STM32F417xx || STM32F401xC || STM32F401xE  || STM32F411xE */
// 2776 
// 2777 #if defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) || defined(STM32F411xE) || defined(STM32F446xx) || defined(STM32F469xx) || defined(STM32F479xx) || defined(STM32F412Zx) ||\ 
// 2778     defined(STM32F412Vx) || defined(STM32F412Rx) || defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
// 2779 /**
// 2780   * @brief  Select LSE mode
// 2781   *
// 2782   * @note   This mode is only available for STM32F410xx/STM32F411xx/STM32F446xx/STM32F469xx/STM32F479xx/STM32F412Zx/STM32F412Vx/STM32F412Rx/STM32F412Cx  devices.
// 2783   *
// 2784   * @param  Mode specifies the LSE mode.
// 2785   *          This parameter can be one of the following values:
// 2786   *            @arg RCC_LSE_LOWPOWER_MODE:  LSE oscillator in low power mode selection
// 2787   *            @arg RCC_LSE_HIGHDRIVE_MODE: LSE oscillator in High Drive mode selection
// 2788   * @retval None
// 2789   */
// 2790 void HAL_RCCEx_SelectLSEMode(uint8_t Mode)
// 2791 {
// 2792   /* Check the parameters */
// 2793   assert_param(IS_RCC_LSE_MODE(Mode));
// 2794   if(Mode == RCC_LSE_HIGHDRIVE_MODE)
// 2795   {
// 2796     SET_BIT(RCC->BDCR, RCC_BDCR_LSEMOD);
// 2797   }
// 2798   else
// 2799   {
// 2800     CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSEMOD);
// 2801   }
// 2802 }
// 2803 
// 2804 #endif /* STM32F410xx || STM32F411xE || STM32F446xx || STM32F469xx || STM32F479xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx || STM32F413xx || STM32F423xx */
// 2805 
// 2806 /** @defgroup RCCEx_Exported_Functions_Group2 Extended Clock management functions
// 2807  *  @brief  Extended Clock management functions
// 2808  *
// 2809 @verbatim   
// 2810  ===============================================================================
// 2811                 ##### Extended clock management functions  #####
// 2812  ===============================================================================
// 2813     [..]
// 2814     This subsection provides a set of functions allowing to control the 
// 2815     activation or deactivation of PLLI2S, PLLSAI.
// 2816 @endverbatim
// 2817   * @{
// 2818   */
// 2819 
// 2820 #if defined(RCC_PLLI2S_SUPPORT)
// 2821 /**
// 2822   * @brief  Enable PLLI2S.
// 2823   * @param  PLLI2SInit  pointer to an RCC_PLLI2SInitTypeDef structure that
// 2824   *         contains the configuration information for the PLLI2S
// 2825   * @retval HAL status
// 2826   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_RCCEx_EnablePLLI2S
        THUMB
// 2827 HAL_StatusTypeDef HAL_RCCEx_EnablePLLI2S(RCC_PLLI2SInitTypeDef  *PLLI2SInit)
// 2828 {
HAL_RCCEx_EnablePLLI2S:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R6,R0
// 2829   uint32_t tickstart;
// 2830 
// 2831   /* Check for parameters */
// 2832   assert_param(IS_RCC_PLLI2SN_VALUE(PLLI2SInit->PLLI2SN));
// 2833   assert_param(IS_RCC_PLLI2SR_VALUE(PLLI2SInit->PLLI2SR));
// 2834 #if defined(RCC_PLLI2SCFGR_PLLI2SM)
// 2835   assert_param(IS_RCC_PLLI2SM_VALUE(PLLI2SInit->PLLI2SM));
// 2836 #endif /* RCC_PLLI2SCFGR_PLLI2SM */
// 2837 #if defined(RCC_PLLI2SCFGR_PLLI2SP)
// 2838   assert_param(IS_RCC_PLLI2SP_VALUE(PLLI2SInit->PLLI2SP));
// 2839 #endif /* RCC_PLLI2SCFGR_PLLI2SP */
// 2840 #if defined(RCC_PLLI2SCFGR_PLLI2SQ)
// 2841   assert_param(IS_RCC_PLLI2SQ_VALUE(PLLI2SInit->PLLI2SQ));
// 2842 #endif /* RCC_PLLI2SCFGR_PLLI2SQ */
// 2843 
// 2844   /* Disable the PLLI2S */
// 2845   __HAL_RCC_PLLI2S_DISABLE();
        LDR.N    R4,??DataTable5  ;; 0x42470068
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
// 2846 
// 2847   /* Wait till PLLI2S is disabled */
// 2848   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R7,R0
// 2849   while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY) != RESET)
??HAL_RCCEx_EnablePLLI2S_0:
        LDR.N    R5,??DataTable5_1  ;; 0x40023800
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??HAL_RCCEx_EnablePLLI2S_1
// 2850   {
// 2851     if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R7
        CMP      R0,#+3
        BCC.N    ??HAL_RCCEx_EnablePLLI2S_0
// 2852     {
// 2853       /* return in case of Timeout detected */
// 2854       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_EnablePLLI2S_2
// 2855     }
// 2856   }
// 2857 
// 2858   /* Configure the PLLI2S division factors */
// 2859 #if defined(STM32F446xx)
// 2860   /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM) */
// 2861   /* I2SPCLK = PLLI2S_VCO / PLLI2SP */
// 2862   /* I2SQCLK = PLLI2S_VCO / PLLI2SQ */
// 2863   /* I2SRCLK = PLLI2S_VCO / PLLI2SR */
// 2864   __HAL_RCC_PLLI2S_CONFIG(PLLI2SInit->PLLI2SM, PLLI2SInit->PLLI2SN, \ 
// 2865                           PLLI2SInit->PLLI2SP, PLLI2SInit->PLLI2SQ, PLLI2SInit->PLLI2SR);
// 2866 #elif defined(STM32F412Zx) || defined(STM32F412Vx) || defined(STM32F412Rx) || defined(STM32F412Cx) ||\ 
// 2867       defined(STM32F413xx) || defined(STM32F423xx)
// 2868   /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM)*/
// 2869   /* I2SQCLK = PLLI2S_VCO / PLLI2SQ */
// 2870   /* I2SRCLK = PLLI2S_VCO / PLLI2SR */
// 2871   __HAL_RCC_PLLI2S_CONFIG(PLLI2SInit->PLLI2SM, PLLI2SInit->PLLI2SN, \ 
// 2872                           PLLI2SInit->PLLI2SQ, PLLI2SInit->PLLI2SR);
// 2873 #elif defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx) ||\ 
// 2874       defined(STM32F469xx) || defined(STM32F479xx)
// 2875   /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * PLLI2SN */
// 2876   /* I2SQCLK = PLLI2S_VCO / PLLI2SQ */
// 2877   /* I2SRCLK = PLLI2S_VCO / PLLI2SR */
// 2878   __HAL_RCC_PLLI2S_SAICLK_CONFIG(PLLI2SInit->PLLI2SN, PLLI2SInit->PLLI2SQ, PLLI2SInit->PLLI2SR);
// 2879 #elif defined(STM32F411xE)
// 2880   /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) * (PLLI2SN/PLLI2SM) */
// 2881   /* I2SRCLK = PLLI2S_VCO / PLLI2SR */
// 2882   __HAL_RCC_PLLI2S_I2SCLK_CONFIG(PLLI2SInit->PLLI2SM, PLLI2SInit->PLLI2SN, PLLI2SInit->PLLI2SR);
// 2883 #else
// 2884   /* PLLI2S_VCO = f(VCO clock) = f(PLLI2S clock input) x PLLI2SN */
// 2885   /* I2SRCLK = PLLI2S_VCO / PLLI2SR */
// 2886   __HAL_RCC_PLLI2S_CONFIG(PLLI2SInit->PLLI2SN, PLLI2SInit->PLLI2SR);
??HAL_RCCEx_EnablePLLI2S_1:
        LDR      R0,[R6, #+0]
        LDR      R1,[R6, #+4]
        LSLS     R1,R1,#+28
        ORRS     R1,R1,R0, LSL #+6
        LDR.N    R0,??DataTable5_2  ;; 0x40023884
        STR      R1,[R0, #+0]
// 2887 #endif /* STM32F446xx */
// 2888 
// 2889   /* Enable the PLLI2S */
// 2890   __HAL_RCC_PLLI2S_ENABLE();
        MOVS     R0,#+1
        STR      R0,[R4, #+0]
// 2891 
// 2892   /* Wait till PLLI2S is ready */
// 2893   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R4,R0
// 2894   while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLI2SRDY) == RESET)
??HAL_RCCEx_EnablePLLI2S_3:
        LDR      R0,[R5, #+0]
        LSLS     R0,R0,#+4
        BMI.N    ??HAL_RCCEx_EnablePLLI2S_4
// 2895   {
// 2896     if((HAL_GetTick() - tickstart ) > PLLI2S_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R4
        CMP      R0,#+3
        BCC.N    ??HAL_RCCEx_EnablePLLI2S_3
// 2897     {
// 2898       /* return in case of Timeout detected */
// 2899       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_EnablePLLI2S_2
// 2900     }
// 2901   }
// 2902 
// 2903  return HAL_OK;
??HAL_RCCEx_EnablePLLI2S_4:
        MOVS     R0,#+0
??HAL_RCCEx_EnablePLLI2S_2:
        POP      {R1,R4-R7,PC}    ;; return
// 2904 }
          CFI EndBlock cfiBlock3
// 2905 
// 2906 /**
// 2907   * @brief  Disable PLLI2S.
// 2908   * @retval HAL status
// 2909   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_RCCEx_DisablePLLI2S
        THUMB
// 2910 HAL_StatusTypeDef HAL_RCCEx_DisablePLLI2S(void)
// 2911 {
HAL_RCCEx_DisablePLLI2S:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 2912   uint32_t tickstart;
// 2913 
// 2914   /* Disable the PLLI2S */
// 2915   __HAL_RCC_PLLI2S_DISABLE();
        MOVS     R0,#+0
        LDR.N    R1,??DataTable5  ;; 0x42470068
        STR      R0,[R1, #+0]
// 2916 
// 2917   /* Wait till PLLI2S is disabled */
// 2918   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R4,R0
// 2919   while(READ_BIT(RCC->CR, RCC_CR_PLLI2SRDY) != RESET)
??HAL_RCCEx_DisablePLLI2S_0:
        LDR.N    R0,??DataTable5_1  ;; 0x40023800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??HAL_RCCEx_DisablePLLI2S_1
// 2920   {
// 2921     if((HAL_GetTick() - tickstart) > PLLI2S_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R4
        CMP      R0,#+3
        BCC.N    ??HAL_RCCEx_DisablePLLI2S_0
// 2922     {
// 2923       /* return in case of Timeout detected */
// 2924       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCCEx_DisablePLLI2S_2
// 2925     }
// 2926   }
// 2927 
// 2928   return HAL_OK;
??HAL_RCCEx_DisablePLLI2S_1:
        MOVS     R0,#+0
??HAL_RCCEx_DisablePLLI2S_2:
        POP      {R4,PC}          ;; return
// 2929 }
          CFI EndBlock cfiBlock4
// 2930 
// 2931 #endif /* RCC_PLLI2S_SUPPORT */
// 2932 
// 2933 #if defined(RCC_PLLSAI_SUPPORT)
// 2934 /**
// 2935   * @brief  Enable PLLSAI.
// 2936   * @param  PLLSAIInit  pointer to an RCC_PLLSAIInitTypeDef structure that
// 2937   *         contains the configuration information for the PLLSAI
// 2938   * @retval HAL status
// 2939   */
// 2940 HAL_StatusTypeDef HAL_RCCEx_EnablePLLSAI(RCC_PLLSAIInitTypeDef  *PLLSAIInit)
// 2941 {
// 2942   uint32_t tickstart;
// 2943 
// 2944   /* Check for parameters */
// 2945   assert_param(IS_RCC_PLLSAIN_VALUE(PLLSAIInit->PLLSAIN));
// 2946   assert_param(IS_RCC_PLLSAIQ_VALUE(PLLSAIInit->PLLSAIQ));
// 2947 #if defined(RCC_PLLSAICFGR_PLLSAIM)
// 2948   assert_param(IS_RCC_PLLSAIM_VALUE(PLLSAIInit->PLLSAIM));
// 2949 #endif /* RCC_PLLSAICFGR_PLLSAIM */
// 2950 #if defined(RCC_PLLSAICFGR_PLLSAIP)
// 2951   assert_param(IS_RCC_PLLSAIP_VALUE(PLLSAIInit->PLLSAIP));
// 2952 #endif /* RCC_PLLSAICFGR_PLLSAIP */
// 2953 #if defined(RCC_PLLSAICFGR_PLLSAIR)
// 2954   assert_param(IS_RCC_PLLSAIR_VALUE(PLLSAIInit->PLLSAIR));
// 2955 #endif /* RCC_PLLSAICFGR_PLLSAIR */
// 2956 
// 2957   /* Disable the PLLSAI */
// 2958   __HAL_RCC_PLLSAI_DISABLE();
// 2959 
// 2960   /* Wait till PLLSAI is disabled */
// 2961   tickstart = HAL_GetTick();
// 2962   while(__HAL_RCC_PLLSAI_GET_FLAG() != RESET)
// 2963   {
// 2964     if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
// 2965     {
// 2966       /* return in case of Timeout detected */
// 2967       return HAL_TIMEOUT;
// 2968     }
// 2969   }
// 2970 
// 2971   /* Configure the PLLSAI division factors */
// 2972 #if defined(STM32F446xx)
// 2973   /* PLLSAI_VCO = f(VCO clock) = f(PLLSAI clock input) * (PLLSAIN/PLLSAIM) */
// 2974   /* SAIPCLK = PLLSAI_VCO / PLLSAIP */
// 2975   /* SAIQCLK = PLLSAI_VCO / PLLSAIQ */
// 2976   /* SAIRCLK = PLLSAI_VCO / PLLSAIR */
// 2977   __HAL_RCC_PLLSAI_CONFIG(PLLSAIInit->PLLSAIM, PLLSAIInit->PLLSAIN, \ 
// 2978                           PLLSAIInit->PLLSAIP, PLLSAIInit->PLLSAIQ, 0U);
// 2979 #elif defined(STM32F469xx) || defined(STM32F479xx)
// 2980   /* PLLSAI_VCO = f(VCO clock) = f(PLLSAI clock input) * PLLSAIN */
// 2981   /* SAIPCLK = PLLSAI_VCO / PLLSAIP */
// 2982   /* SAIQCLK = PLLSAI_VCO / PLLSAIQ */
// 2983   /* SAIRCLK = PLLSAI_VCO / PLLSAIR */
// 2984   __HAL_RCC_PLLSAI_CONFIG(PLLSAIInit->PLLSAIN, PLLSAIInit->PLLSAIP, \ 
// 2985                           PLLSAIInit->PLLSAIQ, PLLSAIInit->PLLSAIR);
// 2986 #else
// 2987   /* PLLSAI_VCO = f(VCO clock) = f(PLLSAI clock input) x PLLSAIN */
// 2988   /* SAIQCLK = PLLSAI_VCO / PLLSAIQ */
// 2989   /* SAIRCLK = PLLSAI_VCO / PLLSAIR */
// 2990   __HAL_RCC_PLLSAI_CONFIG(PLLSAIInit->PLLSAIN, PLLSAIInit->PLLSAIQ, PLLSAIInit->PLLSAIR);
// 2991 #endif /* STM32F446xx */
// 2992 
// 2993   /* Enable the PLLSAI */
// 2994   __HAL_RCC_PLLSAI_ENABLE();
// 2995 
// 2996   /* Wait till PLLSAI is ready */
// 2997   tickstart = HAL_GetTick();
// 2998   while(__HAL_RCC_PLLSAI_GET_FLAG() == RESET)
// 2999   {
// 3000     if((HAL_GetTick() - tickstart ) > PLLSAI_TIMEOUT_VALUE)
// 3001     {
// 3002       /* return in case of Timeout detected */
// 3003       return HAL_TIMEOUT;
// 3004     }
// 3005   }
// 3006 
// 3007  return HAL_OK;
// 3008 }
// 3009 
// 3010 /**
// 3011   * @brief  Disable PLLSAI.
// 3012   * @retval HAL status
// 3013   */
// 3014 HAL_StatusTypeDef HAL_RCCEx_DisablePLLSAI(void)
// 3015 {
// 3016   uint32_t tickstart;
// 3017 
// 3018   /* Disable the PLLSAI */
// 3019   __HAL_RCC_PLLSAI_DISABLE();
// 3020 
// 3021   /* Wait till PLLSAI is disabled */
// 3022   tickstart = HAL_GetTick();
// 3023   while(__HAL_RCC_PLLSAI_GET_FLAG() != RESET)
// 3024   {
// 3025     if((HAL_GetTick() - tickstart) > PLLSAI_TIMEOUT_VALUE)
// 3026     {
// 3027       /* return in case of Timeout detected */
// 3028       return HAL_TIMEOUT;
// 3029     }
// 3030   }
// 3031 
// 3032   return HAL_OK;
// 3033 }
// 3034 
// 3035 #endif /* RCC_PLLSAI_SUPPORT */
// 3036 
// 3037 /**
// 3038   * @}
// 3039   */
// 3040 
// 3041 #if defined(STM32F446xx)
// 3042 /**
// 3043   * @brief  Returns the SYSCLK frequency
// 3044   *
// 3045   * @note   This function implementation is valid only for STM32F446xx devices.
// 3046   * @note   This function add the PLL/PLLR System clock source
// 3047   *
// 3048   * @note   The system frequency computed by this function is not the real
// 3049   *         frequency in the chip. It is calculated based on the predefined
// 3050   *         constant and the selected clock source:
// 3051   * @note     If SYSCLK source is HSI, function returns values based on HSI_VALUE(*)
// 3052   * @note     If SYSCLK source is HSE, function returns values based on HSE_VALUE(**)
// 3053   * @note     If SYSCLK source is PLL or PLLR, function returns values based on HSE_VALUE(**)
// 3054   *           or HSI_VALUE(*) multiplied/divided by the PLL factors.
// 3055   * @note     (*) HSI_VALUE is a constant defined in stm32f4xx_hal_conf.h file (default value
// 3056   *               16 MHz) but the real value may vary depending on the variations
// 3057   *               in voltage and temperature.
// 3058   * @note     (**) HSE_VALUE is a constant defined in stm32f4xx_hal_conf.h file (default value
// 3059   *                25 MHz), user has to ensure that HSE_VALUE is same as the real
// 3060   *                frequency of the crystal used. Otherwise, this function may
// 3061   *                have wrong result.
// 3062   *
// 3063   * @note   The result of this function could be not correct when using fractional
// 3064   *         value for HSE crystal.
// 3065   *
// 3066   * @note   This function can be used by the user application to compute the
// 3067   *         baudrate for the communication peripherals or configure other parameters.
// 3068   *
// 3069   * @note   Each time SYSCLK changes, this function must be called to update the
// 3070   *         right SYSCLK value. Otherwise, any configuration based on this function will be incorrect.
// 3071   *
// 3072   *
// 3073   * @retval SYSCLK frequency
// 3074   */
// 3075 uint32_t HAL_RCC_GetSysClockFreq(void)
// 3076 {
// 3077   uint32_t pllm = 0U;
// 3078   uint32_t pllvco = 0U;
// 3079   uint32_t pllp = 0U;
// 3080   uint32_t pllr = 0U;
// 3081   uint32_t sysclockfreq = 0U;
// 3082 
// 3083   /* Get SYSCLK source -------------------------------------------------------*/
// 3084   switch (RCC->CFGR & RCC_CFGR_SWS)
// 3085   {
// 3086     case RCC_CFGR_SWS_HSI:  /* HSI used as system clock source */
// 3087     {
// 3088       sysclockfreq = HSI_VALUE;
// 3089        break;
// 3090     }
// 3091     case RCC_CFGR_SWS_HSE:  /* HSE used as system clock  source */
// 3092     {
// 3093       sysclockfreq = HSE_VALUE;
// 3094       break;
// 3095     }
// 3096     case RCC_CFGR_SWS_PLL:  /* PLL/PLLP used as system clock  source */
// 3097     {
// 3098       /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
// 3099       SYSCLK = PLL_VCO / PLLP */
// 3100       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
// 3101       if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
// 3102       {
// 3103         /* HSE used as PLL clock source */
// 3104         pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
// 3105       }
// 3106       else
// 3107       {
// 3108         /* HSI used as PLL clock source */
// 3109         pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
// 3110       }
// 3111       pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> RCC_PLLCFGR_PLLP_Pos) + 1U) *2U);
// 3112 
// 3113       sysclockfreq = pllvco/pllp;
// 3114       break;
// 3115     }
// 3116     case RCC_CFGR_SWS_PLLR:  /* PLL/PLLR used as system clock  source */
// 3117     {
// 3118       /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
// 3119       SYSCLK = PLL_VCO / PLLR */
// 3120       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
// 3121       if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
// 3122       {
// 3123         /* HSE used as PLL clock source */
// 3124         pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
// 3125       }
// 3126       else
// 3127       {
// 3128         /* HSI used as PLL clock source */
// 3129         pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
// 3130       }
// 3131       pllr = ((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos);
// 3132 
// 3133       sysclockfreq = pllvco/pllr;
// 3134       break;
// 3135     }
// 3136     default:
// 3137     {
// 3138       sysclockfreq = HSI_VALUE;
// 3139       break;
// 3140     }
// 3141   }
// 3142   return sysclockfreq;
// 3143 }
// 3144 #endif /* STM32F446xx */
// 3145 
// 3146 /**
// 3147   * @}
// 3148   */
// 3149 
// 3150 /**
// 3151   * @}
// 3152   */
// 3153 
// 3154 /**
// 3155   * @brief  Resets the RCC clock configuration to the default reset state.
// 3156   * @note   The default reset state of the clock configuration is given below:
// 3157   *            - HSI ON and used as system clock source
// 3158   *            - HSE, PLL, PLLI2S and PLLSAI OFF
// 3159   *            - AHB, APB1 and APB2 prescaler set to 1.
// 3160   *            - CSS, MCO1 and MCO2 OFF
// 3161   *            - All interrupts disabled
// 3162   * @note   This function doesn't modify the configuration of the
// 3163   *            - Peripheral clocks
// 3164   *            - LSI, LSE and RTC clocks
// 3165   * @retval HAL status
// 3166   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_RCC_DeInit
        THUMB
// 3167 HAL_StatusTypeDef HAL_RCC_DeInit(void)
// 3168 {
HAL_RCC_DeInit:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 3169   uint32_t tickstart;
// 3170 
// 3171   /* Get Start Tick */
// 3172   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 3173 
// 3174   /* Set HSION bit to the reset value */
// 3175   SET_BIT(RCC->CR, RCC_CR_HSION);
        LDR.N    R4,??DataTable5_1  ;; 0x40023800
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+0]
// 3176 
// 3177   /* Wait till HSI is ready */
// 3178   while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == RESET)
??HAL_RCC_DeInit_0:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BMI.N    ??HAL_RCC_DeInit_1
// 3179   {
// 3180     if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_DeInit_0
// 3181     {
// 3182       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_DeInit_2
// 3183     }
// 3184   }
// 3185 
// 3186   /* Set HSITRIM[4:0] bits to the reset value */
// 3187   SET_BIT(RCC->CR, RCC_CR_HSITRIM_4);
??HAL_RCC_DeInit_1:
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x80
        STR      R0,[R4, #+0]
// 3188 
// 3189   /* Get Start Tick */
// 3190   tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 3191 
// 3192   /* Reset CFGR register */
// 3193   CLEAR_REG(RCC->CFGR);
        LDR.N    R6,??DataTable5_7  ;; 0x40023808
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
// 3194 
// 3195   /* Wait till clock switch is ready */
// 3196   while (READ_BIT(RCC->CFGR, RCC_CFGR_SWS) != RESET)
??HAL_RCC_DeInit_3:
        LDR      R0,[R6, #+0]
        TST      R0,#0xC
        BEQ.N    ??HAL_RCC_DeInit_4
// 3197   {
// 3198     if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        MOVW     R1,#+5001
        CMP      R0,R1
        BCC.N    ??HAL_RCC_DeInit_3
// 3199     {
// 3200       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_DeInit_2
// 3201     }
// 3202   }
// 3203 
// 3204   /* Get Start Tick */
// 3205   tickstart = HAL_GetTick();
??HAL_RCC_DeInit_4:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 3206 
// 3207   /* Clear HSEON, HSEBYP and CSSON bits */
// 3208   CLEAR_BIT(RCC->CR, RCC_CR_HSEON | RCC_CR_HSEBYP | RCC_CR_CSSON);
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0xD0000
        STR      R0,[R4, #+0]
// 3209 
// 3210   /* Wait till HSE is disabled */
// 3211   while (READ_BIT(RCC->CR, RCC_CR_HSERDY) != RESET)
??HAL_RCC_DeInit_5:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??HAL_RCC_DeInit_6
// 3212   {
// 3213     if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+101
        BCC.N    ??HAL_RCC_DeInit_5
// 3214     {
// 3215       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_DeInit_2
// 3216     }
// 3217   }
// 3218 
// 3219   /* Get Start Tick */
// 3220   tickstart = HAL_GetTick();
??HAL_RCC_DeInit_6:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 3221 
// 3222   /* Clear PLLON bit */
// 3223   CLEAR_BIT(RCC->CR, RCC_CR_PLLON);
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x1000000
        STR      R0,[R4, #+0]
// 3224 
// 3225   /* Wait till PLL is disabled */
// 3226   while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != RESET)
??HAL_RCC_DeInit_7:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??HAL_RCC_DeInit_8
// 3227   {
// 3228     if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_DeInit_7
// 3229     {
// 3230       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_DeInit_2
// 3231     }
// 3232   }
// 3233 
// 3234 #if defined(RCC_PLLI2S_SUPPORT)
// 3235   /* Get Start Tick */
// 3236   tickstart = HAL_GetTick();
??HAL_RCC_DeInit_8:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
// 3237 
// 3238   /* Reset PLLI2SON bit */
// 3239   CLEAR_BIT(RCC->CR, RCC_CR_PLLI2SON);
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x4000000
        STR      R0,[R4, #+0]
// 3240 
// 3241   /* Wait till PLLI2S is disabled */
// 3242   while (READ_BIT(RCC->CR, RCC_CR_PLLI2SRDY) != RESET)
??HAL_RCC_DeInit_9:
        LDR      R0,[R4, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??HAL_RCC_DeInit_10
// 3243   {
// 3244     if ((HAL_GetTick() - tickstart) > PLLI2S_TIMEOUT_VALUE)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+3
        BCC.N    ??HAL_RCC_DeInit_9
// 3245     {
// 3246       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_RCC_DeInit_2
// 3247     }
// 3248   }
// 3249 #endif /* RCC_PLLI2S_SUPPORT */
// 3250 
// 3251 #if defined(RCC_PLLSAI_SUPPORT)
// 3252   /* Get Start Tick */
// 3253   tickstart = HAL_GetTick();
// 3254 
// 3255   /* Reset PLLSAI bit */
// 3256   CLEAR_BIT(RCC->CR, RCC_CR_PLLSAION);
// 3257 
// 3258   /* Wait till PLLSAI is disabled */
// 3259   while (READ_BIT(RCC->CR, RCC_CR_PLLSAIRDY) != RESET)
// 3260   {
// 3261     if ((HAL_GetTick() - tickstart) > PLLSAI_TIMEOUT_VALUE)
// 3262     {
// 3263       return HAL_TIMEOUT;
// 3264     }
// 3265   }
// 3266 #endif /* RCC_PLLSAI_SUPPORT */
// 3267 
// 3268   /* Once PLL, PLLI2S and PLLSAI are OFF, reset PLLCFGR register to default value */
// 3269 #if defined(STM32F412Cx) || defined(STM32F412Rx) || defined(STM32F412Vx) || defined(STM32F412Zx) || defined(STM32F413xx) || \ 
// 3270     defined(STM32F423xx) || defined(STM32F446xx) || defined(STM32F469xx) || defined(STM32F479xx)
// 3271   RCC->PLLCFGR = RCC_PLLCFGR_PLLM_4 | RCC_PLLCFGR_PLLN_6 | RCC_PLLCFGR_PLLN_7 | RCC_PLLCFGR_PLLQ_2 | RCC_PLLCFGR_PLLR_1;
// 3272 #elif defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx)
// 3273   RCC->PLLCFGR = RCC_PLLCFGR_PLLR_0 | RCC_PLLCFGR_PLLR_1 | RCC_PLLCFGR_PLLR_2 | RCC_PLLCFGR_PLLM_4 | RCC_PLLCFGR_PLLN_6 | RCC_PLLCFGR_PLLN_7 | RCC_PLLCFGR_PLLQ_0 | RCC_PLLCFGR_PLLQ_1 | RCC_PLLCFGR_PLLQ_2 | RCC_PLLCFGR_PLLQ_3;
// 3274 #else
// 3275   RCC->PLLCFGR = RCC_PLLCFGR_PLLM_4 | RCC_PLLCFGR_PLLN_6 | RCC_PLLCFGR_PLLN_7 | RCC_PLLCFGR_PLLQ_2;
??HAL_RCC_DeInit_10:
        LDR.N    R0,??DataTable5_13  ;; 0x4003010
        LDR.N    R1,??DataTable5_10  ;; 0x40023804
        STR      R0,[R1, #+0]
// 3276 #endif /* STM32F412Cx || STM32F412Rx || STM32F412Vx || STM32F412Zx || STM32F413xx || STM32F423xx || STM32F446xx || STM32F469xx || STM32F479xx */
// 3277 
// 3278   /* Reset PLLI2SCFGR register to default value */
// 3279 #if defined(STM32F412Cx) || defined(STM32F412Rx) || defined(STM32F412Vx) || defined(STM32F412Zx) || defined(STM32F413xx) || \ 
// 3280     defined(STM32F423xx) || defined(STM32F446xx)
// 3281   RCC->PLLI2SCFGR = RCC_PLLI2SCFGR_PLLI2SM_4 | RCC_PLLI2SCFGR_PLLI2SN_6 | RCC_PLLI2SCFGR_PLLI2SN_7 | RCC_PLLI2SCFGR_PLLI2SQ_2 | RCC_PLLI2SCFGR_PLLI2SR_1;
// 3282 #elif defined(STM32F401xC) || defined(STM32F401xE) || defined(STM32F405xx) || defined(STM32F415xx) || defined(STM32F407xx) || defined(STM32F417xx)
// 3283   RCC->PLLI2SCFGR = RCC_PLLI2SCFGR_PLLI2SN_6 | RCC_PLLI2SCFGR_PLLI2SN_7 | RCC_PLLI2SCFGR_PLLI2SR_1;
        LDR.N    R0,??DataTable5_14  ;; 0x20003000
        LDR.N    R1,??DataTable5_2  ;; 0x40023884
        STR      R0,[R1, #+0]
// 3284 #elif defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx) || defined(STM32F439xx) || defined(STM32F469xx) || defined(STM32F479xx)
// 3285   RCC->PLLI2SCFGR = RCC_PLLI2SCFGR_PLLI2SN_6 | RCC_PLLI2SCFGR_PLLI2SN_7 | RCC_PLLI2SCFGR_PLLI2SQ_2 | RCC_PLLI2SCFGR_PLLI2SR_1;
// 3286 #elif defined(STM32F411xE)
// 3287   RCC->PLLI2SCFGR = RCC_PLLI2SCFGR_PLLI2SM_4 | RCC_PLLI2SCFGR_PLLI2SN_6 | RCC_PLLI2SCFGR_PLLI2SN_7 | RCC_PLLI2SCFGR_PLLI2SR_1;
// 3288 #endif /* STM32F412Cx || STM32F412Rx || STM32F412Vx || STM32F412Zx || STM32F413xx || STM32F423xx || STM32F446xx */
// 3289 
// 3290   /* Reset PLLSAICFGR register */
// 3291 #if defined(STM32F427xx) || defined(STM32F429xx) || defined(STM32F437xx) || defined(STM32F439xx) || defined(STM32F469xx) || defined(STM32F479xx)
// 3292   RCC->PLLSAICFGR = RCC_PLLSAICFGR_PLLSAIN_6 | RCC_PLLSAICFGR_PLLSAIN_7 | RCC_PLLSAICFGR_PLLSAIQ_2 | RCC_PLLSAICFGR_PLLSAIR_1;
// 3293 #elif defined(STM32F446xx)
// 3294   RCC->PLLSAICFGR = RCC_PLLSAICFGR_PLLSAIM_4 | RCC_PLLSAICFGR_PLLSAIN_6 | RCC_PLLSAICFGR_PLLSAIN_7 | RCC_PLLSAICFGR_PLLSAIQ_2;
// 3295 #endif /* STM32F427xx || STM32F429xx || STM32F437xx || STM32F439xx || STM32F469xx || STM32F479xx */
// 3296 
// 3297   /* Disable all interrupts */
// 3298   CLEAR_BIT(RCC->CIR, RCC_CIR_LSIRDYIE | RCC_CIR_LSERDYIE | RCC_CIR_HSIRDYIE | RCC_CIR_HSERDYIE | RCC_CIR_PLLRDYIE);
        LDR.N    R0,??DataTable5_15  ;; 0x4002380c
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x1F00
        STR      R1,[R0, #+0]
// 3299 
// 3300 #if defined(RCC_CIR_PLLI2SRDYIE)
// 3301   CLEAR_BIT(RCC->CIR, RCC_CIR_PLLI2SRDYIE);
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x2000
        STR      R1,[R0, #+0]
// 3302 #endif /* RCC_CIR_PLLI2SRDYIE */
// 3303 
// 3304 #if defined(RCC_CIR_PLLSAIRDYIE)
// 3305   CLEAR_BIT(RCC->CIR, RCC_CIR_PLLSAIRDYIE);
// 3306 #endif /* RCC_CIR_PLLSAIRDYIE */
// 3307 
// 3308   /* Clear all interrupt flags */
// 3309   SET_BIT(RCC->CIR, RCC_CIR_LSIRDYC | RCC_CIR_LSERDYC | RCC_CIR_HSIRDYC | RCC_CIR_HSERDYC | RCC_CIR_PLLRDYC | RCC_CIR_CSSC);
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x9F0000
        STR      R1,[R0, #+0]
// 3310 
// 3311 #if defined(RCC_CIR_PLLI2SRDYC)
// 3312   SET_BIT(RCC->CIR, RCC_CIR_PLLI2SRDYC);
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x200000
        STR      R1,[R0, #+0]
// 3313 #endif /* RCC_CIR_PLLI2SRDYC */
// 3314 
// 3315 #if defined(RCC_CIR_PLLSAIRDYC)
// 3316   SET_BIT(RCC->CIR, RCC_CIR_PLLSAIRDYC);
// 3317 #endif /* RCC_CIR_PLLSAIRDYC */
// 3318 
// 3319   /* Clear LSION bit */
// 3320   CLEAR_BIT(RCC->CSR, RCC_CSR_LSION);
        LDR.N    R0,??DataTable5_16  ;; 0x40023874
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
// 3321 
// 3322   /* Reset all CSR flags */
// 3323   SET_BIT(RCC->CSR, RCC_CSR_RMVF);
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1000000
        STR      R1,[R0, #+0]
// 3324 
// 3325   /* Update the SystemCoreClock global variable */
// 3326   SystemCoreClock = HSI_VALUE;
        LDR.N    R0,??DataTable5_12  ;; 0xf42400
        LDR.N    R1,??DataTable5_17
        STR      R0,[R1, #+0]
// 3327 
// 3328   /* Adapt Systick interrupt period */
// 3329   if(HAL_InitTick(uwTickPrio) != HAL_OK)
        LDR.N    R0,??DataTable5_18
        LDR      R0,[R0, #+0]
          CFI FunCall HAL_InitTick
        BL       HAL_InitTick
        CMP      R0,#+0
        BEQ.N    ??HAL_RCC_DeInit_11
// 3330   {
// 3331     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_RCC_DeInit_2
// 3332   }
// 3333   else
// 3334   {
// 3335     return HAL_OK;
??HAL_RCC_DeInit_11:
        MOVS     R0,#+0
??HAL_RCC_DeInit_2:
        POP      {R4-R6,PC}       ;; return
// 3336   }
// 3337 }
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DATA32
        DC32     0x42470068

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DATA32
        DC32     0x40023800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DATA32
        DC32     0x40023884

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DATA32
        DC32     0x40023840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DATA32
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DATA32
        DC32     0x40023870

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DATA32
        DC32     0x42470e40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DATA32
        DC32     0x40023808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DATA32
        DC32     0xffffcff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DATA32
        DC32     0xbb8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DATA32
        DC32     0x40023804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DATA32
        DC32     0x17d7840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DATA32
        DC32     0xf42400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DATA32
        DC32     0x4003010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DATA32
        DC32     0x20003000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DATA32
        DC32     0x4002380c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DATA32
        DC32     0x40023874

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DATA32
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DATA32
        DC32     uwTickPrio

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 3338 
// 3339 #if defined(STM32F410Tx) || defined(STM32F410Cx) || defined(STM32F410Rx) || defined(STM32F446xx) || defined(STM32F469xx) || defined(STM32F479xx) || defined(STM32F412Zx) ||\ 
// 3340     defined(STM32F412Vx) || defined(STM32F412Rx) || defined(STM32F412Cx) || defined(STM32F413xx) || defined(STM32F423xx)
// 3341 /**
// 3342   * @brief  Initializes the RCC Oscillators according to the specified parameters in the
// 3343   *         RCC_OscInitTypeDef.
// 3344   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that
// 3345   *         contains the configuration information for the RCC Oscillators.
// 3346   * @note   The PLL is not disabled when used as system clock.
// 3347   * @note   Transitions LSE Bypass to LSE On and LSE On to LSE Bypass are not
// 3348   *         supported by this API. User should request a transition to LSE Off
// 3349   *         first and then LSE On or LSE Bypass.
// 3350   * @note   Transition HSE Bypass to HSE On and HSE On to HSE Bypass are not
// 3351   *         supported by this API. User should request a transition to HSE Off
// 3352   *         first and then HSE On or HSE Bypass.
// 3353   * @note   This function add the PLL/PLLR factor management during PLL configuration this feature
// 3354   *         is only available in STM32F410xx/STM32F446xx/STM32F469xx/STM32F479xx/STM32F412Zx/STM32F412Vx/STM32F412Rx/STM32F412Cx devices
// 3355   * @retval HAL status
// 3356   */
// 3357 HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
// 3358 {
// 3359   uint32_t tickstart, pll_config;
// 3360 
// 3361   /* Check Null pointer */
// 3362   if(RCC_OscInitStruct == NULL)
// 3363   {
// 3364     return HAL_ERROR;
// 3365   }
// 3366 
// 3367   /* Check the parameters */
// 3368   assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
// 3369   /*------------------------------- HSE Configuration ------------------------*/
// 3370   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
// 3371   {
// 3372     /* Check the parameters */
// 3373     assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
// 3374     /* When the HSE is used as system clock or clock source for PLL in these cases HSE will not disabled */
// 3375 #if defined(STM32F446xx)
// 3376     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE)                                                                     ||\ 
// 3377       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)) ||\ 
// 3378       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLLR) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
// 3379 #else
// 3380     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE)                                                                     ||\ 
// 3381       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
// 3382 #endif /* STM32F446xx */
// 3383     {
// 3384       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
// 3385       {
// 3386         return HAL_ERROR;
// 3387       }
// 3388     }
// 3389     else
// 3390     {
// 3391       /* Set the new HSE configuration ---------------------------------------*/
// 3392       __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
// 3393 
// 3394       /* Check the HSE State */
// 3395       if((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
// 3396       {
// 3397         /* Get Start Tick*/
// 3398         tickstart = HAL_GetTick();
// 3399 
// 3400         /* Wait till HSE is ready */
// 3401         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
// 3402         {
// 3403           if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
// 3404           {
// 3405             return HAL_TIMEOUT;
// 3406           }
// 3407         }
// 3408       }
// 3409       else
// 3410       {
// 3411         /* Get Start Tick*/
// 3412         tickstart = HAL_GetTick();
// 3413 
// 3414         /* Wait till HSE is bypassed or disabled */
// 3415         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
// 3416         {
// 3417           if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
// 3418           {
// 3419             return HAL_TIMEOUT;
// 3420           }
// 3421         }
// 3422       }
// 3423     }
// 3424   }
// 3425   /*----------------------------- HSI Configuration --------------------------*/
// 3426   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
// 3427   {
// 3428     /* Check the parameters */
// 3429     assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
// 3430     assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));
// 3431 
// 3432     /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
// 3433 #if defined(STM32F446xx)
// 3434     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI)                                                                     ||\ 
// 3435       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)) ||\ 
// 3436       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLLR) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
// 3437 #else
// 3438     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI)                                                                     ||\ 
// 3439       ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
// 3440 #endif /* STM32F446xx */
// 3441     {
// 3442       /* When HSI is used as system clock it will not disabled */
// 3443       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
// 3444       {
// 3445         return HAL_ERROR;
// 3446       }
// 3447       /* Otherwise, just the calibration is allowed */
// 3448       else
// 3449       {
// 3450         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
// 3451         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
// 3452       }
// 3453     }
// 3454     else
// 3455     {
// 3456       /* Check the HSI State */
// 3457       if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
// 3458       {
// 3459         /* Enable the Internal High Speed oscillator (HSI). */
// 3460         __HAL_RCC_HSI_ENABLE();
// 3461 
// 3462         /* Get Start Tick*/
// 3463         tickstart = HAL_GetTick();
// 3464 
// 3465         /* Wait till HSI is ready */
// 3466         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
// 3467         {
// 3468           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
// 3469           {
// 3470             return HAL_TIMEOUT;
// 3471           }
// 3472         }
// 3473 
// 3474         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
// 3475         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
// 3476       }
// 3477       else
// 3478       {
// 3479         /* Disable the Internal High Speed oscillator (HSI). */
// 3480         __HAL_RCC_HSI_DISABLE();
// 3481 
// 3482         /* Get Start Tick*/
// 3483         tickstart = HAL_GetTick();
// 3484 
// 3485         /* Wait till HSI is ready */
// 3486         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
// 3487         {
// 3488           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
// 3489           {
// 3490             return HAL_TIMEOUT;
// 3491           }
// 3492         }
// 3493       }
// 3494     }
// 3495   }
// 3496   /*------------------------------ LSI Configuration -------------------------*/
// 3497   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
// 3498   {
// 3499     /* Check the parameters */
// 3500     assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));
// 3501 
// 3502     /* Check the LSI State */
// 3503     if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
// 3504     {
// 3505       /* Enable the Internal Low Speed oscillator (LSI). */
// 3506       __HAL_RCC_LSI_ENABLE();
// 3507 
// 3508       /* Get Start Tick*/
// 3509       tickstart = HAL_GetTick();
// 3510 
// 3511       /* Wait till LSI is ready */
// 3512       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
// 3513       {
// 3514         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
// 3515         {
// 3516           return HAL_TIMEOUT;
// 3517         }
// 3518       }
// 3519     }
// 3520     else
// 3521     {
// 3522       /* Disable the Internal Low Speed oscillator (LSI). */
// 3523       __HAL_RCC_LSI_DISABLE();
// 3524 
// 3525       /* Get Start Tick*/
// 3526       tickstart = HAL_GetTick();
// 3527 
// 3528       /* Wait till LSI is ready */
// 3529       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
// 3530       {
// 3531         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
// 3532         {
// 3533           return HAL_TIMEOUT;
// 3534         }
// 3535       }
// 3536     }
// 3537   }
// 3538   /*------------------------------ LSE Configuration -------------------------*/
// 3539   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
// 3540   {
// 3541     FlagStatus       pwrclkchanged = RESET;
// 3542 
// 3543     /* Check the parameters */
// 3544     assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));
// 3545 
// 3546     /* Update LSE configuration in Backup Domain control register    */
// 3547     /* Requires to enable write access to Backup Domain of necessary */
// 3548     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
// 3549     {
// 3550       __HAL_RCC_PWR_CLK_ENABLE();
// 3551       pwrclkchanged = SET;
// 3552     }
// 3553 
// 3554     if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
// 3555     {
// 3556       /* Enable write access to Backup domain */
// 3557       SET_BIT(PWR->CR, PWR_CR_DBP);
// 3558 
// 3559       /* Wait for Backup domain Write protection disable */
// 3560       tickstart = HAL_GetTick();
// 3561 
// 3562       while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
// 3563       {
// 3564         if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
// 3565         {
// 3566           return HAL_TIMEOUT;
// 3567         }
// 3568       }
// 3569     }
// 3570 
// 3571     /* Set the new LSE configuration -----------------------------------------*/
// 3572     __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
// 3573     /* Check the LSE State */
// 3574     if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
// 3575     {
// 3576       /* Get Start Tick*/
// 3577       tickstart = HAL_GetTick();
// 3578 
// 3579       /* Wait till LSE is ready */
// 3580       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
// 3581       {
// 3582         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
// 3583         {
// 3584           return HAL_TIMEOUT;
// 3585         }
// 3586       }
// 3587     }
// 3588     else
// 3589     {
// 3590       /* Get Start Tick*/
// 3591       tickstart = HAL_GetTick();
// 3592 
// 3593       /* Wait till LSE is ready */
// 3594       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
// 3595       {
// 3596         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
// 3597         {
// 3598           return HAL_TIMEOUT;
// 3599         }
// 3600       }
// 3601     }
// 3602 
// 3603     /* Restore clock configuration if changed */
// 3604     if(pwrclkchanged == SET)
// 3605     {
// 3606       __HAL_RCC_PWR_CLK_DISABLE();
// 3607     }
// 3608   }
// 3609   /*-------------------------------- PLL Configuration -----------------------*/
// 3610   /* Check the parameters */
// 3611   assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
// 3612   if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
// 3613   {
// 3614     /* Check if the PLL is used as system clock or not */
// 3615     if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
// 3616     {
// 3617       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
// 3618       {
// 3619         /* Check the parameters */
// 3620         assert_param(IS_RCC_PLLSOURCE(RCC_OscInitStruct->PLL.PLLSource));
// 3621         assert_param(IS_RCC_PLLM_VALUE(RCC_OscInitStruct->PLL.PLLM));
// 3622         assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
// 3623         assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
// 3624         assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));
// 3625         assert_param(IS_RCC_PLLR_VALUE(RCC_OscInitStruct->PLL.PLLR));
// 3626 
// 3627         /* Disable the main PLL. */
// 3628         __HAL_RCC_PLL_DISABLE();
// 3629 
// 3630         /* Get Start Tick*/
// 3631         tickstart = HAL_GetTick();
// 3632 
// 3633         /* Wait till PLL is ready */
// 3634         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
// 3635         {
// 3636           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
// 3637           {
// 3638             return HAL_TIMEOUT;
// 3639           }
// 3640         }
// 3641 
// 3642         /* Configure the main PLL clock source, multiplication and division factors. */
// 3643         WRITE_REG(RCC->PLLCFGR, (RCC_OscInitStruct->PLL.PLLSource                                            | \ 
// 3644                                  RCC_OscInitStruct->PLL.PLLM                                                 | \ 
// 3645                                  (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)                       | \ 
// 3646                                  (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U) << RCC_PLLCFGR_PLLP_Pos)        | \ 
// 3647                                  (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)                       | \ 
// 3648                                  (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)));
// 3649         /* Enable the main PLL. */
// 3650         __HAL_RCC_PLL_ENABLE();
// 3651 
// 3652         /* Get Start Tick*/
// 3653         tickstart = HAL_GetTick();
// 3654 
// 3655         /* Wait till PLL is ready */
// 3656         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
// 3657         {
// 3658           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
// 3659           {
// 3660             return HAL_TIMEOUT;
// 3661           }
// 3662         }
// 3663       }
// 3664       else
// 3665       {
// 3666         /* Disable the main PLL. */
// 3667         __HAL_RCC_PLL_DISABLE();
// 3668 
// 3669         /* Get Start Tick*/
// 3670         tickstart = HAL_GetTick();
// 3671 
// 3672         /* Wait till PLL is ready */
// 3673         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
// 3674         {
// 3675           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
// 3676           {
// 3677             return HAL_TIMEOUT;
// 3678           }
// 3679         }
// 3680       }
// 3681     }
// 3682     else
// 3683     {
// 3684       /* Check if there is a request to disable the PLL used as System clock source */
// 3685       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
// 3686       {
// 3687         return HAL_ERROR;
// 3688       }
// 3689       else
// 3690       {
// 3691         /* Do not return HAL_ERROR if request repeats the current configuration */
// 3692         pll_config = RCC->PLLCFGR;
// 3693 #if defined (RCC_PLLCFGR_PLLR)
// 3694         if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
// 3695             (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
// 3696             (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
// 3697             (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
// 3698             (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
// 3699             (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)) ||
// 3700             (READ_BIT(pll_config, RCC_PLLCFGR_PLLR) != (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)))
// 3701 #else
// 3702         if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
// 3703             (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
// 3704             (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
// 3705             (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
// 3706             (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
// 3707             (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)))
// 3708 #endif
// 3709         {
// 3710           return HAL_ERROR;
// 3711         }
// 3712       }
// 3713     }
// 3714   }
// 3715   return HAL_OK;
// 3716 }
// 3717 
// 3718 /**
// 3719   * @brief  Configures the RCC_OscInitStruct according to the internal
// 3720   * RCC configuration registers.
// 3721   * @param  RCC_OscInitStruct pointer to an RCC_OscInitTypeDef structure that will be configured.
// 3722   *
// 3723   * @note   This function is only available in case of STM32F410xx/STM32F446xx/STM32F469xx/STM32F479xx/STM32F412Zx/STM32F412Vx/STM32F412Rx/STM32F412Cx devices.
// 3724   * @note   This function add the PLL/PLLR factor management
// 3725   * @retval None
// 3726   */
// 3727 void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
// 3728 {
// 3729   /* Set all possible values for the Oscillator type parameter ---------------*/
// 3730   RCC_OscInitStruct->OscillatorType = RCC_OSCILLATORTYPE_HSE | RCC_OSCILLATORTYPE_HSI | RCC_OSCILLATORTYPE_LSE | RCC_OSCILLATORTYPE_LSI;
// 3731 
// 3732   /* Get the HSE configuration -----------------------------------------------*/
// 3733   if((RCC->CR &RCC_CR_HSEBYP) == RCC_CR_HSEBYP)
// 3734   {
// 3735     RCC_OscInitStruct->HSEState = RCC_HSE_BYPASS;
// 3736   }
// 3737   else if((RCC->CR &RCC_CR_HSEON) == RCC_CR_HSEON)
// 3738   {
// 3739     RCC_OscInitStruct->HSEState = RCC_HSE_ON;
// 3740   }
// 3741   else
// 3742   {
// 3743     RCC_OscInitStruct->HSEState = RCC_HSE_OFF;
// 3744   }
// 3745 
// 3746   /* Get the HSI configuration -----------------------------------------------*/
// 3747   if((RCC->CR &RCC_CR_HSION) == RCC_CR_HSION)
// 3748   {
// 3749     RCC_OscInitStruct->HSIState = RCC_HSI_ON;
// 3750   }
// 3751   else
// 3752   {
// 3753     RCC_OscInitStruct->HSIState = RCC_HSI_OFF;
// 3754   }
// 3755 
// 3756   RCC_OscInitStruct->HSICalibrationValue = (uint32_t)((RCC->CR &RCC_CR_HSITRIM) >> RCC_CR_HSITRIM_Pos);
// 3757 
// 3758   /* Get the LSE configuration -----------------------------------------------*/
// 3759   if((RCC->BDCR &RCC_BDCR_LSEBYP) == RCC_BDCR_LSEBYP)
// 3760   {
// 3761     RCC_OscInitStruct->LSEState = RCC_LSE_BYPASS;
// 3762   }
// 3763   else if((RCC->BDCR &RCC_BDCR_LSEON) == RCC_BDCR_LSEON)
// 3764   {
// 3765     RCC_OscInitStruct->LSEState = RCC_LSE_ON;
// 3766   }
// 3767   else
// 3768   {
// 3769     RCC_OscInitStruct->LSEState = RCC_LSE_OFF;
// 3770   }
// 3771 
// 3772   /* Get the LSI configuration -----------------------------------------------*/
// 3773   if((RCC->CSR &RCC_CSR_LSION) == RCC_CSR_LSION)
// 3774   {
// 3775     RCC_OscInitStruct->LSIState = RCC_LSI_ON;
// 3776   }
// 3777   else
// 3778   {
// 3779     RCC_OscInitStruct->LSIState = RCC_LSI_OFF;
// 3780   }
// 3781 
// 3782   /* Get the PLL configuration -----------------------------------------------*/
// 3783   if((RCC->CR &RCC_CR_PLLON) == RCC_CR_PLLON)
// 3784   {
// 3785     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_ON;
// 3786   }
// 3787   else
// 3788   {
// 3789     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_OFF;
// 3790   }
// 3791   RCC_OscInitStruct->PLL.PLLSource = (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
// 3792   RCC_OscInitStruct->PLL.PLLM = (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM);
// 3793   RCC_OscInitStruct->PLL.PLLN = (uint32_t)((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
// 3794   RCC_OscInitStruct->PLL.PLLP = (uint32_t)((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) + RCC_PLLCFGR_PLLP_0) << 1U) >> RCC_PLLCFGR_PLLP_Pos);
// 3795   RCC_OscInitStruct->PLL.PLLQ = (uint32_t)((RCC->PLLCFGR & RCC_PLLCFGR_PLLQ) >> RCC_PLLCFGR_PLLQ_Pos);
// 3796   RCC_OscInitStruct->PLL.PLLR = (uint32_t)((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos);
// 3797 }
// 3798 #endif /* STM32F410xx || STM32F446xx || STM32F469xx || STM32F479xx || STM32F412Zx || STM32F412Vx || STM32F412Rx || STM32F412Cx || STM32F413xx || STM32F423xx */
// 3799 
// 3800 #endif /* HAL_RCC_MODULE_ENABLED */
// 3801 /**
// 3802   * @}
// 3803   */
// 3804 
// 3805 /**
// 3806   * @}
// 3807   */
// 3808 
// 
// 920 bytes in section .text
// 
// 920 bytes of CODE memory
//
//Errors: none
//Warnings: none
