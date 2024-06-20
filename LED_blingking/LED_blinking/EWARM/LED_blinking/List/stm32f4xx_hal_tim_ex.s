///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_tim_ex.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW4FB.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_tim_ex.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_tim_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1


        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_tim_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_tim_ex.c
//    4   * @author  MCD Application Team
//    5   * @brief   TIM HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities of the Timer Extended peripheral:
//    8   *           + Time Hall Sensor Interface Initialization
//    9   *           + Time Hall Sensor Interface Start
//   10   *           + Time Complementary signal break and dead time configuration
//   11   *           + Time Master and Slave synchronization configuration
//   12   *           + Timer remapping capabilities configuration
//   13   ******************************************************************************
//   14   * @attention
//   15   *
//   16   * Copyright (c) 2016 STMicroelectronics.
//   17   * All rights reserved.
//   18   *
//   19   * This software is licensed under terms that can be found in the LICENSE file
//   20   * in the root directory of this software component.
//   21   * If no LICENSE file comes with this software, it is provided AS-IS.
//   22   *
//   23   ******************************************************************************
//   24   @verbatim
//   25   ==============================================================================
//   26                       ##### TIMER Extended features #####
//   27   ==============================================================================
//   28   [..]
//   29     The Timer Extended features include:
//   30     (#) Complementary outputs with programmable dead-time for :
//   31         (++) Output Compare
//   32         (++) PWM generation (Edge and Center-aligned Mode)
//   33         (++) One-pulse mode output
//   34     (#) Synchronization circuit to control the timer with external signals and to
//   35         interconnect several timers together.
//   36     (#) Break input to put the timer output signals in reset state or in a known state.
//   37     (#) Supports incremental (quadrature) encoder and hall-sensor circuitry for
//   38         positioning purposes
//   39 
//   40             ##### How to use this driver #####
//   41   ==============================================================================
//   42     [..]
//   43      (#) Initialize the TIM low level resources by implementing the following functions
//   44          depending on the selected feature:
//   45            (++) Hall Sensor output : HAL_TIMEx_HallSensor_MspInit()
//   46 
//   47      (#) Initialize the TIM low level resources :
//   48         (##) Enable the TIM interface clock using __HAL_RCC_TIMx_CLK_ENABLE();
//   49         (##) TIM pins configuration
//   50             (+++) Enable the clock for the TIM GPIOs using the following function:
//   51               __HAL_RCC_GPIOx_CLK_ENABLE();
//   52             (+++) Configure these TIM pins in Alternate function mode using HAL_GPIO_Init();
//   53 
//   54      (#) The external Clock can be configured, if needed (the default clock is the
//   55          internal clock from the APBx), using the following function:
//   56          HAL_TIM_ConfigClockSource, the clock configuration should be done before
//   57          any start function.
//   58 
//   59      (#) Configure the TIM in the desired functioning mode using one of the
//   60          initialization function of this driver:
//   61           (++) HAL_TIMEx_HallSensor_Init() and HAL_TIMEx_ConfigCommutEvent(): to use the
//   62                Timer Hall Sensor Interface and the commutation event with the corresponding
//   63                Interrupt and DMA request if needed (Note that One Timer is used to interface
//   64                with the Hall sensor Interface and another Timer should be used to use
//   65                the commutation event).
//   66 
//   67      (#) Activate the TIM peripheral using one of the start functions:
//   68            (++) Complementary Output Compare : HAL_TIMEx_OCN_Start(), HAL_TIMEx_OCN_Start_DMA(),
//   69                 HAL_TIMEx_OCN_Start_IT()
//   70            (++) Complementary PWM generation : HAL_TIMEx_PWMN_Start(), HAL_TIMEx_PWMN_Start_DMA(),
//   71                 HAL_TIMEx_PWMN_Start_IT()
//   72            (++) Complementary One-pulse mode output : HAL_TIMEx_OnePulseN_Start(), HAL_TIMEx_OnePulseN_Start_IT()
//   73            (++) Hall Sensor output : HAL_TIMEx_HallSensor_Start(), HAL_TIMEx_HallSensor_Start_DMA(),
//   74                 HAL_TIMEx_HallSensor_Start_IT().
//   75 
//   76   @endverbatim
//   77   ******************************************************************************
//   78   */
//   79 
//   80 /* Includes ------------------------------------------------------------------*/
//   81 #include "stm32f4xx_hal.h"
//   82 
//   83 /** @addtogroup STM32F4xx_HAL_Driver
//   84   * @{
//   85   */
//   86 
//   87 /** @defgroup TIMEx TIMEx
//   88   * @brief TIM Extended HAL module driver
//   89   * @{
//   90   */
//   91 
//   92 #ifdef HAL_TIM_MODULE_ENABLED
//   93 
//   94 /* Private typedef -----------------------------------------------------------*/
//   95 /* Private define ------------------------------------------------------------*/
//   96 /* Private macros ------------------------------------------------------------*/
//   97 /* Private variables ---------------------------------------------------------*/
//   98 /* Private function prototypes -----------------------------------------------*/
//   99 static void TIM_DMADelayPulseNCplt(DMA_HandleTypeDef *hdma);
//  100 static void TIM_DMAErrorCCxN(DMA_HandleTypeDef *hdma);
//  101 static void TIM_CCxNChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelNState);
//  102 
//  103 /* Exported functions --------------------------------------------------------*/
//  104 /** @defgroup TIMEx_Exported_Functions TIM Extended Exported Functions
//  105   * @{
//  106   */
//  107 
//  108 /** @defgroup TIMEx_Exported_Functions_Group1 Extended Timer Hall Sensor functions
//  109   * @brief    Timer Hall Sensor functions
//  110   *
//  111 @verbatim
//  112   ==============================================================================
//  113                       ##### Timer Hall Sensor functions #####
//  114   ==============================================================================
//  115   [..]
//  116     This section provides functions allowing to:
//  117     (+) Initialize and configure TIM HAL Sensor.
//  118     (+) De-initialize TIM HAL Sensor.
//  119     (+) Start the Hall Sensor Interface.
//  120     (+) Stop the Hall Sensor Interface.
//  121     (+) Start the Hall Sensor Interface and enable interrupts.
//  122     (+) Stop the Hall Sensor Interface and disable interrupts.
//  123     (+) Start the Hall Sensor Interface and enable DMA transfers.
//  124     (+) Stop the Hall Sensor Interface and disable DMA transfers.
//  125 
//  126 @endverbatim
//  127   * @{
//  128   */
//  129 /**
//  130   * @brief  Initializes the TIM Hall Sensor Interface and initialize the associated handle.
//  131   * @note   When the timer instance is initialized in Hall Sensor Interface mode,
//  132   *         timer channels 1 and channel 2 are reserved and cannot be used for
//  133   *         other purpose.
//  134   * @param  htim TIM Hall Sensor Interface handle
//  135   * @param  sConfig TIM Hall Sensor configuration structure
//  136   * @retval HAL status
//  137   */
//  138 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Init(TIM_HandleTypeDef *htim, const TIM_HallSensor_InitTypeDef *sConfig)
//  139 {
//  140   TIM_OC_InitTypeDef OC_Config;
//  141 
//  142   /* Check the TIM handle allocation */
//  143   if (htim == NULL)
//  144   {
//  145     return HAL_ERROR;
//  146   }
//  147 
//  148   /* Check the parameters */
//  149   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  150   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  151   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  152   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
//  153   assert_param(IS_TIM_IC_POLARITY(sConfig->IC1Polarity));
//  154   assert_param(IS_TIM_PERIOD(htim, htim->Init.Period));
//  155   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC1Prescaler));
//  156   assert_param(IS_TIM_IC_FILTER(sConfig->IC1Filter));
//  157 
//  158   if (htim->State == HAL_TIM_STATE_RESET)
//  159   {
//  160     /* Allocate lock resource and initialize it */
//  161     htim->Lock = HAL_UNLOCKED;
//  162 
//  163 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  164     /* Reset interrupt callbacks to legacy week callbacks */
//  165     TIM_ResetCallback(htim);
//  166 
//  167     if (htim->HallSensor_MspInitCallback == NULL)
//  168     {
//  169       htim->HallSensor_MspInitCallback = HAL_TIMEx_HallSensor_MspInit;
//  170     }
//  171     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  172     htim->HallSensor_MspInitCallback(htim);
//  173 #else
//  174     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
//  175     HAL_TIMEx_HallSensor_MspInit(htim);
//  176 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  177   }
//  178 
//  179   /* Set the TIM state */
//  180   htim->State = HAL_TIM_STATE_BUSY;
//  181 
//  182   /* Configure the Time base in the Encoder Mode */
//  183   TIM_Base_SetConfig(htim->Instance, &htim->Init);
//  184 
//  185   /* Configure the Channel 1 as Input Channel to interface with the three Outputs of the  Hall sensor */
//  186   TIM_TI1_SetConfig(htim->Instance, sConfig->IC1Polarity, TIM_ICSELECTION_TRC, sConfig->IC1Filter);
//  187 
//  188   /* Reset the IC1PSC Bits */
//  189   htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
//  190   /* Set the IC1PSC value */
//  191   htim->Instance->CCMR1 |= sConfig->IC1Prescaler;
//  192 
//  193   /* Enable the Hall sensor interface (XOR function of the three inputs) */
//  194   htim->Instance->CR2 |= TIM_CR2_TI1S;
//  195 
//  196   /* Select the TIM_TS_TI1F_ED signal as Input trigger for the TIM */
//  197   htim->Instance->SMCR &= ~TIM_SMCR_TS;
//  198   htim->Instance->SMCR |= TIM_TS_TI1F_ED;
//  199 
//  200   /* Use the TIM_TS_TI1F_ED signal to reset the TIM counter each edge detection */
//  201   htim->Instance->SMCR &= ~TIM_SMCR_SMS;
//  202   htim->Instance->SMCR |= TIM_SLAVEMODE_RESET;
//  203 
//  204   /* Program channel 2 in PWM 2 mode with the desired Commutation_Delay*/
//  205   OC_Config.OCFastMode = TIM_OCFAST_DISABLE;
//  206   OC_Config.OCIdleState = TIM_OCIDLESTATE_RESET;
//  207   OC_Config.OCMode = TIM_OCMODE_PWM2;
//  208   OC_Config.OCNIdleState = TIM_OCNIDLESTATE_RESET;
//  209   OC_Config.OCNPolarity = TIM_OCNPOLARITY_HIGH;
//  210   OC_Config.OCPolarity = TIM_OCPOLARITY_HIGH;
//  211   OC_Config.Pulse = sConfig->Commutation_Delay;
//  212 
//  213   TIM_OC2_SetConfig(htim->Instance, &OC_Config);
//  214 
//  215   /* Select OC2REF as trigger output on TRGO: write the MMS bits in the TIMx_CR2
//  216     register to 101 */
//  217   htim->Instance->CR2 &= ~TIM_CR2_MMS;
//  218   htim->Instance->CR2 |= TIM_TRGO_OC2REF;
//  219 
//  220   /* Initialize the DMA burst operation state */
//  221   htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
//  222 
//  223   /* Initialize the TIM channels state */
//  224   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  225   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
//  226   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  227   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
//  228 
//  229   /* Initialize the TIM state*/
//  230   htim->State = HAL_TIM_STATE_READY;
//  231 
//  232   return HAL_OK;
//  233 }
//  234 
//  235 /**
//  236   * @brief  DeInitializes the TIM Hall Sensor interface
//  237   * @param  htim TIM Hall Sensor Interface handle
//  238   * @retval HAL status
//  239   */
//  240 HAL_StatusTypeDef HAL_TIMEx_HallSensor_DeInit(TIM_HandleTypeDef *htim)
//  241 {
//  242   /* Check the parameters */
//  243   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  244 
//  245   htim->State = HAL_TIM_STATE_BUSY;
//  246 
//  247   /* Disable the TIM Peripheral Clock */
//  248   __HAL_TIM_DISABLE(htim);
//  249 
//  250 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  251   if (htim->HallSensor_MspDeInitCallback == NULL)
//  252   {
//  253     htim->HallSensor_MspDeInitCallback = HAL_TIMEx_HallSensor_MspDeInit;
//  254   }
//  255   /* DeInit the low level hardware */
//  256   htim->HallSensor_MspDeInitCallback(htim);
//  257 #else
//  258   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
//  259   HAL_TIMEx_HallSensor_MspDeInit(htim);
//  260 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  261 
//  262   /* Change the DMA burst operation state */
//  263   htim->DMABurstState = HAL_DMA_BURST_STATE_RESET;
//  264 
//  265   /* Change the TIM channels state */
//  266   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_RESET);
//  267   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_RESET);
//  268   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_RESET);
//  269   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_RESET);
//  270 
//  271   /* Change TIM state */
//  272   htim->State = HAL_TIM_STATE_RESET;
//  273 
//  274   /* Release Lock */
//  275   __HAL_UNLOCK(htim);
//  276 
//  277   return HAL_OK;
//  278 }
//  279 
//  280 /**
//  281   * @brief  Initializes the TIM Hall Sensor MSP.
//  282   * @param  htim TIM Hall Sensor Interface handle
//  283   * @retval None
//  284   */
//  285 __weak void HAL_TIMEx_HallSensor_MspInit(TIM_HandleTypeDef *htim)
//  286 {
//  287   /* Prevent unused argument(s) compilation warning */
//  288   UNUSED(htim);
//  289 
//  290   /* NOTE : This function should not be modified, when the callback is needed,
//  291             the HAL_TIMEx_HallSensor_MspInit could be implemented in the user file
//  292    */
//  293 }
//  294 
//  295 /**
//  296   * @brief  DeInitializes TIM Hall Sensor MSP.
//  297   * @param  htim TIM Hall Sensor Interface handle
//  298   * @retval None
//  299   */
//  300 __weak void HAL_TIMEx_HallSensor_MspDeInit(TIM_HandleTypeDef *htim)
//  301 {
//  302   /* Prevent unused argument(s) compilation warning */
//  303   UNUSED(htim);
//  304 
//  305   /* NOTE : This function should not be modified, when the callback is needed,
//  306             the HAL_TIMEx_HallSensor_MspDeInit could be implemented in the user file
//  307    */
//  308 }
//  309 
//  310 /**
//  311   * @brief  Starts the TIM Hall Sensor Interface.
//  312   * @param  htim TIM Hall Sensor Interface handle
//  313   * @retval HAL status
//  314   */
//  315 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start(TIM_HandleTypeDef *htim)
//  316 {
//  317   uint32_t tmpsmcr;
//  318   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
//  319   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
//  320   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
//  321   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
//  322 
//  323   /* Check the parameters */
//  324   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  325 
//  326   /* Check the TIM channels state */
//  327   if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
//  328       || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
//  329       || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
//  330       || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
//  331   {
//  332     return HAL_ERROR;
//  333   }
//  334 
//  335   /* Set the TIM channels state */
//  336   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
//  337   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
//  338   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
//  339   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
//  340 
//  341   /* Enable the Input Capture channel 1
//  342   (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1,
//  343   TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  344   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
//  345 
//  346   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  347   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  348   {
//  349     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  350     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  351     {
//  352       __HAL_TIM_ENABLE(htim);
//  353     }
//  354   }
//  355   else
//  356   {
//  357     __HAL_TIM_ENABLE(htim);
//  358   }
//  359 
//  360   /* Return function status */
//  361   return HAL_OK;
//  362 }
//  363 
//  364 /**
//  365   * @brief  Stops the TIM Hall sensor Interface.
//  366   * @param  htim TIM Hall Sensor Interface handle
//  367   * @retval HAL status
//  368   */
//  369 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop(TIM_HandleTypeDef *htim)
//  370 {
//  371   /* Check the parameters */
//  372   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  373 
//  374   /* Disable the Input Capture channels 1, 2 and 3
//  375   (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1,
//  376   TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  377   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
//  378 
//  379   /* Disable the Peripheral */
//  380   __HAL_TIM_DISABLE(htim);
//  381 
//  382   /* Set the TIM channels state */
//  383   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  384   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
//  385   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  386   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
//  387 
//  388   /* Return function status */
//  389   return HAL_OK;
//  390 }
//  391 
//  392 /**
//  393   * @brief  Starts the TIM Hall Sensor Interface in interrupt mode.
//  394   * @param  htim TIM Hall Sensor Interface handle
//  395   * @retval HAL status
//  396   */
//  397 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_IT(TIM_HandleTypeDef *htim)
//  398 {
//  399   uint32_t tmpsmcr;
//  400   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
//  401   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
//  402   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
//  403   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
//  404 
//  405   /* Check the parameters */
//  406   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  407 
//  408   /* Check the TIM channels state */
//  409   if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
//  410       || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
//  411       || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
//  412       || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
//  413   {
//  414     return HAL_ERROR;
//  415   }
//  416 
//  417   /* Set the TIM channels state */
//  418   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
//  419   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
//  420   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
//  421   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
//  422 
//  423   /* Enable the capture compare Interrupts 1 event */
//  424   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  425 
//  426   /* Enable the Input Capture channel 1
//  427   (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1,
//  428   TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  429   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
//  430 
//  431   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  432   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  433   {
//  434     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  435     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  436     {
//  437       __HAL_TIM_ENABLE(htim);
//  438     }
//  439   }
//  440   else
//  441   {
//  442     __HAL_TIM_ENABLE(htim);
//  443   }
//  444 
//  445   /* Return function status */
//  446   return HAL_OK;
//  447 }
//  448 
//  449 /**
//  450   * @brief  Stops the TIM Hall Sensor Interface in interrupt mode.
//  451   * @param  htim TIM Hall Sensor Interface handle
//  452   * @retval HAL status
//  453   */
//  454 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_IT(TIM_HandleTypeDef *htim)
//  455 {
//  456   /* Check the parameters */
//  457   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  458 
//  459   /* Disable the Input Capture channel 1
//  460   (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1,
//  461   TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  462   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
//  463 
//  464   /* Disable the capture compare Interrupts event */
//  465   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
//  466 
//  467   /* Disable the Peripheral */
//  468   __HAL_TIM_DISABLE(htim);
//  469 
//  470   /* Set the TIM channels state */
//  471   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  472   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
//  473   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  474   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
//  475 
//  476   /* Return function status */
//  477   return HAL_OK;
//  478 }
//  479 
//  480 /**
//  481   * @brief  Starts the TIM Hall Sensor Interface in DMA mode.
//  482   * @param  htim TIM Hall Sensor Interface handle
//  483   * @param  pData The destination Buffer address.
//  484   * @param  Length The length of data to be transferred from TIM peripheral to memory.
//  485   * @retval HAL status
//  486   */
//  487 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length)
//  488 {
//  489   uint32_t tmpsmcr;
//  490   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
//  491   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
//  492 
//  493   /* Check the parameters */
//  494   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  495 
//  496   /* Set the TIM channel state */
//  497   if ((channel_1_state == HAL_TIM_CHANNEL_STATE_BUSY)
//  498       || (complementary_channel_1_state == HAL_TIM_CHANNEL_STATE_BUSY))
//  499   {
//  500     return HAL_BUSY;
//  501   }
//  502   else if ((channel_1_state == HAL_TIM_CHANNEL_STATE_READY)
//  503            && (complementary_channel_1_state == HAL_TIM_CHANNEL_STATE_READY))
//  504   {
//  505     if ((pData == NULL) || (Length == 0U))
//  506     {
//  507       return HAL_ERROR;
//  508     }
//  509     else
//  510     {
//  511       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
//  512       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
//  513     }
//  514   }
//  515   else
//  516   {
//  517     return HAL_ERROR;
//  518   }
//  519 
//  520   /* Enable the Input Capture channel 1
//  521   (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1,
//  522   TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  523   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
//  524 
//  525   /* Set the DMA Input Capture 1 Callbacks */
//  526   htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
//  527   htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
//  528   /* Set the DMA error callback */
//  529   htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
//  530 
//  531   /* Enable the DMA stream for Capture 1*/
//  532   if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData, Length) != HAL_OK)
//  533   {
//  534     /* Return error status */
//  535     return HAL_ERROR;
//  536   }
//  537   /* Enable the capture compare 1 Interrupt */
//  538   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
//  539 
//  540   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  541   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  542   {
//  543     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  544     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  545     {
//  546       __HAL_TIM_ENABLE(htim);
//  547     }
//  548   }
//  549   else
//  550   {
//  551     __HAL_TIM_ENABLE(htim);
//  552   }
//  553 
//  554   /* Return function status */
//  555   return HAL_OK;
//  556 }
//  557 
//  558 /**
//  559   * @brief  Stops the TIM Hall Sensor Interface in DMA mode.
//  560   * @param  htim TIM Hall Sensor Interface handle
//  561   * @retval HAL status
//  562   */
//  563 HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_DMA(TIM_HandleTypeDef *htim)
//  564 {
//  565   /* Check the parameters */
//  566   assert_param(IS_TIM_HALL_SENSOR_INTERFACE_INSTANCE(htim->Instance));
//  567 
//  568   /* Disable the Input Capture channel 1
//  569   (in the Hall Sensor Interface the three possible channels that can be used are TIM_CHANNEL_1,
//  570   TIM_CHANNEL_2 and TIM_CHANNEL_3) */
//  571   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
//  572 
//  573 
//  574   /* Disable the capture compare Interrupts 1 event */
//  575   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
//  576 
//  577   (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
//  578 
//  579   /* Disable the Peripheral */
//  580   __HAL_TIM_DISABLE(htim);
//  581 
//  582   /* Set the TIM channel state */
//  583   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  584   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
//  585 
//  586   /* Return function status */
//  587   return HAL_OK;
//  588 }
//  589 
//  590 /**
//  591   * @}
//  592   */
//  593 
//  594 /** @defgroup TIMEx_Exported_Functions_Group2 Extended Timer Complementary Output Compare functions
//  595   *  @brief   Timer Complementary Output Compare functions
//  596   *
//  597 @verbatim
//  598   ==============================================================================
//  599               ##### Timer Complementary Output Compare functions #####
//  600   ==============================================================================
//  601   [..]
//  602     This section provides functions allowing to:
//  603     (+) Start the Complementary Output Compare/PWM.
//  604     (+) Stop the Complementary Output Compare/PWM.
//  605     (+) Start the Complementary Output Compare/PWM and enable interrupts.
//  606     (+) Stop the Complementary Output Compare/PWM and disable interrupts.
//  607     (+) Start the Complementary Output Compare/PWM and enable DMA transfers.
//  608     (+) Stop the Complementary Output Compare/PWM and disable DMA transfers.
//  609 
//  610 @endverbatim
//  611   * @{
//  612   */
//  613 
//  614 /**
//  615   * @brief  Starts the TIM Output Compare signal generation on the complementary
//  616   *         output.
//  617   * @param  htim TIM Output Compare handle
//  618   * @param  Channel TIM Channel to be enabled
//  619   *          This parameter can be one of the following values:
//  620   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  621   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  622   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  623   * @retval HAL status
//  624   */
//  625 HAL_StatusTypeDef HAL_TIMEx_OCN_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
//  626 {
//  627   uint32_t tmpsmcr;
//  628 
//  629   /* Check the parameters */
//  630   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  631 
//  632   /* Check the TIM complementary channel state */
//  633   if (TIM_CHANNEL_N_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
//  634   {
//  635     return HAL_ERROR;
//  636   }
//  637 
//  638   /* Set the TIM complementary channel state */
//  639   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
//  640 
//  641   /* Enable the Capture compare channel N */
//  642   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
//  643 
//  644   /* Enable the Main Output */
//  645   __HAL_TIM_MOE_ENABLE(htim);
//  646 
//  647   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  648   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  649   {
//  650     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  651     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  652     {
//  653       __HAL_TIM_ENABLE(htim);
//  654     }
//  655   }
//  656   else
//  657   {
//  658     __HAL_TIM_ENABLE(htim);
//  659   }
//  660 
//  661   /* Return function status */
//  662   return HAL_OK;
//  663 }
//  664 
//  665 /**
//  666   * @brief  Stops the TIM Output Compare signal generation on the complementary
//  667   *         output.
//  668   * @param  htim TIM handle
//  669   * @param  Channel TIM Channel to be disabled
//  670   *          This parameter can be one of the following values:
//  671   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  672   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  673   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  674   * @retval HAL status
//  675   */
//  676 HAL_StatusTypeDef HAL_TIMEx_OCN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
//  677 {
//  678   /* Check the parameters */
//  679   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  680 
//  681   /* Disable the Capture compare channel N */
//  682   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
//  683 
//  684   /* Disable the Main Output */
//  685   __HAL_TIM_MOE_DISABLE(htim);
//  686 
//  687   /* Disable the Peripheral */
//  688   __HAL_TIM_DISABLE(htim);
//  689 
//  690   /* Set the TIM complementary channel state */
//  691   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
//  692 
//  693   /* Return function status */
//  694   return HAL_OK;
//  695 }
//  696 
//  697 /**
//  698   * @brief  Starts the TIM Output Compare signal generation in interrupt mode
//  699   *         on the complementary output.
//  700   * @param  htim TIM OC handle
//  701   * @param  Channel TIM Channel to be enabled
//  702   *          This parameter can be one of the following values:
//  703   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  704   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  705   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  706   * @retval HAL status
//  707   */
//  708 HAL_StatusTypeDef HAL_TIMEx_OCN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  709 {
//  710   HAL_StatusTypeDef status = HAL_OK;
//  711   uint32_t tmpsmcr;
//  712 
//  713   /* Check the parameters */
//  714   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  715 
//  716   /* Check the TIM complementary channel state */
//  717   if (TIM_CHANNEL_N_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
//  718   {
//  719     return HAL_ERROR;
//  720   }
//  721 
//  722   /* Set the TIM complementary channel state */
//  723   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
//  724 
//  725   switch (Channel)
//  726   {
//  727     case TIM_CHANNEL_1:
//  728     {
//  729       /* Enable the TIM Output Compare interrupt */
//  730       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  731       break;
//  732     }
//  733 
//  734     case TIM_CHANNEL_2:
//  735     {
//  736       /* Enable the TIM Output Compare interrupt */
//  737       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
//  738       break;
//  739     }
//  740 
//  741     case TIM_CHANNEL_3:
//  742     {
//  743       /* Enable the TIM Output Compare interrupt */
//  744       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
//  745       break;
//  746     }
//  747 
//  748 
//  749     default:
//  750       status = HAL_ERROR;
//  751       break;
//  752   }
//  753 
//  754   if (status == HAL_OK)
//  755   {
//  756     /* Enable the TIM Break interrupt */
//  757     __HAL_TIM_ENABLE_IT(htim, TIM_IT_BREAK);
//  758 
//  759     /* Enable the Capture compare channel N */
//  760     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
//  761 
//  762     /* Enable the Main Output */
//  763     __HAL_TIM_MOE_ENABLE(htim);
//  764 
//  765     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  766     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  767     {
//  768       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  769       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  770       {
//  771         __HAL_TIM_ENABLE(htim);
//  772       }
//  773     }
//  774     else
//  775     {
//  776       __HAL_TIM_ENABLE(htim);
//  777     }
//  778   }
//  779 
//  780   /* Return function status */
//  781   return status;
//  782 }
//  783 
//  784 /**
//  785   * @brief  Stops the TIM Output Compare signal generation in interrupt mode
//  786   *         on the complementary output.
//  787   * @param  htim TIM Output Compare handle
//  788   * @param  Channel TIM Channel to be disabled
//  789   *          This parameter can be one of the following values:
//  790   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  791   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  792   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  793   * @retval HAL status
//  794   */
//  795 HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  796 {
//  797   HAL_StatusTypeDef status = HAL_OK;
//  798   uint32_t tmpccer;
//  799 
//  800   /* Check the parameters */
//  801   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  802 
//  803   switch (Channel)
//  804   {
//  805     case TIM_CHANNEL_1:
//  806     {
//  807       /* Disable the TIM Output Compare interrupt */
//  808       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
//  809       break;
//  810     }
//  811 
//  812     case TIM_CHANNEL_2:
//  813     {
//  814       /* Disable the TIM Output Compare interrupt */
//  815       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
//  816       break;
//  817     }
//  818 
//  819     case TIM_CHANNEL_3:
//  820     {
//  821       /* Disable the TIM Output Compare interrupt */
//  822       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
//  823       break;
//  824     }
//  825 
//  826     default:
//  827       status = HAL_ERROR;
//  828       break;
//  829   }
//  830 
//  831   if (status == HAL_OK)
//  832   {
//  833     /* Disable the Capture compare channel N */
//  834     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
//  835 
//  836     /* Disable the TIM Break interrupt (only if no more channel is active) */
//  837     tmpccer = htim->Instance->CCER;
//  838     if ((tmpccer & TIM_CCER_CCxNE_MASK) == (uint32_t)RESET)
//  839     {
//  840       __HAL_TIM_DISABLE_IT(htim, TIM_IT_BREAK);
//  841     }
//  842 
//  843     /* Disable the Main Output */
//  844     __HAL_TIM_MOE_DISABLE(htim);
//  845 
//  846     /* Disable the Peripheral */
//  847     __HAL_TIM_DISABLE(htim);
//  848 
//  849     /* Set the TIM complementary channel state */
//  850     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
//  851   }
//  852 
//  853   /* Return function status */
//  854   return status;
//  855 }
//  856 
//  857 /**
//  858   * @brief  Starts the TIM Output Compare signal generation in DMA mode
//  859   *         on the complementary output.
//  860   * @param  htim TIM Output Compare handle
//  861   * @param  Channel TIM Channel to be enabled
//  862   *          This parameter can be one of the following values:
//  863   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  864   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  865   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  866   * @param  pData The source Buffer address.
//  867   * @param  Length The length of data to be transferred from memory to TIM peripheral
//  868   * @retval HAL status
//  869   */
//  870 HAL_StatusTypeDef HAL_TIMEx_OCN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
//  871                                           uint16_t Length)
//  872 {
//  873   HAL_StatusTypeDef status = HAL_OK;
//  874   uint32_t tmpsmcr;
//  875 
//  876   /* Check the parameters */
//  877   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
//  878 
//  879   /* Set the TIM complementary channel state */
//  880   if (TIM_CHANNEL_N_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_BUSY)
//  881   {
//  882     return HAL_BUSY;
//  883   }
//  884   else if (TIM_CHANNEL_N_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_READY)
//  885   {
//  886     if ((pData == NULL) || (Length == 0U))
//  887     {
//  888       return HAL_ERROR;
//  889     }
//  890     else
//  891     {
//  892       TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
//  893     }
//  894   }
//  895   else
//  896   {
//  897     return HAL_ERROR;
//  898   }
//  899 
//  900   switch (Channel)
//  901   {
//  902     case TIM_CHANNEL_1:
//  903     {
//  904       /* Set the DMA compare callbacks */
//  905       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseNCplt;
//  906       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  907 
//  908       /* Set the DMA error callback */
//  909       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAErrorCCxN ;
//  910 
//  911       /* Enable the DMA stream */
//  912       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1,
//  913                            Length) != HAL_OK)
//  914       {
//  915         /* Return error status */
//  916         return HAL_ERROR;
//  917       }
//  918       /* Enable the TIM Output Compare DMA request */
//  919       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
//  920       break;
//  921     }
//  922 
//  923     case TIM_CHANNEL_2:
//  924     {
//  925       /* Set the DMA compare callbacks */
//  926       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseNCplt;
//  927       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  928 
//  929       /* Set the DMA error callback */
//  930       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAErrorCCxN ;
//  931 
//  932       /* Enable the DMA stream */
//  933       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2,
//  934                            Length) != HAL_OK)
//  935       {
//  936         /* Return error status */
//  937         return HAL_ERROR;
//  938       }
//  939       /* Enable the TIM Output Compare DMA request */
//  940       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
//  941       break;
//  942     }
//  943 
//  944     case TIM_CHANNEL_3:
//  945     {
//  946       /* Set the DMA compare callbacks */
//  947       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseNCplt;
//  948       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
//  949 
//  950       /* Set the DMA error callback */
//  951       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAErrorCCxN ;
//  952 
//  953       /* Enable the DMA stream */
//  954       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3,
//  955                            Length) != HAL_OK)
//  956       {
//  957         /* Return error status */
//  958         return HAL_ERROR;
//  959       }
//  960       /* Enable the TIM Output Compare DMA request */
//  961       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
//  962       break;
//  963     }
//  964 
//  965     default:
//  966       status = HAL_ERROR;
//  967       break;
//  968   }
//  969 
//  970   if (status == HAL_OK)
//  971   {
//  972     /* Enable the Capture compare channel N */
//  973     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
//  974 
//  975     /* Enable the Main Output */
//  976     __HAL_TIM_MOE_ENABLE(htim);
//  977 
//  978     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  979     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  980     {
//  981       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  982       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  983       {
//  984         __HAL_TIM_ENABLE(htim);
//  985       }
//  986     }
//  987     else
//  988     {
//  989       __HAL_TIM_ENABLE(htim);
//  990     }
//  991   }
//  992 
//  993   /* Return function status */
//  994   return status;
//  995 }
//  996 
//  997 /**
//  998   * @brief  Stops the TIM Output Compare signal generation in DMA mode
//  999   *         on the complementary output.
// 1000   * @param  htim TIM Output Compare handle
// 1001   * @param  Channel TIM Channel to be disabled
// 1002   *          This parameter can be one of the following values:
// 1003   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1004   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1005   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1006   * @retval HAL status
// 1007   */
// 1008 HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1009 {
// 1010   HAL_StatusTypeDef status = HAL_OK;
// 1011 
// 1012   /* Check the parameters */
// 1013   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1014 
// 1015   switch (Channel)
// 1016   {
// 1017     case TIM_CHANNEL_1:
// 1018     {
// 1019       /* Disable the TIM Output Compare DMA request */
// 1020       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1021       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 1022       break;
// 1023     }
// 1024 
// 1025     case TIM_CHANNEL_2:
// 1026     {
// 1027       /* Disable the TIM Output Compare DMA request */
// 1028       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1029       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 1030       break;
// 1031     }
// 1032 
// 1033     case TIM_CHANNEL_3:
// 1034     {
// 1035       /* Disable the TIM Output Compare DMA request */
// 1036       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1037       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 1038       break;
// 1039     }
// 1040 
// 1041     default:
// 1042       status = HAL_ERROR;
// 1043       break;
// 1044   }
// 1045 
// 1046   if (status == HAL_OK)
// 1047   {
// 1048     /* Disable the Capture compare channel N */
// 1049     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
// 1050 
// 1051     /* Disable the Main Output */
// 1052     __HAL_TIM_MOE_DISABLE(htim);
// 1053 
// 1054     /* Disable the Peripheral */
// 1055     __HAL_TIM_DISABLE(htim);
// 1056 
// 1057     /* Set the TIM complementary channel state */
// 1058     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1059   }
// 1060 
// 1061   /* Return function status */
// 1062   return status;
// 1063 }
// 1064 
// 1065 /**
// 1066   * @}
// 1067   */
// 1068 
// 1069 /** @defgroup TIMEx_Exported_Functions_Group3 Extended Timer Complementary PWM functions
// 1070   * @brief    Timer Complementary PWM functions
// 1071   *
// 1072 @verbatim
// 1073   ==============================================================================
// 1074                  ##### Timer Complementary PWM functions #####
// 1075   ==============================================================================
// 1076   [..]
// 1077     This section provides functions allowing to:
// 1078     (+) Start the Complementary PWM.
// 1079     (+) Stop the Complementary PWM.
// 1080     (+) Start the Complementary PWM and enable interrupts.
// 1081     (+) Stop the Complementary PWM and disable interrupts.
// 1082     (+) Start the Complementary PWM and enable DMA transfers.
// 1083     (+) Stop the Complementary PWM and disable DMA transfers.
// 1084 @endverbatim
// 1085   * @{
// 1086   */
// 1087 
// 1088 /**
// 1089   * @brief  Starts the PWM signal generation on the complementary output.
// 1090   * @param  htim TIM handle
// 1091   * @param  Channel TIM Channel to be enabled
// 1092   *          This parameter can be one of the following values:
// 1093   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1094   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1095   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1096   * @retval HAL status
// 1097   */
// 1098 HAL_StatusTypeDef HAL_TIMEx_PWMN_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1099 {
// 1100   uint32_t tmpsmcr;
// 1101 
// 1102   /* Check the parameters */
// 1103   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1104 
// 1105   /* Check the TIM complementary channel state */
// 1106   if (TIM_CHANNEL_N_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
// 1107   {
// 1108     return HAL_ERROR;
// 1109   }
// 1110 
// 1111   /* Set the TIM complementary channel state */
// 1112   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 1113 
// 1114   /* Enable the complementary PWM output  */
// 1115   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
// 1116 
// 1117   /* Enable the Main Output */
// 1118   __HAL_TIM_MOE_ENABLE(htim);
// 1119 
// 1120   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1121   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1122   {
// 1123     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1124     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1125     {
// 1126       __HAL_TIM_ENABLE(htim);
// 1127     }
// 1128   }
// 1129   else
// 1130   {
// 1131     __HAL_TIM_ENABLE(htim);
// 1132   }
// 1133 
// 1134   /* Return function status */
// 1135   return HAL_OK;
// 1136 }
// 1137 
// 1138 /**
// 1139   * @brief  Stops the PWM signal generation on the complementary output.
// 1140   * @param  htim TIM handle
// 1141   * @param  Channel TIM Channel to be disabled
// 1142   *          This parameter can be one of the following values:
// 1143   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1144   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1145   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1146   * @retval HAL status
// 1147   */
// 1148 HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1149 {
// 1150   /* Check the parameters */
// 1151   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1152 
// 1153   /* Disable the complementary PWM output  */
// 1154   TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
// 1155 
// 1156   /* Disable the Main Output */
// 1157   __HAL_TIM_MOE_DISABLE(htim);
// 1158 
// 1159   /* Disable the Peripheral */
// 1160   __HAL_TIM_DISABLE(htim);
// 1161 
// 1162   /* Set the TIM complementary channel state */
// 1163   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1164 
// 1165   /* Return function status */
// 1166   return HAL_OK;
// 1167 }
// 1168 
// 1169 /**
// 1170   * @brief  Starts the PWM signal generation in interrupt mode on the
// 1171   *         complementary output.
// 1172   * @param  htim TIM handle
// 1173   * @param  Channel TIM Channel to be disabled
// 1174   *          This parameter can be one of the following values:
// 1175   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1176   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1177   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1178   * @retval HAL status
// 1179   */
// 1180 HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1181 {
// 1182   HAL_StatusTypeDef status = HAL_OK;
// 1183   uint32_t tmpsmcr;
// 1184 
// 1185   /* Check the parameters */
// 1186   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1187 
// 1188   /* Check the TIM complementary channel state */
// 1189   if (TIM_CHANNEL_N_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
// 1190   {
// 1191     return HAL_ERROR;
// 1192   }
// 1193 
// 1194   /* Set the TIM complementary channel state */
// 1195   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 1196 
// 1197   switch (Channel)
// 1198   {
// 1199     case TIM_CHANNEL_1:
// 1200     {
// 1201       /* Enable the TIM Capture/Compare 1 interrupt */
// 1202       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1203       break;
// 1204     }
// 1205 
// 1206     case TIM_CHANNEL_2:
// 1207     {
// 1208       /* Enable the TIM Capture/Compare 2 interrupt */
// 1209       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1210       break;
// 1211     }
// 1212 
// 1213     case TIM_CHANNEL_3:
// 1214     {
// 1215       /* Enable the TIM Capture/Compare 3 interrupt */
// 1216       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 1217       break;
// 1218     }
// 1219 
// 1220     default:
// 1221       status = HAL_ERROR;
// 1222       break;
// 1223   }
// 1224 
// 1225   if (status == HAL_OK)
// 1226   {
// 1227     /* Enable the TIM Break interrupt */
// 1228     __HAL_TIM_ENABLE_IT(htim, TIM_IT_BREAK);
// 1229 
// 1230     /* Enable the complementary PWM output  */
// 1231     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
// 1232 
// 1233     /* Enable the Main Output */
// 1234     __HAL_TIM_MOE_ENABLE(htim);
// 1235 
// 1236     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1237     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1238     {
// 1239       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1240       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1241       {
// 1242         __HAL_TIM_ENABLE(htim);
// 1243       }
// 1244     }
// 1245     else
// 1246     {
// 1247       __HAL_TIM_ENABLE(htim);
// 1248     }
// 1249   }
// 1250 
// 1251   /* Return function status */
// 1252   return status;
// 1253 }
// 1254 
// 1255 /**
// 1256   * @brief  Stops the PWM signal generation in interrupt mode on the
// 1257   *         complementary output.
// 1258   * @param  htim TIM handle
// 1259   * @param  Channel TIM Channel to be disabled
// 1260   *          This parameter can be one of the following values:
// 1261   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1262   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1263   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1264   * @retval HAL status
// 1265   */
// 1266 HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1267 {
// 1268   HAL_StatusTypeDef status = HAL_OK;
// 1269   uint32_t tmpccer;
// 1270 
// 1271   /* Check the parameters */
// 1272   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1273 
// 1274   switch (Channel)
// 1275   {
// 1276     case TIM_CHANNEL_1:
// 1277     {
// 1278       /* Disable the TIM Capture/Compare 1 interrupt */
// 1279       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1280       break;
// 1281     }
// 1282 
// 1283     case TIM_CHANNEL_2:
// 1284     {
// 1285       /* Disable the TIM Capture/Compare 2 interrupt */
// 1286       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1287       break;
// 1288     }
// 1289 
// 1290     case TIM_CHANNEL_3:
// 1291     {
// 1292       /* Disable the TIM Capture/Compare 3 interrupt */
// 1293       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 1294       break;
// 1295     }
// 1296 
// 1297     default:
// 1298       status = HAL_ERROR;
// 1299       break;
// 1300   }
// 1301 
// 1302   if (status == HAL_OK)
// 1303   {
// 1304     /* Disable the complementary PWM output  */
// 1305     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
// 1306 
// 1307     /* Disable the TIM Break interrupt (only if no more channel is active) */
// 1308     tmpccer = htim->Instance->CCER;
// 1309     if ((tmpccer & TIM_CCER_CCxNE_MASK) == (uint32_t)RESET)
// 1310     {
// 1311       __HAL_TIM_DISABLE_IT(htim, TIM_IT_BREAK);
// 1312     }
// 1313 
// 1314     /* Disable the Main Output */
// 1315     __HAL_TIM_MOE_DISABLE(htim);
// 1316 
// 1317     /* Disable the Peripheral */
// 1318     __HAL_TIM_DISABLE(htim);
// 1319 
// 1320     /* Set the TIM complementary channel state */
// 1321     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1322   }
// 1323 
// 1324   /* Return function status */
// 1325   return status;
// 1326 }
// 1327 
// 1328 /**
// 1329   * @brief  Starts the TIM PWM signal generation in DMA mode on the
// 1330   *         complementary output
// 1331   * @param  htim TIM handle
// 1332   * @param  Channel TIM Channel to be enabled
// 1333   *          This parameter can be one of the following values:
// 1334   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1335   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1336   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1337   * @param  pData The source Buffer address.
// 1338   * @param  Length The length of data to be transferred from memory to TIM peripheral
// 1339   * @retval HAL status
// 1340   */
// 1341 HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
// 1342                                            uint16_t Length)
// 1343 {
// 1344   HAL_StatusTypeDef status = HAL_OK;
// 1345   uint32_t tmpsmcr;
// 1346 
// 1347   /* Check the parameters */
// 1348   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1349 
// 1350   /* Set the TIM complementary channel state */
// 1351   if (TIM_CHANNEL_N_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_BUSY)
// 1352   {
// 1353     return HAL_BUSY;
// 1354   }
// 1355   else if (TIM_CHANNEL_N_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_READY)
// 1356   {
// 1357     if ((pData == NULL) || (Length == 0U))
// 1358     {
// 1359       return HAL_ERROR;
// 1360     }
// 1361     else
// 1362     {
// 1363       TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 1364     }
// 1365   }
// 1366   else
// 1367   {
// 1368     return HAL_ERROR;
// 1369   }
// 1370 
// 1371   switch (Channel)
// 1372   {
// 1373     case TIM_CHANNEL_1:
// 1374     {
// 1375       /* Set the DMA compare callbacks */
// 1376       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseNCplt;
// 1377       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1378 
// 1379       /* Set the DMA error callback */
// 1380       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAErrorCCxN ;
// 1381 
// 1382       /* Enable the DMA stream */
// 1383       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1,
// 1384                            Length) != HAL_OK)
// 1385       {
// 1386         /* Return error status */
// 1387         return HAL_ERROR;
// 1388       }
// 1389       /* Enable the TIM Capture/Compare 1 DMA request */
// 1390       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 1391       break;
// 1392     }
// 1393 
// 1394     case TIM_CHANNEL_2:
// 1395     {
// 1396       /* Set the DMA compare callbacks */
// 1397       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseNCplt;
// 1398       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1399 
// 1400       /* Set the DMA error callback */
// 1401       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAErrorCCxN ;
// 1402 
// 1403       /* Enable the DMA stream */
// 1404       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2,
// 1405                            Length) != HAL_OK)
// 1406       {
// 1407         /* Return error status */
// 1408         return HAL_ERROR;
// 1409       }
// 1410       /* Enable the TIM Capture/Compare 2 DMA request */
// 1411       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 1412       break;
// 1413     }
// 1414 
// 1415     case TIM_CHANNEL_3:
// 1416     {
// 1417       /* Set the DMA compare callbacks */
// 1418       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseNCplt;
// 1419       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1420 
// 1421       /* Set the DMA error callback */
// 1422       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAErrorCCxN ;
// 1423 
// 1424       /* Enable the DMA stream */
// 1425       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3,
// 1426                            Length) != HAL_OK)
// 1427       {
// 1428         /* Return error status */
// 1429         return HAL_ERROR;
// 1430       }
// 1431       /* Enable the TIM Capture/Compare 3 DMA request */
// 1432       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1433       break;
// 1434     }
// 1435 
// 1436     default:
// 1437       status = HAL_ERROR;
// 1438       break;
// 1439   }
// 1440 
// 1441   if (status == HAL_OK)
// 1442   {
// 1443     /* Enable the complementary PWM output  */
// 1444     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_ENABLE);
// 1445 
// 1446     /* Enable the Main Output */
// 1447     __HAL_TIM_MOE_ENABLE(htim);
// 1448 
// 1449     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1450     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1451     {
// 1452       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1453       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1454       {
// 1455         __HAL_TIM_ENABLE(htim);
// 1456       }
// 1457     }
// 1458     else
// 1459     {
// 1460       __HAL_TIM_ENABLE(htim);
// 1461     }
// 1462   }
// 1463 
// 1464   /* Return function status */
// 1465   return status;
// 1466 }
// 1467 
// 1468 /**
// 1469   * @brief  Stops the TIM PWM signal generation in DMA mode on the complementary
// 1470   *         output
// 1471   * @param  htim TIM handle
// 1472   * @param  Channel TIM Channel to be disabled
// 1473   *          This parameter can be one of the following values:
// 1474   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1475   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1476   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1477   * @retval HAL status
// 1478   */
// 1479 HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1480 {
// 1481   HAL_StatusTypeDef status = HAL_OK;
// 1482 
// 1483   /* Check the parameters */
// 1484   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, Channel));
// 1485 
// 1486   switch (Channel)
// 1487   {
// 1488     case TIM_CHANNEL_1:
// 1489     {
// 1490       /* Disable the TIM Capture/Compare 1 DMA request */
// 1491       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1492       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 1493       break;
// 1494     }
// 1495 
// 1496     case TIM_CHANNEL_2:
// 1497     {
// 1498       /* Disable the TIM Capture/Compare 2 DMA request */
// 1499       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1500       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 1501       break;
// 1502     }
// 1503 
// 1504     case TIM_CHANNEL_3:
// 1505     {
// 1506       /* Disable the TIM Capture/Compare 3 DMA request */
// 1507       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1508       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 1509       break;
// 1510     }
// 1511 
// 1512     default:
// 1513       status = HAL_ERROR;
// 1514       break;
// 1515   }
// 1516 
// 1517   if (status == HAL_OK)
// 1518   {
// 1519     /* Disable the complementary PWM output */
// 1520     TIM_CCxNChannelCmd(htim->Instance, Channel, TIM_CCxN_DISABLE);
// 1521 
// 1522     /* Disable the Main Output */
// 1523     __HAL_TIM_MOE_DISABLE(htim);
// 1524 
// 1525     /* Disable the Peripheral */
// 1526     __HAL_TIM_DISABLE(htim);
// 1527 
// 1528     /* Set the TIM complementary channel state */
// 1529     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1530   }
// 1531 
// 1532   /* Return function status */
// 1533   return status;
// 1534 }
// 1535 
// 1536 /**
// 1537   * @}
// 1538   */
// 1539 
// 1540 /** @defgroup TIMEx_Exported_Functions_Group4 Extended Timer Complementary One Pulse functions
// 1541   * @brief    Timer Complementary One Pulse functions
// 1542   *
// 1543 @verbatim
// 1544   ==============================================================================
// 1545                 ##### Timer Complementary One Pulse functions #####
// 1546   ==============================================================================
// 1547   [..]
// 1548     This section provides functions allowing to:
// 1549     (+) Start the Complementary One Pulse generation.
// 1550     (+) Stop the Complementary One Pulse.
// 1551     (+) Start the Complementary One Pulse and enable interrupts.
// 1552     (+) Stop the Complementary One Pulse and disable interrupts.
// 1553 
// 1554 @endverbatim
// 1555   * @{
// 1556   */
// 1557 
// 1558 /**
// 1559   * @brief  Starts the TIM One Pulse signal generation on the complementary
// 1560   *         output.
// 1561   * @note OutputChannel must match the pulse output channel chosen when calling
// 1562   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 1563   * @param  htim TIM One Pulse handle
// 1564   * @param  OutputChannel pulse output channel to enable
// 1565   *          This parameter can be one of the following values:
// 1566   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1567   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1568   * @retval HAL status
// 1569   */
// 1570 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1571 {
// 1572   uint32_t input_channel = (OutputChannel == TIM_CHANNEL_1) ? TIM_CHANNEL_2 : TIM_CHANNEL_1;
// 1573   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
// 1574   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
// 1575   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
// 1576   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
// 1577 
// 1578   /* Check the parameters */
// 1579   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1580 
// 1581   /* Check the TIM channels state */
// 1582   if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 1583       || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 1584       || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 1585       || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 1586   {
// 1587     return HAL_ERROR;
// 1588   }
// 1589 
// 1590   /* Set the TIM channels state */
// 1591   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 1592   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 1593   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 1594   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 1595 
// 1596   /* Enable the complementary One Pulse output channel and the Input Capture channel */
// 1597   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_ENABLE);
// 1598   TIM_CCxChannelCmd(htim->Instance, input_channel, TIM_CCx_ENABLE);
// 1599 
// 1600   /* Enable the Main Output */
// 1601   __HAL_TIM_MOE_ENABLE(htim);
// 1602 
// 1603   /* Return function status */
// 1604   return HAL_OK;
// 1605 }
// 1606 
// 1607 /**
// 1608   * @brief  Stops the TIM One Pulse signal generation on the complementary
// 1609   *         output.
// 1610   * @note OutputChannel must match the pulse output channel chosen when calling
// 1611   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 1612   * @param  htim TIM One Pulse handle
// 1613   * @param  OutputChannel pulse output channel to disable
// 1614   *          This parameter can be one of the following values:
// 1615   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1616   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1617   * @retval HAL status
// 1618   */
// 1619 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1620 {
// 1621   uint32_t input_channel = (OutputChannel == TIM_CHANNEL_1) ? TIM_CHANNEL_2 : TIM_CHANNEL_1;
// 1622 
// 1623   /* Check the parameters */
// 1624   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1625 
// 1626   /* Disable the complementary One Pulse output channel and the Input Capture channel */
// 1627   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_DISABLE);
// 1628   TIM_CCxChannelCmd(htim->Instance, input_channel, TIM_CCx_DISABLE);
// 1629 
// 1630   /* Disable the Main Output */
// 1631   __HAL_TIM_MOE_DISABLE(htim);
// 1632 
// 1633   /* Disable the Peripheral */
// 1634   __HAL_TIM_DISABLE(htim);
// 1635 
// 1636   /* Set the TIM  channels state */
// 1637   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 1638   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 1639   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 1640   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 1641 
// 1642   /* Return function status */
// 1643   return HAL_OK;
// 1644 }
// 1645 
// 1646 /**
// 1647   * @brief  Starts the TIM One Pulse signal generation in interrupt mode on the
// 1648   *         complementary channel.
// 1649   * @note OutputChannel must match the pulse output channel chosen when calling
// 1650   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 1651   * @param  htim TIM One Pulse handle
// 1652   * @param  OutputChannel pulse output channel to enable
// 1653   *          This parameter can be one of the following values:
// 1654   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1655   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1656   * @retval HAL status
// 1657   */
// 1658 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1659 {
// 1660   uint32_t input_channel = (OutputChannel == TIM_CHANNEL_1) ? TIM_CHANNEL_2 : TIM_CHANNEL_1;
// 1661   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
// 1662   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
// 1663   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
// 1664   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
// 1665 
// 1666   /* Check the parameters */
// 1667   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1668 
// 1669   /* Check the TIM channels state */
// 1670   if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 1671       || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 1672       || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 1673       || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 1674   {
// 1675     return HAL_ERROR;
// 1676   }
// 1677 
// 1678   /* Set the TIM channels state */
// 1679   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 1680   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 1681   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 1682   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 1683 
// 1684   /* Enable the TIM Capture/Compare 1 interrupt */
// 1685   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1686 
// 1687   /* Enable the TIM Capture/Compare 2 interrupt */
// 1688   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1689 
// 1690   /* Enable the complementary One Pulse output channel and the Input Capture channel */
// 1691   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_ENABLE);
// 1692   TIM_CCxChannelCmd(htim->Instance, input_channel, TIM_CCx_ENABLE);
// 1693 
// 1694   /* Enable the Main Output */
// 1695   __HAL_TIM_MOE_ENABLE(htim);
// 1696 
// 1697   /* Return function status */
// 1698   return HAL_OK;
// 1699 }
// 1700 
// 1701 /**
// 1702   * @brief  Stops the TIM One Pulse signal generation in interrupt mode on the
// 1703   *         complementary channel.
// 1704   * @note OutputChannel must match the pulse output channel chosen when calling
// 1705   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 1706   * @param  htim TIM One Pulse handle
// 1707   * @param  OutputChannel pulse output channel to disable
// 1708   *          This parameter can be one of the following values:
// 1709   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1710   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1711   * @retval HAL status
// 1712   */
// 1713 HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 1714 {
// 1715   uint32_t input_channel = (OutputChannel == TIM_CHANNEL_1) ? TIM_CHANNEL_2 : TIM_CHANNEL_1;
// 1716 
// 1717   /* Check the parameters */
// 1718   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, OutputChannel));
// 1719 
// 1720   /* Disable the TIM Capture/Compare 1 interrupt */
// 1721   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1722 
// 1723   /* Disable the TIM Capture/Compare 2 interrupt */
// 1724   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1725 
// 1726   /* Disable the complementary One Pulse output channel and the Input Capture channel */
// 1727   TIM_CCxNChannelCmd(htim->Instance, OutputChannel, TIM_CCxN_DISABLE);
// 1728   TIM_CCxChannelCmd(htim->Instance, input_channel, TIM_CCx_DISABLE);
// 1729 
// 1730   /* Disable the Main Output */
// 1731   __HAL_TIM_MOE_DISABLE(htim);
// 1732 
// 1733   /* Disable the Peripheral */
// 1734   __HAL_TIM_DISABLE(htim);
// 1735 
// 1736   /* Set the TIM  channels state */
// 1737   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 1738   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 1739   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 1740   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 1741 
// 1742   /* Return function status */
// 1743   return HAL_OK;
// 1744 }
// 1745 
// 1746 /**
// 1747   * @}
// 1748   */
// 1749 
// 1750 /** @defgroup TIMEx_Exported_Functions_Group5 Extended Peripheral Control functions
// 1751   * @brief    Peripheral Control functions
// 1752   *
// 1753 @verbatim
// 1754   ==============================================================================
// 1755                     ##### Peripheral Control functions #####
// 1756   ==============================================================================
// 1757   [..]
// 1758     This section provides functions allowing to:
// 1759       (+) Configure the commutation event in case of use of the Hall sensor interface.
// 1760       (+) Configure Output channels for OC and PWM mode.
// 1761 
// 1762       (+) Configure Complementary channels, break features and dead time.
// 1763       (+) Configure Master synchronization.
// 1764       (+) Configure timer remapping capabilities.
// 1765 
// 1766 @endverbatim
// 1767   * @{
// 1768   */
// 1769 
// 1770 /**
// 1771   * @brief  Configure the TIM commutation event sequence.
// 1772   * @note  This function is mandatory to use the commutation event in order to
// 1773   *        update the configuration at each commutation detection on the TRGI input of the Timer,
// 1774   *        the typical use of this feature is with the use of another Timer(interface Timer)
// 1775   *        configured in Hall sensor interface, this interface Timer will generate the
// 1776   *        commutation at its TRGO output (connected to Timer used in this function) each time
// 1777   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
// 1778   * @param  htim TIM handle
// 1779   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall sensor
// 1780   *          This parameter can be one of the following values:
// 1781   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
// 1782   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
// 1783   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
// 1784   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
// 1785   *            @arg TIM_TS_NONE: No trigger is needed
// 1786   * @param  CommutationSource the Commutation Event source
// 1787   *          This parameter can be one of the following values:
// 1788   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
// 1789   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG bit
// 1790   * @retval HAL status
// 1791   */
// 1792 HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
// 1793                                               uint32_t  CommutationSource)
// 1794 {
// 1795   /* Check the parameters */
// 1796   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
// 1797   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_SELECTION(InputTrigger));
// 1798 
// 1799   __HAL_LOCK(htim);
// 1800 
// 1801   if ((InputTrigger == TIM_TS_ITR0) || (InputTrigger == TIM_TS_ITR1) ||
// 1802       (InputTrigger == TIM_TS_ITR2) || (InputTrigger == TIM_TS_ITR3))
// 1803   {
// 1804     /* Select the Input trigger */
// 1805     htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 1806     htim->Instance->SMCR |= InputTrigger;
// 1807   }
// 1808 
// 1809   /* Select the Capture Compare preload feature */
// 1810   htim->Instance->CR2 |= TIM_CR2_CCPC;
// 1811   /* Select the Commutation event source */
// 1812   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
// 1813   htim->Instance->CR2 |= CommutationSource;
// 1814 
// 1815   /* Disable Commutation Interrupt */
// 1816   __HAL_TIM_DISABLE_IT(htim, TIM_IT_COM);
// 1817 
// 1818   /* Disable Commutation DMA request */
// 1819   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_COM);
// 1820 
// 1821   __HAL_UNLOCK(htim);
// 1822 
// 1823   return HAL_OK;
// 1824 }
// 1825 
// 1826 /**
// 1827   * @brief  Configure the TIM commutation event sequence with interrupt.
// 1828   * @note  This function is mandatory to use the commutation event in order to
// 1829   *        update the configuration at each commutation detection on the TRGI input of the Timer,
// 1830   *        the typical use of this feature is with the use of another Timer(interface Timer)
// 1831   *        configured in Hall sensor interface, this interface Timer will generate the
// 1832   *        commutation at its TRGO output (connected to Timer used in this function) each time
// 1833   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
// 1834   * @param  htim TIM handle
// 1835   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall sensor
// 1836   *          This parameter can be one of the following values:
// 1837   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
// 1838   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
// 1839   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
// 1840   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
// 1841   *            @arg TIM_TS_NONE: No trigger is needed
// 1842   * @param  CommutationSource the Commutation Event source
// 1843   *          This parameter can be one of the following values:
// 1844   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
// 1845   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG bit
// 1846   * @retval HAL status
// 1847   */
// 1848 HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_IT(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
// 1849                                                  uint32_t  CommutationSource)
// 1850 {
// 1851   /* Check the parameters */
// 1852   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
// 1853   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_SELECTION(InputTrigger));
// 1854 
// 1855   __HAL_LOCK(htim);
// 1856 
// 1857   if ((InputTrigger == TIM_TS_ITR0) || (InputTrigger == TIM_TS_ITR1) ||
// 1858       (InputTrigger == TIM_TS_ITR2) || (InputTrigger == TIM_TS_ITR3))
// 1859   {
// 1860     /* Select the Input trigger */
// 1861     htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 1862     htim->Instance->SMCR |= InputTrigger;
// 1863   }
// 1864 
// 1865   /* Select the Capture Compare preload feature */
// 1866   htim->Instance->CR2 |= TIM_CR2_CCPC;
// 1867   /* Select the Commutation event source */
// 1868   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
// 1869   htim->Instance->CR2 |= CommutationSource;
// 1870 
// 1871   /* Disable Commutation DMA request */
// 1872   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_COM);
// 1873 
// 1874   /* Enable the Commutation Interrupt */
// 1875   __HAL_TIM_ENABLE_IT(htim, TIM_IT_COM);
// 1876 
// 1877   __HAL_UNLOCK(htim);
// 1878 
// 1879   return HAL_OK;
// 1880 }
// 1881 
// 1882 /**
// 1883   * @brief  Configure the TIM commutation event sequence with DMA.
// 1884   * @note  This function is mandatory to use the commutation event in order to
// 1885   *        update the configuration at each commutation detection on the TRGI input of the Timer,
// 1886   *        the typical use of this feature is with the use of another Timer(interface Timer)
// 1887   *        configured in Hall sensor interface, this interface Timer will generate the
// 1888   *        commutation at its TRGO output (connected to Timer used in this function) each time
// 1889   *        the TI1 of the Interface Timer detect a commutation at its input TI1.
// 1890   * @note  The user should configure the DMA in his own software, in This function only the COMDE bit is set
// 1891   * @param  htim TIM handle
// 1892   * @param  InputTrigger the Internal trigger corresponding to the Timer Interfacing with the Hall sensor
// 1893   *          This parameter can be one of the following values:
// 1894   *            @arg TIM_TS_ITR0: Internal trigger 0 selected
// 1895   *            @arg TIM_TS_ITR1: Internal trigger 1 selected
// 1896   *            @arg TIM_TS_ITR2: Internal trigger 2 selected
// 1897   *            @arg TIM_TS_ITR3: Internal trigger 3 selected
// 1898   *            @arg TIM_TS_NONE: No trigger is needed
// 1899   * @param  CommutationSource the Commutation Event source
// 1900   *          This parameter can be one of the following values:
// 1901   *            @arg TIM_COMMUTATION_TRGI: Commutation source is the TRGI of the Interface Timer
// 1902   *            @arg TIM_COMMUTATION_SOFTWARE:  Commutation source is set by software using the COMG bit
// 1903   * @retval HAL status
// 1904   */
// 1905 HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_DMA(TIM_HandleTypeDef *htim, uint32_t  InputTrigger,
// 1906                                                   uint32_t  CommutationSource)
// 1907 {
// 1908   /* Check the parameters */
// 1909   assert_param(IS_TIM_COMMUTATION_EVENT_INSTANCE(htim->Instance));
// 1910   assert_param(IS_TIM_INTERNAL_TRIGGEREVENT_SELECTION(InputTrigger));
// 1911 
// 1912   __HAL_LOCK(htim);
// 1913 
// 1914   if ((InputTrigger == TIM_TS_ITR0) || (InputTrigger == TIM_TS_ITR1) ||
// 1915       (InputTrigger == TIM_TS_ITR2) || (InputTrigger == TIM_TS_ITR3))
// 1916   {
// 1917     /* Select the Input trigger */
// 1918     htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 1919     htim->Instance->SMCR |= InputTrigger;
// 1920   }
// 1921 
// 1922   /* Select the Capture Compare preload feature */
// 1923   htim->Instance->CR2 |= TIM_CR2_CCPC;
// 1924   /* Select the Commutation event source */
// 1925   htim->Instance->CR2 &= ~TIM_CR2_CCUS;
// 1926   htim->Instance->CR2 |= CommutationSource;
// 1927 
// 1928   /* Enable the Commutation DMA Request */
// 1929   /* Set the DMA Commutation Callback */
// 1930   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferCpltCallback = TIMEx_DMACommutationCplt;
// 1931   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback = TIMEx_DMACommutationHalfCplt;
// 1932   /* Set the DMA error callback */
// 1933   htim->hdma[TIM_DMA_ID_COMMUTATION]->XferErrorCallback = TIM_DMAError;
// 1934 
// 1935   /* Disable Commutation Interrupt */
// 1936   __HAL_TIM_DISABLE_IT(htim, TIM_IT_COM);
// 1937 
// 1938   /* Enable the Commutation DMA Request */
// 1939   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_COM);
// 1940 
// 1941   __HAL_UNLOCK(htim);
// 1942 
// 1943   return HAL_OK;
// 1944 }
// 1945 
// 1946 /**
// 1947   * @brief  Configures the TIM in master mode.
// 1948   * @param  htim TIM handle.
// 1949   * @param  sMasterConfig pointer to a TIM_MasterConfigTypeDef structure that
// 1950   *         contains the selected trigger output (TRGO) and the Master/Slave
// 1951   *         mode.
// 1952   * @retval HAL status
// 1953   */
// 1954 HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim,
// 1955                                                         const TIM_MasterConfigTypeDef *sMasterConfig)
// 1956 {
// 1957   uint32_t tmpcr2;
// 1958   uint32_t tmpsmcr;
// 1959 
// 1960   /* Check the parameters */
// 1961   assert_param(IS_TIM_MASTER_INSTANCE(htim->Instance));
// 1962   assert_param(IS_TIM_TRGO_SOURCE(sMasterConfig->MasterOutputTrigger));
// 1963   assert_param(IS_TIM_MSM_STATE(sMasterConfig->MasterSlaveMode));
// 1964 
// 1965   /* Check input state */
// 1966   __HAL_LOCK(htim);
// 1967 
// 1968   /* Change the handler state */
// 1969   htim->State = HAL_TIM_STATE_BUSY;
// 1970 
// 1971   /* Get the TIMx CR2 register value */
// 1972   tmpcr2 = htim->Instance->CR2;
// 1973 
// 1974   /* Get the TIMx SMCR register value */
// 1975   tmpsmcr = htim->Instance->SMCR;
// 1976 
// 1977   /* Reset the MMS Bits */
// 1978   tmpcr2 &= ~TIM_CR2_MMS;
// 1979   /* Select the TRGO source */
// 1980   tmpcr2 |=  sMasterConfig->MasterOutputTrigger;
// 1981 
// 1982   /* Update TIMx CR2 */
// 1983   htim->Instance->CR2 = tmpcr2;
// 1984 
// 1985   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1986   {
// 1987     /* Reset the MSM Bit */
// 1988     tmpsmcr &= ~TIM_SMCR_MSM;
// 1989     /* Set master mode */
// 1990     tmpsmcr |= sMasterConfig->MasterSlaveMode;
// 1991 
// 1992     /* Update TIMx SMCR */
// 1993     htim->Instance->SMCR = tmpsmcr;
// 1994   }
// 1995 
// 1996   /* Change the htim state */
// 1997   htim->State = HAL_TIM_STATE_READY;
// 1998 
// 1999   __HAL_UNLOCK(htim);
// 2000 
// 2001   return HAL_OK;
// 2002 }
// 2003 
// 2004 /**
// 2005   * @brief  Configures the Break feature, dead time, Lock level, OSSI/OSSR State
// 2006   *         and the AOE(automatic output enable).
// 2007   * @param  htim TIM handle
// 2008   * @param  sBreakDeadTimeConfig pointer to a TIM_ConfigBreakDeadConfigTypeDef structure that
// 2009   *         contains the BDTR Register configuration  information for the TIM peripheral.
// 2010   * @note   Interrupts can be generated when an active level is detected on the
// 2011   *         break input, the break 2 input or the system break input. Break
// 2012   *         interrupt can be enabled by calling the @ref __HAL_TIM_ENABLE_IT macro.
// 2013   * @retval HAL status
// 2014   */
// 2015 HAL_StatusTypeDef HAL_TIMEx_ConfigBreakDeadTime(TIM_HandleTypeDef *htim,
// 2016                                                 const TIM_BreakDeadTimeConfigTypeDef *sBreakDeadTimeConfig)
// 2017 {
// 2018   /* Keep this variable initialized to 0 as it is used to configure BDTR register */
// 2019   uint32_t tmpbdtr = 0U;
// 2020 
// 2021   /* Check the parameters */
// 2022   assert_param(IS_TIM_BREAK_INSTANCE(htim->Instance));
// 2023   assert_param(IS_TIM_OSSR_STATE(sBreakDeadTimeConfig->OffStateRunMode));
// 2024   assert_param(IS_TIM_OSSI_STATE(sBreakDeadTimeConfig->OffStateIDLEMode));
// 2025   assert_param(IS_TIM_LOCK_LEVEL(sBreakDeadTimeConfig->LockLevel));
// 2026   assert_param(IS_TIM_DEADTIME(sBreakDeadTimeConfig->DeadTime));
// 2027   assert_param(IS_TIM_BREAK_STATE(sBreakDeadTimeConfig->BreakState));
// 2028   assert_param(IS_TIM_BREAK_POLARITY(sBreakDeadTimeConfig->BreakPolarity));
// 2029   assert_param(IS_TIM_AUTOMATIC_OUTPUT_STATE(sBreakDeadTimeConfig->AutomaticOutput));
// 2030 
// 2031   /* Check input state */
// 2032   __HAL_LOCK(htim);
// 2033 
// 2034   /* Set the Lock level, the Break enable Bit and the Polarity, the OSSR State,
// 2035      the OSSI State, the dead time value and the Automatic Output Enable Bit */
// 2036 
// 2037   /* Set the BDTR bits */
// 2038   MODIFY_REG(tmpbdtr, TIM_BDTR_DTG, sBreakDeadTimeConfig->DeadTime);
// 2039   MODIFY_REG(tmpbdtr, TIM_BDTR_LOCK, sBreakDeadTimeConfig->LockLevel);
// 2040   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSI, sBreakDeadTimeConfig->OffStateIDLEMode);
// 2041   MODIFY_REG(tmpbdtr, TIM_BDTR_OSSR, sBreakDeadTimeConfig->OffStateRunMode);
// 2042   MODIFY_REG(tmpbdtr, TIM_BDTR_BKE, sBreakDeadTimeConfig->BreakState);
// 2043   MODIFY_REG(tmpbdtr, TIM_BDTR_BKP, sBreakDeadTimeConfig->BreakPolarity);
// 2044   MODIFY_REG(tmpbdtr, TIM_BDTR_AOE, sBreakDeadTimeConfig->AutomaticOutput);
// 2045 
// 2046 
// 2047   /* Set TIMx_BDTR */
// 2048   htim->Instance->BDTR = tmpbdtr;
// 2049 
// 2050   __HAL_UNLOCK(htim);
// 2051 
// 2052   return HAL_OK;
// 2053 }
// 2054 
// 2055 /**
// 2056   * @brief  Configures the TIMx Remapping input capabilities.
// 2057   * @param  htim TIM handle.
// 2058   * @param  Remap specifies the TIM remapping source.
// 2059   *         For TIM1, the parameter can have the following values:                   (**)
// 2060   *           @arg TIM_TIM1_TIM3_TRGO:  TIM1 ITR2 is connected to TIM3 TRGO
// 2061   *           @arg TIM_TIM1_LPTIM:      TIM1 ITR2 is connected to LPTIM1 output
// 2062   *
// 2063   *         For TIM2, the parameter can have the following values:                   (**)
// 2064   *           @arg TIM_TIM2_TIM8_TRGO:  TIM2 ITR1 is connected to TIM8 TRGO          (*)
// 2065   *           @arg TIM_TIM2_ETH_PTP:    TIM2 ITR1 is connected to PTP trigger output (*)
// 2066   *           @arg TIM_TIM2_USBFS_SOF:  TIM2 ITR1 is connected to OTG FS SOF
// 2067   *           @arg TIM_TIM2_USBHS_SOF:  TIM2 ITR1 is connected to OTG FS SOF
// 2068   *
// 2069   *         For TIM5, the parameter can have the following values:
// 2070   *           @arg TIM_TIM5_GPIO:       TIM5 TI4 is connected to GPIO
// 2071   *           @arg TIM_TIM5_LSI:        TIM5 TI4 is connected to LSI
// 2072   *           @arg TIM_TIM5_LSE:        TIM5 TI4 is connected to LSE
// 2073   *           @arg TIM_TIM5_RTC:        TIM5 TI4 is connected to the RTC wakeup interrupt
// 2074   *           @arg TIM_TIM5_TIM3_TRGO:  TIM5 ITR1 is connected to TIM3 TRGO          (*)
// 2075   *           @arg TIM_TIM5_LPTIM:      TIM5 ITR1 is connected to LPTIM1 output      (*)
// 2076   *
// 2077   *         For TIM9, the parameter can have the following values:                   (**)
// 2078   *           @arg TIM_TIM9_TIM3_TRGO:  TIM9 ITR1 is connected to TIM3 TRGO
// 2079   *           @arg TIM_TIM9_LPTIM:      TIM9 ITR1 is connected to LPTIM1 output
// 2080   *
// 2081   *         For TIM11, the parameter can have the following values:
// 2082   *           @arg TIM_TIM11_GPIO:     TIM11 TI1 is connected to GPIO
// 2083   *           @arg TIM_TIM11_HSE:      TIM11 TI1 is connected to HSE_RTC clock
// 2084   *           @arg TIM_TIM11_SPDIFRX:  TIM11 TI1 is connected to SPDIFRX_FRAME_SYNC  (*)
// 2085   *
// 2086   *         (*)  Value not defined in all devices. \n
// 2087   *         (**) Register not available in all devices.
// 2088   *
// 2089   * @retval HAL status
// 2090   */
// 2091 HAL_StatusTypeDef HAL_TIMEx_RemapConfig(TIM_HandleTypeDef *htim, uint32_t Remap)
// 2092 {
// 2093   /* Check parameters */
// 2094   assert_param(IS_TIM_REMAP(htim->Instance, Remap));
// 2095 
// 2096   __HAL_LOCK(htim);
// 2097 
// 2098 #if defined(LPTIM_OR_TIM1_ITR2_RMP) && defined(LPTIM_OR_TIM5_ITR1_RMP) && defined(LPTIM_OR_TIM9_ITR1_RMP)
// 2099   if ((Remap & LPTIM_REMAP_MASK) == LPTIM_REMAP_MASK)
// 2100   {
// 2101     /* Connect TIMx internal trigger to LPTIM1 output */
// 2102     __HAL_RCC_LPTIM1_CLK_ENABLE();
// 2103     MODIFY_REG(LPTIM1->OR,
// 2104                (LPTIM_OR_TIM1_ITR2_RMP | LPTIM_OR_TIM5_ITR1_RMP | LPTIM_OR_TIM9_ITR1_RMP),
// 2105                Remap & ~(LPTIM_REMAP_MASK));
// 2106   }
// 2107   else
// 2108   {
// 2109     /* Set the Timer remapping configuration */
// 2110     WRITE_REG(htim->Instance->OR, Remap);
// 2111   }
// 2112 #else
// 2113   /* Set the Timer remapping configuration */
// 2114   WRITE_REG(htim->Instance->OR, Remap);
// 2115 #endif /* LPTIM_OR_TIM1_ITR2_RMP &&  LPTIM_OR_TIM5_ITR1_RMP && LPTIM_OR_TIM9_ITR1_RMP */
// 2116 
// 2117   __HAL_UNLOCK(htim);
// 2118 
// 2119   return HAL_OK;
// 2120 }
// 2121 
// 2122 /**
// 2123   * @}
// 2124   */
// 2125 
// 2126 /** @defgroup TIMEx_Exported_Functions_Group6 Extended Callbacks functions
// 2127   * @brief    Extended Callbacks functions
// 2128   *
// 2129 @verbatim
// 2130   ==============================================================================
// 2131                     ##### Extended Callbacks functions #####
// 2132   ==============================================================================
// 2133   [..]
// 2134     This section provides Extended TIM callback functions:
// 2135     (+) Timer Commutation callback
// 2136     (+) Timer Break callback
// 2137 
// 2138 @endverbatim
// 2139   * @{
// 2140   */
// 2141 
// 2142 /**
// 2143   * @brief  Commutation callback in non-blocking mode
// 2144   * @param  htim TIM handle
// 2145   * @retval None
// 2146   */
// 2147 __weak void HAL_TIMEx_CommutCallback(TIM_HandleTypeDef *htim)
// 2148 {
// 2149   /* Prevent unused argument(s) compilation warning */
// 2150   UNUSED(htim);
// 2151 
// 2152   /* NOTE : This function should not be modified, when the callback is needed,
// 2153             the HAL_TIMEx_CommutCallback could be implemented in the user file
// 2154    */
// 2155 }
// 2156 /**
// 2157   * @brief  Commutation half complete callback in non-blocking mode
// 2158   * @param  htim TIM handle
// 2159   * @retval None
// 2160   */
// 2161 __weak void HAL_TIMEx_CommutHalfCpltCallback(TIM_HandleTypeDef *htim)
// 2162 {
// 2163   /* Prevent unused argument(s) compilation warning */
// 2164   UNUSED(htim);
// 2165 
// 2166   /* NOTE : This function should not be modified, when the callback is needed,
// 2167             the HAL_TIMEx_CommutHalfCpltCallback could be implemented in the user file
// 2168    */
// 2169 }
// 2170 
// 2171 /**
// 2172   * @brief  Break detection callback in non-blocking mode
// 2173   * @param  htim TIM handle
// 2174   * @retval None
// 2175   */
// 2176 __weak void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim)
// 2177 {
// 2178   /* Prevent unused argument(s) compilation warning */
// 2179   UNUSED(htim);
// 2180 
// 2181   /* NOTE : This function should not be modified, when the callback is needed,
// 2182             the HAL_TIMEx_BreakCallback could be implemented in the user file
// 2183    */
// 2184 }
// 2185 /**
// 2186   * @}
// 2187   */
// 2188 
// 2189 /** @defgroup TIMEx_Exported_Functions_Group7 Extended Peripheral State functions
// 2190   * @brief    Extended Peripheral State functions
// 2191   *
// 2192 @verbatim
// 2193   ==============================================================================
// 2194                 ##### Extended Peripheral State functions #####
// 2195   ==============================================================================
// 2196   [..]
// 2197     This subsection permits to get in run-time the status of the peripheral
// 2198     and the data flow.
// 2199 
// 2200 @endverbatim
// 2201   * @{
// 2202   */
// 2203 
// 2204 /**
// 2205   * @brief  Return the TIM Hall Sensor interface handle state.
// 2206   * @param  htim TIM Hall Sensor handle
// 2207   * @retval HAL state
// 2208   */
// 2209 HAL_TIM_StateTypeDef HAL_TIMEx_HallSensor_GetState(const TIM_HandleTypeDef *htim)
// 2210 {
// 2211   return htim->State;
// 2212 }
// 2213 
// 2214 /**
// 2215   * @brief  Return actual state of the TIM complementary channel.
// 2216   * @param  htim TIM handle
// 2217   * @param  ChannelN TIM Complementary channel
// 2218   *          This parameter can be one of the following values:
// 2219   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 2220   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 2221   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 2222   * @retval TIM Complementary channel state
// 2223   */
// 2224 HAL_TIM_ChannelStateTypeDef HAL_TIMEx_GetChannelNState(const TIM_HandleTypeDef *htim,  uint32_t ChannelN)
// 2225 {
// 2226   HAL_TIM_ChannelStateTypeDef channel_state;
// 2227 
// 2228   /* Check the parameters */
// 2229   assert_param(IS_TIM_CCXN_INSTANCE(htim->Instance, ChannelN));
// 2230 
// 2231   channel_state = TIM_CHANNEL_N_STATE_GET(htim, ChannelN);
// 2232 
// 2233   return channel_state;
// 2234 }
// 2235 /**
// 2236   * @}
// 2237   */
// 2238 
// 2239 /**
// 2240   * @}
// 2241   */
// 2242 
// 2243 /* Private functions ---------------------------------------------------------*/
// 2244 /** @defgroup TIMEx_Private_Functions TIM Extended Private Functions
// 2245   * @{
// 2246   */
// 2247 
// 2248 /**
// 2249   * @brief  TIM DMA Commutation callback.
// 2250   * @param  hdma pointer to DMA handle.
// 2251   * @retval None
// 2252   */
// 2253 void TIMEx_DMACommutationCplt(DMA_HandleTypeDef *hdma)
// 2254 {
// 2255   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 2256 
// 2257   /* Change the htim state */
// 2258   htim->State = HAL_TIM_STATE_READY;
// 2259 
// 2260 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2261   htim->CommutationCallback(htim);
// 2262 #else
// 2263   HAL_TIMEx_CommutCallback(htim);
// 2264 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2265 }
// 2266 
// 2267 /**
// 2268   * @brief  TIM DMA Commutation half complete callback.
// 2269   * @param  hdma pointer to DMA handle.
// 2270   * @retval None
// 2271   */
// 2272 void TIMEx_DMACommutationHalfCplt(DMA_HandleTypeDef *hdma)
// 2273 {
// 2274   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 2275 
// 2276   /* Change the htim state */
// 2277   htim->State = HAL_TIM_STATE_READY;
// 2278 
// 2279 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2280   htim->CommutationHalfCpltCallback(htim);
// 2281 #else
// 2282   HAL_TIMEx_CommutHalfCpltCallback(htim);
// 2283 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2284 }
// 2285 
// 2286 
// 2287 /**
// 2288   * @brief  TIM DMA Delay Pulse complete callback (complementary channel).
// 2289   * @param  hdma pointer to DMA handle.
// 2290   * @retval None
// 2291   */
// 2292 static void TIM_DMADelayPulseNCplt(DMA_HandleTypeDef *hdma)
// 2293 {
// 2294   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 2295 
// 2296   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 2297   {
// 2298     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 2299 
// 2300     if (hdma->Init.Mode == DMA_NORMAL)
// 2301     {
// 2302       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2303     }
// 2304   }
// 2305   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 2306   {
// 2307     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 2308 
// 2309     if (hdma->Init.Mode == DMA_NORMAL)
// 2310     {
// 2311       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2312     }
// 2313   }
// 2314   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 2315   {
// 2316     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 2317 
// 2318     if (hdma->Init.Mode == DMA_NORMAL)
// 2319     {
// 2320       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_3, HAL_TIM_CHANNEL_STATE_READY);
// 2321     }
// 2322   }
// 2323   else
// 2324   {
// 2325     /* nothing to do */
// 2326   }
// 2327 
// 2328 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2329   htim->PWM_PulseFinishedCallback(htim);
// 2330 #else
// 2331   HAL_TIM_PWM_PulseFinishedCallback(htim);
// 2332 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2333 
// 2334   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 2335 }
// 2336 
// 2337 /**
// 2338   * @brief  TIM DMA error callback (complementary channel)
// 2339   * @param  hdma pointer to DMA handle.
// 2340   * @retval None
// 2341   */
// 2342 static void TIM_DMAErrorCCxN(DMA_HandleTypeDef *hdma)
// 2343 {
// 2344   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 2345 
// 2346   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 2347   {
// 2348     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 2349     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2350   }
// 2351   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 2352   {
// 2353     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 2354     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2355   }
// 2356   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 2357   {
// 2358     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 2359     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_3, HAL_TIM_CHANNEL_STATE_READY);
// 2360   }
// 2361   else
// 2362   {
// 2363     /* nothing to do */
// 2364   }
// 2365 
// 2366 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2367   htim->ErrorCallback(htim);
// 2368 #else
// 2369   HAL_TIM_ErrorCallback(htim);
// 2370 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2371 
// 2372   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 2373 }
// 2374 
// 2375 /**
// 2376   * @brief  Enables or disables the TIM Capture Compare Channel xN.
// 2377   * @param  TIMx to select the TIM peripheral
// 2378   * @param  Channel specifies the TIM Channel
// 2379   *          This parameter can be one of the following values:
// 2380   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 2381   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 2382   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 2383   * @param  ChannelNState specifies the TIM Channel CCxNE bit new state.
// 2384   *          This parameter can be: TIM_CCxN_ENABLE or TIM_CCxN_Disable.
// 2385   * @retval None
// 2386   */
// 2387 static void TIM_CCxNChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelNState)
// 2388 {
// 2389   uint32_t tmp;
// 2390 
// 2391   tmp = TIM_CCER_CC1NE << (Channel & 0xFU); /* 0xFU = 15 bits max shift */
// 2392 
// 2393   /* Reset the CCxNE Bit */
// 2394   TIMx->CCER &=  ~tmp;
// 2395 
// 2396   /* Set or reset the CCxNE Bit */
// 2397   TIMx->CCER |= (uint32_t)(ChannelNState << (Channel & 0xFU)); /* 0xFU = 15 bits max shift */
// 2398 }
// 2399 /**
// 2400   * @}
// 2401   */
// 2402 
// 2403 #endif /* HAL_TIM_MODULE_ENABLED */
// 2404 /**
// 2405   * @}
// 2406   */
// 2407 
// 2408 /**
// 2409   * @}
// 2410   */
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none
