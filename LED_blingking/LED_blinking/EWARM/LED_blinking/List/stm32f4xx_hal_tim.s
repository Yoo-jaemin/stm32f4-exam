///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_tim.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW49C.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_tim.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_tim.s
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
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_tim.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_tim.c
//    4   * @author  MCD Application Team
//    5   * @brief   TIM HAL module driver.
//    6   *          This file provides firmware functions to manage the following
//    7   *          functionalities of the Timer (TIM) peripheral:
//    8   *           + TIM Time Base Initialization
//    9   *           + TIM Time Base Start
//   10   *           + TIM Time Base Start Interruption
//   11   *           + TIM Time Base Start DMA
//   12   *           + TIM Output Compare/PWM Initialization
//   13   *           + TIM Output Compare/PWM Channel Configuration
//   14   *           + TIM Output Compare/PWM  Start
//   15   *           + TIM Output Compare/PWM  Start Interruption
//   16   *           + TIM Output Compare/PWM Start DMA
//   17   *           + TIM Input Capture Initialization
//   18   *           + TIM Input Capture Channel Configuration
//   19   *           + TIM Input Capture Start
//   20   *           + TIM Input Capture Start Interruption
//   21   *           + TIM Input Capture Start DMA
//   22   *           + TIM One Pulse Initialization
//   23   *           + TIM One Pulse Channel Configuration
//   24   *           + TIM One Pulse Start
//   25   *           + TIM Encoder Interface Initialization
//   26   *           + TIM Encoder Interface Start
//   27   *           + TIM Encoder Interface Start Interruption
//   28   *           + TIM Encoder Interface Start DMA
//   29   *           + Commutation Event configuration with Interruption and DMA
//   30   *           + TIM OCRef clear configuration
//   31   *           + TIM External Clock configuration
//   32   ******************************************************************************
//   33   * @attention
//   34   *
//   35   * Copyright (c) 2016 STMicroelectronics.
//   36   * All rights reserved.
//   37   *
//   38   * This software is licensed under terms that can be found in the LICENSE file
//   39   * in the root directory of this software component.
//   40   * If no LICENSE file comes with this software, it is provided AS-IS.
//   41   *
//   42   ******************************************************************************
//   43   @verbatim
//   44   ==============================================================================
//   45                       ##### TIMER Generic features #####
//   46   ==============================================================================
//   47   [..] The Timer features include:
//   48        (#) 16-bit up, down, up/down auto-reload counter.
//   49        (#) 16-bit programmable prescaler allowing dividing (also on the fly) the
//   50            counter clock frequency either by any factor between 1 and 65536.
//   51        (#) Up to 4 independent channels for:
//   52            (++) Input Capture
//   53            (++) Output Compare
//   54            (++) PWM generation (Edge and Center-aligned Mode)
//   55            (++) One-pulse mode output
//   56        (#) Synchronization circuit to control the timer with external signals and to interconnect
//   57             several timers together.
//   58        (#) Supports incremental encoder for positioning purposes
//   59 
//   60             ##### How to use this driver #####
//   61   ==============================================================================
//   62     [..]
//   63      (#) Initialize the TIM low level resources by implementing the following functions
//   64          depending on the selected feature:
//   65            (++) Time Base : HAL_TIM_Base_MspInit()
//   66            (++) Input Capture : HAL_TIM_IC_MspInit()
//   67            (++) Output Compare : HAL_TIM_OC_MspInit()
//   68            (++) PWM generation : HAL_TIM_PWM_MspInit()
//   69            (++) One-pulse mode output : HAL_TIM_OnePulse_MspInit()
//   70            (++) Encoder mode output : HAL_TIM_Encoder_MspInit()
//   71 
//   72      (#) Initialize the TIM low level resources :
//   73         (##) Enable the TIM interface clock using __HAL_RCC_TIMx_CLK_ENABLE();
//   74         (##) TIM pins configuration
//   75             (+++) Enable the clock for the TIM GPIOs using the following function:
//   76              __HAL_RCC_GPIOx_CLK_ENABLE();
//   77             (+++) Configure these TIM pins in Alternate function mode using HAL_GPIO_Init();
//   78 
//   79      (#) The external Clock can be configured, if needed (the default clock is the
//   80          internal clock from the APBx), using the following function:
//   81          HAL_TIM_ConfigClockSource, the clock configuration should be done before
//   82          any start function.
//   83 
//   84      (#) Configure the TIM in the desired functioning mode using one of the
//   85        Initialization function of this driver:
//   86        (++) HAL_TIM_Base_Init: to use the Timer to generate a simple time base
//   87        (++) HAL_TIM_OC_Init and HAL_TIM_OC_ConfigChannel: to use the Timer to generate an
//   88             Output Compare signal.
//   89        (++) HAL_TIM_PWM_Init and HAL_TIM_PWM_ConfigChannel: to use the Timer to generate a
//   90             PWM signal.
//   91        (++) HAL_TIM_IC_Init and HAL_TIM_IC_ConfigChannel: to use the Timer to measure an
//   92             external signal.
//   93        (++) HAL_TIM_OnePulse_Init and HAL_TIM_OnePulse_ConfigChannel: to use the Timer
//   94             in One Pulse Mode.
//   95        (++) HAL_TIM_Encoder_Init: to use the Timer Encoder Interface.
//   96 
//   97      (#) Activate the TIM peripheral using one of the start functions depending from the feature used:
//   98            (++) Time Base : HAL_TIM_Base_Start(), HAL_TIM_Base_Start_DMA(), HAL_TIM_Base_Start_IT()
//   99            (++) Input Capture :  HAL_TIM_IC_Start(), HAL_TIM_IC_Start_DMA(), HAL_TIM_IC_Start_IT()
//  100            (++) Output Compare : HAL_TIM_OC_Start(), HAL_TIM_OC_Start_DMA(), HAL_TIM_OC_Start_IT()
//  101            (++) PWM generation : HAL_TIM_PWM_Start(), HAL_TIM_PWM_Start_DMA(), HAL_TIM_PWM_Start_IT()
//  102            (++) One-pulse mode output : HAL_TIM_OnePulse_Start(), HAL_TIM_OnePulse_Start_IT()
//  103            (++) Encoder mode output : HAL_TIM_Encoder_Start(), HAL_TIM_Encoder_Start_DMA(), HAL_TIM_Encoder_Start_IT().
//  104 
//  105      (#) The DMA Burst is managed with the two following functions:
//  106          HAL_TIM_DMABurst_WriteStart()
//  107          HAL_TIM_DMABurst_ReadStart()
//  108 
//  109     *** Callback registration ***
//  110   =============================================
//  111 
//  112   [..]
//  113   The compilation define  USE_HAL_TIM_REGISTER_CALLBACKS when set to 1
//  114   allows the user to configure dynamically the driver callbacks.
//  115 
//  116   [..]
//  117   Use Function HAL_TIM_RegisterCallback() to register a callback.
//  118   HAL_TIM_RegisterCallback() takes as parameters the HAL peripheral handle,
//  119   the Callback ID and a pointer to the user callback function.
//  120 
//  121   [..]
//  122   Use function HAL_TIM_UnRegisterCallback() to reset a callback to the default
//  123   weak function.
//  124   HAL_TIM_UnRegisterCallback takes as parameters the HAL peripheral handle,
//  125   and the Callback ID.
//  126 
//  127   [..]
//  128   These functions allow to register/unregister following callbacks:
//  129     (+) Base_MspInitCallback              : TIM Base Msp Init Callback.
//  130     (+) Base_MspDeInitCallback            : TIM Base Msp DeInit Callback.
//  131     (+) IC_MspInitCallback                : TIM IC Msp Init Callback.
//  132     (+) IC_MspDeInitCallback              : TIM IC Msp DeInit Callback.
//  133     (+) OC_MspInitCallback                : TIM OC Msp Init Callback.
//  134     (+) OC_MspDeInitCallback              : TIM OC Msp DeInit Callback.
//  135     (+) PWM_MspInitCallback               : TIM PWM Msp Init Callback.
//  136     (+) PWM_MspDeInitCallback             : TIM PWM Msp DeInit Callback.
//  137     (+) OnePulse_MspInitCallback          : TIM One Pulse Msp Init Callback.
//  138     (+) OnePulse_MspDeInitCallback        : TIM One Pulse Msp DeInit Callback.
//  139     (+) Encoder_MspInitCallback           : TIM Encoder Msp Init Callback.
//  140     (+) Encoder_MspDeInitCallback         : TIM Encoder Msp DeInit Callback.
//  141     (+) HallSensor_MspInitCallback        : TIM Hall Sensor Msp Init Callback.
//  142     (+) HallSensor_MspDeInitCallback      : TIM Hall Sensor Msp DeInit Callback.
//  143     (+) PeriodElapsedCallback             : TIM Period Elapsed Callback.
//  144     (+) PeriodElapsedHalfCpltCallback     : TIM Period Elapsed half complete Callback.
//  145     (+) TriggerCallback                   : TIM Trigger Callback.
//  146     (+) TriggerHalfCpltCallback           : TIM Trigger half complete Callback.
//  147     (+) IC_CaptureCallback                : TIM Input Capture Callback.
//  148     (+) IC_CaptureHalfCpltCallback        : TIM Input Capture half complete Callback.
//  149     (+) OC_DelayElapsedCallback           : TIM Output Compare Delay Elapsed Callback.
//  150     (+) PWM_PulseFinishedCallback         : TIM PWM Pulse Finished Callback.
//  151     (+) PWM_PulseFinishedHalfCpltCallback : TIM PWM Pulse Finished half complete Callback.
//  152     (+) ErrorCallback                     : TIM Error Callback.
//  153     (+) CommutationCallback               : TIM Commutation Callback.
//  154     (+) CommutationHalfCpltCallback       : TIM Commutation half complete Callback.
//  155     (+) BreakCallback                     : TIM Break Callback.
//  156 
//  157   [..]
//  158 By default, after the Init and when the state is HAL_TIM_STATE_RESET
//  159 all interrupt callbacks are set to the corresponding weak functions:
//  160   examples HAL_TIM_TriggerCallback(), HAL_TIM_ErrorCallback().
//  161 
//  162   [..]
//  163   Exception done for MspInit and MspDeInit functions that are reset to the legacy weak
//  164   functionalities in the Init / DeInit only when these callbacks are null
//  165   (not registered beforehand). If not, MspInit or MspDeInit are not null, the Init / DeInit
//  166     keep and use the user MspInit / MspDeInit callbacks(registered beforehand)
//  167 
//  168   [..]
//  169     Callbacks can be registered / unregistered in HAL_TIM_STATE_READY state only.
//  170     Exception done MspInit / MspDeInit that can be registered / unregistered
//  171     in HAL_TIM_STATE_READY or HAL_TIM_STATE_RESET state,
//  172     thus registered(user) MspInit / DeInit callbacks can be used during the Init / DeInit.
//  173   In that case first register the MspInit/MspDeInit user callbacks
//  174       using HAL_TIM_RegisterCallback() before calling DeInit or Init function.
//  175 
//  176   [..]
//  177       When The compilation define USE_HAL_TIM_REGISTER_CALLBACKS is set to 0 or
//  178       not defined, the callback registration feature is not available and all callbacks
//  179       are set to the corresponding weak functions.
//  180 
//  181   @endverbatim
//  182   ******************************************************************************
//  183   */
//  184 
//  185 /* Includes ------------------------------------------------------------------*/
//  186 #include "stm32f4xx_hal.h"
//  187 
//  188 /** @addtogroup STM32F4xx_HAL_Driver
//  189   * @{
//  190   */
//  191 
//  192 /** @defgroup TIM TIM
//  193   * @brief TIM HAL module driver
//  194   * @{
//  195   */
//  196 
//  197 #ifdef HAL_TIM_MODULE_ENABLED
//  198 
//  199 /* Private typedef -----------------------------------------------------------*/
//  200 /* Private define ------------------------------------------------------------*/
//  201 /* Private macros ------------------------------------------------------------*/
//  202 /* Private variables ---------------------------------------------------------*/
//  203 /* Private function prototypes -----------------------------------------------*/
//  204 /** @addtogroup TIM_Private_Functions
//  205   * @{
//  206   */
//  207 static void TIM_OC1_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config);
//  208 static void TIM_OC3_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config);
//  209 static void TIM_OC4_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config);
//  210 static void TIM_TI1_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter);
//  211 static void TIM_TI2_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
//  212                               uint32_t TIM_ICFilter);
//  213 static void TIM_TI2_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter);
//  214 static void TIM_TI3_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
//  215                               uint32_t TIM_ICFilter);
//  216 static void TIM_TI4_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
//  217                               uint32_t TIM_ICFilter);
//  218 static void TIM_ITRx_SetConfig(TIM_TypeDef *TIMx, uint32_t InputTriggerSource);
//  219 static void TIM_DMAPeriodElapsedCplt(DMA_HandleTypeDef *hdma);
//  220 static void TIM_DMAPeriodElapsedHalfCplt(DMA_HandleTypeDef *hdma);
//  221 static void TIM_DMADelayPulseCplt(DMA_HandleTypeDef *hdma);
//  222 static void TIM_DMATriggerCplt(DMA_HandleTypeDef *hdma);
//  223 static void TIM_DMATriggerHalfCplt(DMA_HandleTypeDef *hdma);
//  224 static HAL_StatusTypeDef TIM_SlaveTimer_SetConfig(TIM_HandleTypeDef *htim,
//  225                                                   const TIM_SlaveConfigTypeDef *sSlaveConfig);
//  226 /**
//  227   * @}
//  228   */
//  229 /* Exported functions --------------------------------------------------------*/
//  230 
//  231 /** @defgroup TIM_Exported_Functions TIM Exported Functions
//  232   * @{
//  233   */
//  234 
//  235 /** @defgroup TIM_Exported_Functions_Group1 TIM Time Base functions
//  236   *  @brief    Time Base functions
//  237   *
//  238 @verbatim
//  239   ==============================================================================
//  240               ##### Time Base functions #####
//  241   ==============================================================================
//  242   [..]
//  243     This section provides functions allowing to:
//  244     (+) Initialize and configure the TIM base.
//  245     (+) De-initialize the TIM base.
//  246     (+) Start the Time Base.
//  247     (+) Stop the Time Base.
//  248     (+) Start the Time Base and enable interrupt.
//  249     (+) Stop the Time Base and disable interrupt.
//  250     (+) Start the Time Base and enable DMA transfer.
//  251     (+) Stop the Time Base and disable DMA transfer.
//  252 
//  253 @endverbatim
//  254   * @{
//  255   */
//  256 /**
//  257   * @brief  Initializes the TIM Time base Unit according to the specified
//  258   *         parameters in the TIM_HandleTypeDef and initialize the associated handle.
//  259   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
//  260   *         requires a timer reset to avoid unexpected direction
//  261   *         due to DIR bit readonly in center aligned mode.
//  262   *         Ex: call @ref HAL_TIM_Base_DeInit() before HAL_TIM_Base_Init()
//  263   * @param  htim TIM Base handle
//  264   * @retval HAL status
//  265   */
//  266 HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim)
//  267 {
//  268   /* Check the TIM handle allocation */
//  269   if (htim == NULL)
//  270   {
//  271     return HAL_ERROR;
//  272   }
//  273 
//  274   /* Check the parameters */
//  275   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  276   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  277   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  278   assert_param(IS_TIM_PERIOD(htim, htim->Init.Period));
//  279   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
//  280 
//  281   if (htim->State == HAL_TIM_STATE_RESET)
//  282   {
//  283     /* Allocate lock resource and initialize it */
//  284     htim->Lock = HAL_UNLOCKED;
//  285 
//  286 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  287     /* Reset interrupt callbacks to legacy weak callbacks */
//  288     TIM_ResetCallback(htim);
//  289 
//  290     if (htim->Base_MspInitCallback == NULL)
//  291     {
//  292       htim->Base_MspInitCallback = HAL_TIM_Base_MspInit;
//  293     }
//  294     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  295     htim->Base_MspInitCallback(htim);
//  296 #else
//  297     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  298     HAL_TIM_Base_MspInit(htim);
//  299 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  300   }
//  301 
//  302   /* Set the TIM state */
//  303   htim->State = HAL_TIM_STATE_BUSY;
//  304 
//  305   /* Set the Time Base configuration */
//  306   TIM_Base_SetConfig(htim->Instance, &htim->Init);
//  307 
//  308   /* Initialize the DMA burst operation state */
//  309   htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
//  310 
//  311   /* Initialize the TIM channels state */
//  312   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
//  313   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
//  314 
//  315   /* Initialize the TIM state*/
//  316   htim->State = HAL_TIM_STATE_READY;
//  317 
//  318   return HAL_OK;
//  319 }
//  320 
//  321 /**
//  322   * @brief  DeInitializes the TIM Base peripheral
//  323   * @param  htim TIM Base handle
//  324   * @retval HAL status
//  325   */
//  326 HAL_StatusTypeDef HAL_TIM_Base_DeInit(TIM_HandleTypeDef *htim)
//  327 {
//  328   /* Check the parameters */
//  329   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  330 
//  331   htim->State = HAL_TIM_STATE_BUSY;
//  332 
//  333   /* Disable the TIM Peripheral Clock */
//  334   __HAL_TIM_DISABLE(htim);
//  335 
//  336 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  337   if (htim->Base_MspDeInitCallback == NULL)
//  338   {
//  339     htim->Base_MspDeInitCallback = HAL_TIM_Base_MspDeInit;
//  340   }
//  341   /* DeInit the low level hardware */
//  342   htim->Base_MspDeInitCallback(htim);
//  343 #else
//  344   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
//  345   HAL_TIM_Base_MspDeInit(htim);
//  346 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  347 
//  348   /* Change the DMA burst operation state */
//  349   htim->DMABurstState = HAL_DMA_BURST_STATE_RESET;
//  350 
//  351   /* Change the TIM channels state */
//  352   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
//  353   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
//  354 
//  355   /* Change TIM state */
//  356   htim->State = HAL_TIM_STATE_RESET;
//  357 
//  358   /* Release Lock */
//  359   __HAL_UNLOCK(htim);
//  360 
//  361   return HAL_OK;
//  362 }
//  363 
//  364 /**
//  365   * @brief  Initializes the TIM Base MSP.
//  366   * @param  htim TIM Base handle
//  367   * @retval None
//  368   */
//  369 __weak void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim)
//  370 {
//  371   /* Prevent unused argument(s) compilation warning */
//  372   UNUSED(htim);
//  373 
//  374   /* NOTE : This function should not be modified, when the callback is needed,
//  375             the HAL_TIM_Base_MspInit could be implemented in the user file
//  376    */
//  377 }
//  378 
//  379 /**
//  380   * @brief  DeInitializes TIM Base MSP.
//  381   * @param  htim TIM Base handle
//  382   * @retval None
//  383   */
//  384 __weak void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef *htim)
//  385 {
//  386   /* Prevent unused argument(s) compilation warning */
//  387   UNUSED(htim);
//  388 
//  389   /* NOTE : This function should not be modified, when the callback is needed,
//  390             the HAL_TIM_Base_MspDeInit could be implemented in the user file
//  391    */
//  392 }
//  393 
//  394 
//  395 /**
//  396   * @brief  Starts the TIM Base generation.
//  397   * @param  htim TIM Base handle
//  398   * @retval HAL status
//  399   */
//  400 HAL_StatusTypeDef HAL_TIM_Base_Start(TIM_HandleTypeDef *htim)
//  401 {
//  402   uint32_t tmpsmcr;
//  403 
//  404   /* Check the parameters */
//  405   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  406 
//  407   /* Check the TIM state */
//  408   if (htim->State != HAL_TIM_STATE_READY)
//  409   {
//  410     return HAL_ERROR;
//  411   }
//  412 
//  413   /* Set the TIM state */
//  414   htim->State = HAL_TIM_STATE_BUSY;
//  415 
//  416   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  417   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  418   {
//  419     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  420     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  421     {
//  422       __HAL_TIM_ENABLE(htim);
//  423     }
//  424   }
//  425   else
//  426   {
//  427     __HAL_TIM_ENABLE(htim);
//  428   }
//  429 
//  430   /* Return function status */
//  431   return HAL_OK;
//  432 }
//  433 
//  434 /**
//  435   * @brief  Stops the TIM Base generation.
//  436   * @param  htim TIM Base handle
//  437   * @retval HAL status
//  438   */
//  439 HAL_StatusTypeDef HAL_TIM_Base_Stop(TIM_HandleTypeDef *htim)
//  440 {
//  441   /* Check the parameters */
//  442   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  443 
//  444   /* Disable the Peripheral */
//  445   __HAL_TIM_DISABLE(htim);
//  446 
//  447   /* Set the TIM state */
//  448   htim->State = HAL_TIM_STATE_READY;
//  449 
//  450   /* Return function status */
//  451   return HAL_OK;
//  452 }
//  453 
//  454 /**
//  455   * @brief  Starts the TIM Base generation in interrupt mode.
//  456   * @param  htim TIM Base handle
//  457   * @retval HAL status
//  458   */
//  459 HAL_StatusTypeDef HAL_TIM_Base_Start_IT(TIM_HandleTypeDef *htim)
//  460 {
//  461   uint32_t tmpsmcr;
//  462 
//  463   /* Check the parameters */
//  464   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  465 
//  466   /* Check the TIM state */
//  467   if (htim->State != HAL_TIM_STATE_READY)
//  468   {
//  469     return HAL_ERROR;
//  470   }
//  471 
//  472   /* Set the TIM state */
//  473   htim->State = HAL_TIM_STATE_BUSY;
//  474 
//  475   /* Enable the TIM Update interrupt */
//  476   __HAL_TIM_ENABLE_IT(htim, TIM_IT_UPDATE);
//  477 
//  478   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  479   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  480   {
//  481     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  482     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  483     {
//  484       __HAL_TIM_ENABLE(htim);
//  485     }
//  486   }
//  487   else
//  488   {
//  489     __HAL_TIM_ENABLE(htim);
//  490   }
//  491 
//  492   /* Return function status */
//  493   return HAL_OK;
//  494 }
//  495 
//  496 /**
//  497   * @brief  Stops the TIM Base generation in interrupt mode.
//  498   * @param  htim TIM Base handle
//  499   * @retval HAL status
//  500   */
//  501 HAL_StatusTypeDef HAL_TIM_Base_Stop_IT(TIM_HandleTypeDef *htim)
//  502 {
//  503   /* Check the parameters */
//  504   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  505 
//  506   /* Disable the TIM Update interrupt */
//  507   __HAL_TIM_DISABLE_IT(htim, TIM_IT_UPDATE);
//  508 
//  509   /* Disable the Peripheral */
//  510   __HAL_TIM_DISABLE(htim);
//  511 
//  512   /* Set the TIM state */
//  513   htim->State = HAL_TIM_STATE_READY;
//  514 
//  515   /* Return function status */
//  516   return HAL_OK;
//  517 }
//  518 
//  519 /**
//  520   * @brief  Starts the TIM Base generation in DMA mode.
//  521   * @param  htim TIM Base handle
//  522   * @param  pData The source Buffer address.
//  523   * @param  Length The length of data to be transferred from memory to peripheral.
//  524   * @retval HAL status
//  525   */
//  526 HAL_StatusTypeDef HAL_TIM_Base_Start_DMA(TIM_HandleTypeDef *htim, const uint32_t *pData, uint16_t Length)
//  527 {
//  528   uint32_t tmpsmcr;
//  529 
//  530   /* Check the parameters */
//  531   assert_param(IS_TIM_DMA_INSTANCE(htim->Instance));
//  532 
//  533   /* Set the TIM state */
//  534   if (htim->State == HAL_TIM_STATE_BUSY)
//  535   {
//  536     return HAL_BUSY;
//  537   }
//  538   else if (htim->State == HAL_TIM_STATE_READY)
//  539   {
//  540     if ((pData == NULL) || (Length == 0U))
//  541     {
//  542       return HAL_ERROR;
//  543     }
//  544     else
//  545     {
//  546       htim->State = HAL_TIM_STATE_BUSY;
//  547     }
//  548   }
//  549   else
//  550   {
//  551     return HAL_ERROR;
//  552   }
//  553 
//  554   /* Set the DMA Period elapsed callbacks */
//  555   htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
//  556   htim->hdma[TIM_DMA_ID_UPDATE]->XferHalfCpltCallback = TIM_DMAPeriodElapsedHalfCplt;
//  557 
//  558   /* Set the DMA error callback */
//  559   htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
//  560 
//  561   /* Enable the DMA stream */
//  562   if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)pData, (uint32_t)&htim->Instance->ARR,
//  563                        Length) != HAL_OK)
//  564   {
//  565     /* Return error status */
//  566     return HAL_ERROR;
//  567   }
//  568 
//  569   /* Enable the TIM Update DMA request */
//  570   __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_UPDATE);
//  571 
//  572   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  573   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  574   {
//  575     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  576     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  577     {
//  578       __HAL_TIM_ENABLE(htim);
//  579     }
//  580   }
//  581   else
//  582   {
//  583     __HAL_TIM_ENABLE(htim);
//  584   }
//  585 
//  586   /* Return function status */
//  587   return HAL_OK;
//  588 }
//  589 
//  590 /**
//  591   * @brief  Stops the TIM Base generation in DMA mode.
//  592   * @param  htim TIM Base handle
//  593   * @retval HAL status
//  594   */
//  595 HAL_StatusTypeDef HAL_TIM_Base_Stop_DMA(TIM_HandleTypeDef *htim)
//  596 {
//  597   /* Check the parameters */
//  598   assert_param(IS_TIM_DMA_INSTANCE(htim->Instance));
//  599 
//  600   /* Disable the TIM Update DMA request */
//  601   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_UPDATE);
//  602 
//  603   (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_UPDATE]);
//  604 
//  605   /* Disable the Peripheral */
//  606   __HAL_TIM_DISABLE(htim);
//  607 
//  608   /* Set the TIM state */
//  609   htim->State = HAL_TIM_STATE_READY;
//  610 
//  611   /* Return function status */
//  612   return HAL_OK;
//  613 }
//  614 
//  615 /**
//  616   * @}
//  617   */
//  618 
//  619 /** @defgroup TIM_Exported_Functions_Group2 TIM Output Compare functions
//  620   *  @brief    TIM Output Compare functions
//  621   *
//  622 @verbatim
//  623   ==============================================================================
//  624                   ##### TIM Output Compare functions #####
//  625   ==============================================================================
//  626   [..]
//  627     This section provides functions allowing to:
//  628     (+) Initialize and configure the TIM Output Compare.
//  629     (+) De-initialize the TIM Output Compare.
//  630     (+) Start the TIM Output Compare.
//  631     (+) Stop the TIM Output Compare.
//  632     (+) Start the TIM Output Compare and enable interrupt.
//  633     (+) Stop the TIM Output Compare and disable interrupt.
//  634     (+) Start the TIM Output Compare and enable DMA transfer.
//  635     (+) Stop the TIM Output Compare and disable DMA transfer.
//  636 
//  637 @endverbatim
//  638   * @{
//  639   */
//  640 /**
//  641   * @brief  Initializes the TIM Output Compare according to the specified
//  642   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
//  643   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
//  644   *         requires a timer reset to avoid unexpected direction
//  645   *         due to DIR bit readonly in center aligned mode.
//  646   *         Ex: call @ref HAL_TIM_OC_DeInit() before HAL_TIM_OC_Init()
//  647   * @param  htim TIM Output Compare handle
//  648   * @retval HAL status
//  649   */
//  650 HAL_StatusTypeDef HAL_TIM_OC_Init(TIM_HandleTypeDef *htim)
//  651 {
//  652   /* Check the TIM handle allocation */
//  653   if (htim == NULL)
//  654   {
//  655     return HAL_ERROR;
//  656   }
//  657 
//  658   /* Check the parameters */
//  659   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  660   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
//  661   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
//  662   assert_param(IS_TIM_PERIOD(htim, htim->Init.Period));
//  663   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
//  664 
//  665   if (htim->State == HAL_TIM_STATE_RESET)
//  666   {
//  667     /* Allocate lock resource and initialize it */
//  668     htim->Lock = HAL_UNLOCKED;
//  669 
//  670 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  671     /* Reset interrupt callbacks to legacy weak callbacks */
//  672     TIM_ResetCallback(htim);
//  673 
//  674     if (htim->OC_MspInitCallback == NULL)
//  675     {
//  676       htim->OC_MspInitCallback = HAL_TIM_OC_MspInit;
//  677     }
//  678     /* Init the low level hardware : GPIO, CLOCK, NVIC */
//  679     htim->OC_MspInitCallback(htim);
//  680 #else
//  681     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
//  682     HAL_TIM_OC_MspInit(htim);
//  683 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  684   }
//  685 
//  686   /* Set the TIM state */
//  687   htim->State = HAL_TIM_STATE_BUSY;
//  688 
//  689   /* Init the base time for the Output Compare */
//  690   TIM_Base_SetConfig(htim->Instance,  &htim->Init);
//  691 
//  692   /* Initialize the DMA burst operation state */
//  693   htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
//  694 
//  695   /* Initialize the TIM channels state */
//  696   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
//  697   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
//  698 
//  699   /* Initialize the TIM state*/
//  700   htim->State = HAL_TIM_STATE_READY;
//  701 
//  702   return HAL_OK;
//  703 }
//  704 
//  705 /**
//  706   * @brief  DeInitializes the TIM peripheral
//  707   * @param  htim TIM Output Compare handle
//  708   * @retval HAL status
//  709   */
//  710 HAL_StatusTypeDef HAL_TIM_OC_DeInit(TIM_HandleTypeDef *htim)
//  711 {
//  712   /* Check the parameters */
//  713   assert_param(IS_TIM_INSTANCE(htim->Instance));
//  714 
//  715   htim->State = HAL_TIM_STATE_BUSY;
//  716 
//  717   /* Disable the TIM Peripheral Clock */
//  718   __HAL_TIM_DISABLE(htim);
//  719 
//  720 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
//  721   if (htim->OC_MspDeInitCallback == NULL)
//  722   {
//  723     htim->OC_MspDeInitCallback = HAL_TIM_OC_MspDeInit;
//  724   }
//  725   /* DeInit the low level hardware */
//  726   htim->OC_MspDeInitCallback(htim);
//  727 #else
//  728   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
//  729   HAL_TIM_OC_MspDeInit(htim);
//  730 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
//  731 
//  732   /* Change the DMA burst operation state */
//  733   htim->DMABurstState = HAL_DMA_BURST_STATE_RESET;
//  734 
//  735   /* Change the TIM channels state */
//  736   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
//  737   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
//  738 
//  739   /* Change TIM state */
//  740   htim->State = HAL_TIM_STATE_RESET;
//  741 
//  742   /* Release Lock */
//  743   __HAL_UNLOCK(htim);
//  744 
//  745   return HAL_OK;
//  746 }
//  747 
//  748 /**
//  749   * @brief  Initializes the TIM Output Compare MSP.
//  750   * @param  htim TIM Output Compare handle
//  751   * @retval None
//  752   */
//  753 __weak void HAL_TIM_OC_MspInit(TIM_HandleTypeDef *htim)
//  754 {
//  755   /* Prevent unused argument(s) compilation warning */
//  756   UNUSED(htim);
//  757 
//  758   /* NOTE : This function should not be modified, when the callback is needed,
//  759             the HAL_TIM_OC_MspInit could be implemented in the user file
//  760    */
//  761 }
//  762 
//  763 /**
//  764   * @brief  DeInitializes TIM Output Compare MSP.
//  765   * @param  htim TIM Output Compare handle
//  766   * @retval None
//  767   */
//  768 __weak void HAL_TIM_OC_MspDeInit(TIM_HandleTypeDef *htim)
//  769 {
//  770   /* Prevent unused argument(s) compilation warning */
//  771   UNUSED(htim);
//  772 
//  773   /* NOTE : This function should not be modified, when the callback is needed,
//  774             the HAL_TIM_OC_MspDeInit could be implemented in the user file
//  775    */
//  776 }
//  777 
//  778 /**
//  779   * @brief  Starts the TIM Output Compare signal generation.
//  780   * @param  htim TIM Output Compare handle
//  781   * @param  Channel TIM Channel to be enabled
//  782   *          This parameter can be one of the following values:
//  783   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  784   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  785   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  786   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  787   * @retval HAL status
//  788   */
//  789 HAL_StatusTypeDef HAL_TIM_OC_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
//  790 {
//  791   uint32_t tmpsmcr;
//  792 
//  793   /* Check the parameters */
//  794   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  795 
//  796   /* Check the TIM channel state */
//  797   if (TIM_CHANNEL_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
//  798   {
//  799     return HAL_ERROR;
//  800   }
//  801 
//  802   /* Set the TIM channel state */
//  803   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
//  804 
//  805   /* Enable the Output compare channel */
//  806   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
//  807 
//  808   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
//  809   {
//  810     /* Enable the main output */
//  811     __HAL_TIM_MOE_ENABLE(htim);
//  812   }
//  813 
//  814   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  815   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  816   {
//  817     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  818     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  819     {
//  820       __HAL_TIM_ENABLE(htim);
//  821     }
//  822   }
//  823   else
//  824   {
//  825     __HAL_TIM_ENABLE(htim);
//  826   }
//  827 
//  828   /* Return function status */
//  829   return HAL_OK;
//  830 }
//  831 
//  832 /**
//  833   * @brief  Stops the TIM Output Compare signal generation.
//  834   * @param  htim TIM Output Compare handle
//  835   * @param  Channel TIM Channel to be disabled
//  836   *          This parameter can be one of the following values:
//  837   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  838   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  839   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  840   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  841   * @retval HAL status
//  842   */
//  843 HAL_StatusTypeDef HAL_TIM_OC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
//  844 {
//  845   /* Check the parameters */
//  846   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  847 
//  848   /* Disable the Output compare channel */
//  849   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
//  850 
//  851   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
//  852   {
//  853     /* Disable the Main Output */
//  854     __HAL_TIM_MOE_DISABLE(htim);
//  855   }
//  856 
//  857   /* Disable the Peripheral */
//  858   __HAL_TIM_DISABLE(htim);
//  859 
//  860   /* Set the TIM channel state */
//  861   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
//  862 
//  863   /* Return function status */
//  864   return HAL_OK;
//  865 }
//  866 
//  867 /**
//  868   * @brief  Starts the TIM Output Compare signal generation in interrupt mode.
//  869   * @param  htim TIM Output Compare handle
//  870   * @param  Channel TIM Channel to be enabled
//  871   *          This parameter can be one of the following values:
//  872   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  873   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  874   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  875   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  876   * @retval HAL status
//  877   */
//  878 HAL_StatusTypeDef HAL_TIM_OC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  879 {
//  880   HAL_StatusTypeDef status = HAL_OK;
//  881   uint32_t tmpsmcr;
//  882 
//  883   /* Check the parameters */
//  884   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  885 
//  886   /* Check the TIM channel state */
//  887   if (TIM_CHANNEL_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
//  888   {
//  889     return HAL_ERROR;
//  890   }
//  891 
//  892   /* Set the TIM channel state */
//  893   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
//  894 
//  895   switch (Channel)
//  896   {
//  897     case TIM_CHANNEL_1:
//  898     {
//  899       /* Enable the TIM Capture/Compare 1 interrupt */
//  900       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
//  901       break;
//  902     }
//  903 
//  904     case TIM_CHANNEL_2:
//  905     {
//  906       /* Enable the TIM Capture/Compare 2 interrupt */
//  907       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
//  908       break;
//  909     }
//  910 
//  911     case TIM_CHANNEL_3:
//  912     {
//  913       /* Enable the TIM Capture/Compare 3 interrupt */
//  914       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
//  915       break;
//  916     }
//  917 
//  918     case TIM_CHANNEL_4:
//  919     {
//  920       /* Enable the TIM Capture/Compare 4 interrupt */
//  921       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
//  922       break;
//  923     }
//  924 
//  925     default:
//  926       status = HAL_ERROR;
//  927       break;
//  928   }
//  929 
//  930   if (status == HAL_OK)
//  931   {
//  932     /* Enable the Output compare channel */
//  933     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
//  934 
//  935     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
//  936     {
//  937       /* Enable the main output */
//  938       __HAL_TIM_MOE_ENABLE(htim);
//  939     }
//  940 
//  941     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
//  942     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
//  943     {
//  944       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
//  945       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
//  946       {
//  947         __HAL_TIM_ENABLE(htim);
//  948       }
//  949     }
//  950     else
//  951     {
//  952       __HAL_TIM_ENABLE(htim);
//  953     }
//  954   }
//  955 
//  956   /* Return function status */
//  957   return status;
//  958 }
//  959 
//  960 /**
//  961   * @brief  Stops the TIM Output Compare signal generation in interrupt mode.
//  962   * @param  htim TIM Output Compare handle
//  963   * @param  Channel TIM Channel to be disabled
//  964   *          This parameter can be one of the following values:
//  965   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
//  966   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
//  967   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
//  968   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
//  969   * @retval HAL status
//  970   */
//  971 HAL_StatusTypeDef HAL_TIM_OC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
//  972 {
//  973   HAL_StatusTypeDef status = HAL_OK;
//  974 
//  975   /* Check the parameters */
//  976   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
//  977 
//  978   switch (Channel)
//  979   {
//  980     case TIM_CHANNEL_1:
//  981     {
//  982       /* Disable the TIM Capture/Compare 1 interrupt */
//  983       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
//  984       break;
//  985     }
//  986 
//  987     case TIM_CHANNEL_2:
//  988     {
//  989       /* Disable the TIM Capture/Compare 2 interrupt */
//  990       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
//  991       break;
//  992     }
//  993 
//  994     case TIM_CHANNEL_3:
//  995     {
//  996       /* Disable the TIM Capture/Compare 3 interrupt */
//  997       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
//  998       break;
//  999     }
// 1000 
// 1001     case TIM_CHANNEL_4:
// 1002     {
// 1003       /* Disable the TIM Capture/Compare 4 interrupt */
// 1004       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
// 1005       break;
// 1006     }
// 1007 
// 1008     default:
// 1009       status = HAL_ERROR;
// 1010       break;
// 1011   }
// 1012 
// 1013   if (status == HAL_OK)
// 1014   {
// 1015     /* Disable the Output compare channel */
// 1016     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1017 
// 1018     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1019     {
// 1020       /* Disable the Main Output */
// 1021       __HAL_TIM_MOE_DISABLE(htim);
// 1022     }
// 1023 
// 1024     /* Disable the Peripheral */
// 1025     __HAL_TIM_DISABLE(htim);
// 1026 
// 1027     /* Set the TIM channel state */
// 1028     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1029   }
// 1030 
// 1031   /* Return function status */
// 1032   return status;
// 1033 }
// 1034 
// 1035 /**
// 1036   * @brief  Starts the TIM Output Compare signal generation in DMA mode.
// 1037   * @param  htim TIM Output Compare handle
// 1038   * @param  Channel TIM Channel to be enabled
// 1039   *          This parameter can be one of the following values:
// 1040   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1041   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1042   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1043   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1044   * @param  pData The source Buffer address.
// 1045   * @param  Length The length of data to be transferred from memory to TIM peripheral
// 1046   * @retval HAL status
// 1047   */
// 1048 HAL_StatusTypeDef HAL_TIM_OC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
// 1049                                        uint16_t Length)
// 1050 {
// 1051   HAL_StatusTypeDef status = HAL_OK;
// 1052   uint32_t tmpsmcr;
// 1053 
// 1054   /* Check the parameters */
// 1055   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1056 
// 1057   /* Set the TIM channel state */
// 1058   if (TIM_CHANNEL_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_BUSY)
// 1059   {
// 1060     return HAL_BUSY;
// 1061   }
// 1062   else if (TIM_CHANNEL_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_READY)
// 1063   {
// 1064     if ((pData == NULL) || (Length == 0U))
// 1065     {
// 1066       return HAL_ERROR;
// 1067     }
// 1068     else
// 1069     {
// 1070       TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 1071     }
// 1072   }
// 1073   else
// 1074   {
// 1075     return HAL_ERROR;
// 1076   }
// 1077 
// 1078   switch (Channel)
// 1079   {
// 1080     case TIM_CHANNEL_1:
// 1081     {
// 1082       /* Set the DMA compare callbacks */
// 1083       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1084       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1085 
// 1086       /* Set the DMA error callback */
// 1087       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 1088 
// 1089       /* Enable the DMA stream */
// 1090       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1,
// 1091                            Length) != HAL_OK)
// 1092       {
// 1093         /* Return error status */
// 1094         return HAL_ERROR;
// 1095       }
// 1096 
// 1097       /* Enable the TIM Capture/Compare 1 DMA request */
// 1098       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 1099       break;
// 1100     }
// 1101 
// 1102     case TIM_CHANNEL_2:
// 1103     {
// 1104       /* Set the DMA compare callbacks */
// 1105       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1106       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1107 
// 1108       /* Set the DMA error callback */
// 1109       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 1110 
// 1111       /* Enable the DMA stream */
// 1112       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2,
// 1113                            Length) != HAL_OK)
// 1114       {
// 1115         /* Return error status */
// 1116         return HAL_ERROR;
// 1117       }
// 1118 
// 1119       /* Enable the TIM Capture/Compare 2 DMA request */
// 1120       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 1121       break;
// 1122     }
// 1123 
// 1124     case TIM_CHANNEL_3:
// 1125     {
// 1126       /* Set the DMA compare callbacks */
// 1127       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1128       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1129 
// 1130       /* Set the DMA error callback */
// 1131       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 1132 
// 1133       /* Enable the DMA stream */
// 1134       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3,
// 1135                            Length) != HAL_OK)
// 1136       {
// 1137         /* Return error status */
// 1138         return HAL_ERROR;
// 1139       }
// 1140       /* Enable the TIM Capture/Compare 3 DMA request */
// 1141       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1142       break;
// 1143     }
// 1144 
// 1145     case TIM_CHANNEL_4:
// 1146     {
// 1147       /* Set the DMA compare callbacks */
// 1148       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1149       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1150 
// 1151       /* Set the DMA error callback */
// 1152       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 1153 
// 1154       /* Enable the DMA stream */
// 1155       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->CCR4,
// 1156                            Length) != HAL_OK)
// 1157       {
// 1158         /* Return error status */
// 1159         return HAL_ERROR;
// 1160       }
// 1161       /* Enable the TIM Capture/Compare 4 DMA request */
// 1162       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 1163       break;
// 1164     }
// 1165 
// 1166     default:
// 1167       status = HAL_ERROR;
// 1168       break;
// 1169   }
// 1170 
// 1171   if (status == HAL_OK)
// 1172   {
// 1173     /* Enable the Output compare channel */
// 1174     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1175 
// 1176     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1177     {
// 1178       /* Enable the main output */
// 1179       __HAL_TIM_MOE_ENABLE(htim);
// 1180     }
// 1181 
// 1182     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1183     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1184     {
// 1185       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1186       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1187       {
// 1188         __HAL_TIM_ENABLE(htim);
// 1189       }
// 1190     }
// 1191     else
// 1192     {
// 1193       __HAL_TIM_ENABLE(htim);
// 1194     }
// 1195   }
// 1196 
// 1197   /* Return function status */
// 1198   return status;
// 1199 }
// 1200 
// 1201 /**
// 1202   * @brief  Stops the TIM Output Compare signal generation in DMA mode.
// 1203   * @param  htim TIM Output Compare handle
// 1204   * @param  Channel TIM Channel to be disabled
// 1205   *          This parameter can be one of the following values:
// 1206   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1207   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1208   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1209   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1210   * @retval HAL status
// 1211   */
// 1212 HAL_StatusTypeDef HAL_TIM_OC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1213 {
// 1214   HAL_StatusTypeDef status = HAL_OK;
// 1215 
// 1216   /* Check the parameters */
// 1217   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1218 
// 1219   switch (Channel)
// 1220   {
// 1221     case TIM_CHANNEL_1:
// 1222     {
// 1223       /* Disable the TIM Capture/Compare 1 DMA request */
// 1224       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1225       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 1226       break;
// 1227     }
// 1228 
// 1229     case TIM_CHANNEL_2:
// 1230     {
// 1231       /* Disable the TIM Capture/Compare 2 DMA request */
// 1232       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1233       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 1234       break;
// 1235     }
// 1236 
// 1237     case TIM_CHANNEL_3:
// 1238     {
// 1239       /* Disable the TIM Capture/Compare 3 DMA request */
// 1240       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1241       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 1242       break;
// 1243     }
// 1244 
// 1245     case TIM_CHANNEL_4:
// 1246     {
// 1247       /* Disable the TIM Capture/Compare 4 interrupt */
// 1248       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 1249       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 1250       break;
// 1251     }
// 1252 
// 1253     default:
// 1254       status = HAL_ERROR;
// 1255       break;
// 1256   }
// 1257 
// 1258   if (status == HAL_OK)
// 1259   {
// 1260     /* Disable the Output compare channel */
// 1261     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1262 
// 1263     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1264     {
// 1265       /* Disable the Main Output */
// 1266       __HAL_TIM_MOE_DISABLE(htim);
// 1267     }
// 1268 
// 1269     /* Disable the Peripheral */
// 1270     __HAL_TIM_DISABLE(htim);
// 1271 
// 1272     /* Set the TIM channel state */
// 1273     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1274   }
// 1275 
// 1276   /* Return function status */
// 1277   return status;
// 1278 }
// 1279 
// 1280 /**
// 1281   * @}
// 1282   */
// 1283 
// 1284 /** @defgroup TIM_Exported_Functions_Group3 TIM PWM functions
// 1285   *  @brief    TIM PWM functions
// 1286   *
// 1287 @verbatim
// 1288   ==============================================================================
// 1289                           ##### TIM PWM functions #####
// 1290   ==============================================================================
// 1291   [..]
// 1292     This section provides functions allowing to:
// 1293     (+) Initialize and configure the TIM PWM.
// 1294     (+) De-initialize the TIM PWM.
// 1295     (+) Start the TIM PWM.
// 1296     (+) Stop the TIM PWM.
// 1297     (+) Start the TIM PWM and enable interrupt.
// 1298     (+) Stop the TIM PWM and disable interrupt.
// 1299     (+) Start the TIM PWM and enable DMA transfer.
// 1300     (+) Stop the TIM PWM and disable DMA transfer.
// 1301 
// 1302 @endverbatim
// 1303   * @{
// 1304   */
// 1305 /**
// 1306   * @brief  Initializes the TIM PWM Time Base according to the specified
// 1307   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
// 1308   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 1309   *         requires a timer reset to avoid unexpected direction
// 1310   *         due to DIR bit readonly in center aligned mode.
// 1311   *         Ex: call @ref HAL_TIM_PWM_DeInit() before HAL_TIM_PWM_Init()
// 1312   * @param  htim TIM PWM handle
// 1313   * @retval HAL status
// 1314   */
// 1315 HAL_StatusTypeDef HAL_TIM_PWM_Init(TIM_HandleTypeDef *htim)
// 1316 {
// 1317   /* Check the TIM handle allocation */
// 1318   if (htim == NULL)
// 1319   {
// 1320     return HAL_ERROR;
// 1321   }
// 1322 
// 1323   /* Check the parameters */
// 1324   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1325   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 1326   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 1327   assert_param(IS_TIM_PERIOD(htim, htim->Init.Period));
// 1328   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 1329 
// 1330   if (htim->State == HAL_TIM_STATE_RESET)
// 1331   {
// 1332     /* Allocate lock resource and initialize it */
// 1333     htim->Lock = HAL_UNLOCKED;
// 1334 
// 1335 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 1336     /* Reset interrupt callbacks to legacy weak callbacks */
// 1337     TIM_ResetCallback(htim);
// 1338 
// 1339     if (htim->PWM_MspInitCallback == NULL)
// 1340     {
// 1341       htim->PWM_MspInitCallback = HAL_TIM_PWM_MspInit;
// 1342     }
// 1343     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 1344     htim->PWM_MspInitCallback(htim);
// 1345 #else
// 1346     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 1347     HAL_TIM_PWM_MspInit(htim);
// 1348 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 1349   }
// 1350 
// 1351   /* Set the TIM state */
// 1352   htim->State = HAL_TIM_STATE_BUSY;
// 1353 
// 1354   /* Init the base time for the PWM */
// 1355   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 1356 
// 1357   /* Initialize the DMA burst operation state */
// 1358   htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
// 1359 
// 1360   /* Initialize the TIM channels state */
// 1361   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
// 1362   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
// 1363 
// 1364   /* Initialize the TIM state*/
// 1365   htim->State = HAL_TIM_STATE_READY;
// 1366 
// 1367   return HAL_OK;
// 1368 }
// 1369 
// 1370 /**
// 1371   * @brief  DeInitializes the TIM peripheral
// 1372   * @param  htim TIM PWM handle
// 1373   * @retval HAL status
// 1374   */
// 1375 HAL_StatusTypeDef HAL_TIM_PWM_DeInit(TIM_HandleTypeDef *htim)
// 1376 {
// 1377   /* Check the parameters */
// 1378   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1379 
// 1380   htim->State = HAL_TIM_STATE_BUSY;
// 1381 
// 1382   /* Disable the TIM Peripheral Clock */
// 1383   __HAL_TIM_DISABLE(htim);
// 1384 
// 1385 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 1386   if (htim->PWM_MspDeInitCallback == NULL)
// 1387   {
// 1388     htim->PWM_MspDeInitCallback = HAL_TIM_PWM_MspDeInit;
// 1389   }
// 1390   /* DeInit the low level hardware */
// 1391   htim->PWM_MspDeInitCallback(htim);
// 1392 #else
// 1393   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
// 1394   HAL_TIM_PWM_MspDeInit(htim);
// 1395 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 1396 
// 1397   /* Change the DMA burst operation state */
// 1398   htim->DMABurstState = HAL_DMA_BURST_STATE_RESET;
// 1399 
// 1400   /* Change the TIM channels state */
// 1401   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
// 1402   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
// 1403 
// 1404   /* Change TIM state */
// 1405   htim->State = HAL_TIM_STATE_RESET;
// 1406 
// 1407   /* Release Lock */
// 1408   __HAL_UNLOCK(htim);
// 1409 
// 1410   return HAL_OK;
// 1411 }
// 1412 
// 1413 /**
// 1414   * @brief  Initializes the TIM PWM MSP.
// 1415   * @param  htim TIM PWM handle
// 1416   * @retval None
// 1417   */
// 1418 __weak void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim)
// 1419 {
// 1420   /* Prevent unused argument(s) compilation warning */
// 1421   UNUSED(htim);
// 1422 
// 1423   /* NOTE : This function should not be modified, when the callback is needed,
// 1424             the HAL_TIM_PWM_MspInit could be implemented in the user file
// 1425    */
// 1426 }
// 1427 
// 1428 /**
// 1429   * @brief  DeInitializes TIM PWM MSP.
// 1430   * @param  htim TIM PWM handle
// 1431   * @retval None
// 1432   */
// 1433 __weak void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef *htim)
// 1434 {
// 1435   /* Prevent unused argument(s) compilation warning */
// 1436   UNUSED(htim);
// 1437 
// 1438   /* NOTE : This function should not be modified, when the callback is needed,
// 1439             the HAL_TIM_PWM_MspDeInit could be implemented in the user file
// 1440    */
// 1441 }
// 1442 
// 1443 /**
// 1444   * @brief  Starts the PWM signal generation.
// 1445   * @param  htim TIM handle
// 1446   * @param  Channel TIM Channels to be enabled
// 1447   *          This parameter can be one of the following values:
// 1448   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1449   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1450   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1451   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1452   * @retval HAL status
// 1453   */
// 1454 HAL_StatusTypeDef HAL_TIM_PWM_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1455 {
// 1456   uint32_t tmpsmcr;
// 1457 
// 1458   /* Check the parameters */
// 1459   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1460 
// 1461   /* Check the TIM channel state */
// 1462   if (TIM_CHANNEL_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
// 1463   {
// 1464     return HAL_ERROR;
// 1465   }
// 1466 
// 1467   /* Set the TIM channel state */
// 1468   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 1469 
// 1470   /* Enable the Capture compare channel */
// 1471   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1472 
// 1473   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1474   {
// 1475     /* Enable the main output */
// 1476     __HAL_TIM_MOE_ENABLE(htim);
// 1477   }
// 1478 
// 1479   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1480   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1481   {
// 1482     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1483     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1484     {
// 1485       __HAL_TIM_ENABLE(htim);
// 1486     }
// 1487   }
// 1488   else
// 1489   {
// 1490     __HAL_TIM_ENABLE(htim);
// 1491   }
// 1492 
// 1493   /* Return function status */
// 1494   return HAL_OK;
// 1495 }
// 1496 
// 1497 /**
// 1498   * @brief  Stops the PWM signal generation.
// 1499   * @param  htim TIM PWM handle
// 1500   * @param  Channel TIM Channels to be disabled
// 1501   *          This parameter can be one of the following values:
// 1502   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1503   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1504   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1505   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1506   * @retval HAL status
// 1507   */
// 1508 HAL_StatusTypeDef HAL_TIM_PWM_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1509 {
// 1510   /* Check the parameters */
// 1511   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1512 
// 1513   /* Disable the Capture compare channel */
// 1514   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1515 
// 1516   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1517   {
// 1518     /* Disable the Main Output */
// 1519     __HAL_TIM_MOE_DISABLE(htim);
// 1520   }
// 1521 
// 1522   /* Disable the Peripheral */
// 1523   __HAL_TIM_DISABLE(htim);
// 1524 
// 1525   /* Set the TIM channel state */
// 1526   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1527 
// 1528   /* Return function status */
// 1529   return HAL_OK;
// 1530 }
// 1531 
// 1532 /**
// 1533   * @brief  Starts the PWM signal generation in interrupt mode.
// 1534   * @param  htim TIM PWM handle
// 1535   * @param  Channel TIM Channel to be enabled
// 1536   *          This parameter can be one of the following values:
// 1537   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1538   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1539   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1540   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1541   * @retval HAL status
// 1542   */
// 1543 HAL_StatusTypeDef HAL_TIM_PWM_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1544 {
// 1545   HAL_StatusTypeDef status = HAL_OK;
// 1546   uint32_t tmpsmcr;
// 1547 
// 1548   /* Check the parameters */
// 1549   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1550 
// 1551   /* Check the TIM channel state */
// 1552   if (TIM_CHANNEL_STATE_GET(htim, Channel) != HAL_TIM_CHANNEL_STATE_READY)
// 1553   {
// 1554     return HAL_ERROR;
// 1555   }
// 1556 
// 1557   /* Set the TIM channel state */
// 1558   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 1559 
// 1560   switch (Channel)
// 1561   {
// 1562     case TIM_CHANNEL_1:
// 1563     {
// 1564       /* Enable the TIM Capture/Compare 1 interrupt */
// 1565       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 1566       break;
// 1567     }
// 1568 
// 1569     case TIM_CHANNEL_2:
// 1570     {
// 1571       /* Enable the TIM Capture/Compare 2 interrupt */
// 1572       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 1573       break;
// 1574     }
// 1575 
// 1576     case TIM_CHANNEL_3:
// 1577     {
// 1578       /* Enable the TIM Capture/Compare 3 interrupt */
// 1579       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 1580       break;
// 1581     }
// 1582 
// 1583     case TIM_CHANNEL_4:
// 1584     {
// 1585       /* Enable the TIM Capture/Compare 4 interrupt */
// 1586       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
// 1587       break;
// 1588     }
// 1589 
// 1590     default:
// 1591       status = HAL_ERROR;
// 1592       break;
// 1593   }
// 1594 
// 1595   if (status == HAL_OK)
// 1596   {
// 1597     /* Enable the Capture compare channel */
// 1598     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1599 
// 1600     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1601     {
// 1602       /* Enable the main output */
// 1603       __HAL_TIM_MOE_ENABLE(htim);
// 1604     }
// 1605 
// 1606     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1607     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1608     {
// 1609       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1610       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1611       {
// 1612         __HAL_TIM_ENABLE(htim);
// 1613       }
// 1614     }
// 1615     else
// 1616     {
// 1617       __HAL_TIM_ENABLE(htim);
// 1618     }
// 1619   }
// 1620 
// 1621   /* Return function status */
// 1622   return status;
// 1623 }
// 1624 
// 1625 /**
// 1626   * @brief  Stops the PWM signal generation in interrupt mode.
// 1627   * @param  htim TIM PWM handle
// 1628   * @param  Channel TIM Channels to be disabled
// 1629   *          This parameter can be one of the following values:
// 1630   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1631   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1632   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1633   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1634   * @retval HAL status
// 1635   */
// 1636 HAL_StatusTypeDef HAL_TIM_PWM_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1637 {
// 1638   HAL_StatusTypeDef status = HAL_OK;
// 1639 
// 1640   /* Check the parameters */
// 1641   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1642 
// 1643   switch (Channel)
// 1644   {
// 1645     case TIM_CHANNEL_1:
// 1646     {
// 1647       /* Disable the TIM Capture/Compare 1 interrupt */
// 1648       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 1649       break;
// 1650     }
// 1651 
// 1652     case TIM_CHANNEL_2:
// 1653     {
// 1654       /* Disable the TIM Capture/Compare 2 interrupt */
// 1655       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 1656       break;
// 1657     }
// 1658 
// 1659     case TIM_CHANNEL_3:
// 1660     {
// 1661       /* Disable the TIM Capture/Compare 3 interrupt */
// 1662       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 1663       break;
// 1664     }
// 1665 
// 1666     case TIM_CHANNEL_4:
// 1667     {
// 1668       /* Disable the TIM Capture/Compare 4 interrupt */
// 1669       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
// 1670       break;
// 1671     }
// 1672 
// 1673     default:
// 1674       status = HAL_ERROR;
// 1675       break;
// 1676   }
// 1677 
// 1678   if (status == HAL_OK)
// 1679   {
// 1680     /* Disable the Capture compare channel */
// 1681     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1682 
// 1683     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1684     {
// 1685       /* Disable the Main Output */
// 1686       __HAL_TIM_MOE_DISABLE(htim);
// 1687     }
// 1688 
// 1689     /* Disable the Peripheral */
// 1690     __HAL_TIM_DISABLE(htim);
// 1691 
// 1692     /* Set the TIM channel state */
// 1693     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1694   }
// 1695 
// 1696   /* Return function status */
// 1697   return status;
// 1698 }
// 1699 
// 1700 /**
// 1701   * @brief  Starts the TIM PWM signal generation in DMA mode.
// 1702   * @param  htim TIM PWM handle
// 1703   * @param  Channel TIM Channels to be enabled
// 1704   *          This parameter can be one of the following values:
// 1705   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1706   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1707   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1708   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1709   * @param  pData The source Buffer address.
// 1710   * @param  Length The length of data to be transferred from memory to TIM peripheral
// 1711   * @retval HAL status
// 1712   */
// 1713 HAL_StatusTypeDef HAL_TIM_PWM_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, const uint32_t *pData,
// 1714                                         uint16_t Length)
// 1715 {
// 1716   HAL_StatusTypeDef status = HAL_OK;
// 1717   uint32_t tmpsmcr;
// 1718 
// 1719   /* Check the parameters */
// 1720   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1721 
// 1722   /* Set the TIM channel state */
// 1723   if (TIM_CHANNEL_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_BUSY)
// 1724   {
// 1725     return HAL_BUSY;
// 1726   }
// 1727   else if (TIM_CHANNEL_STATE_GET(htim, Channel) == HAL_TIM_CHANNEL_STATE_READY)
// 1728   {
// 1729     if ((pData == NULL) || (Length == 0U))
// 1730     {
// 1731       return HAL_ERROR;
// 1732     }
// 1733     else
// 1734     {
// 1735       TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 1736     }
// 1737   }
// 1738   else
// 1739   {
// 1740     return HAL_ERROR;
// 1741   }
// 1742 
// 1743   switch (Channel)
// 1744   {
// 1745     case TIM_CHANNEL_1:
// 1746     {
// 1747       /* Set the DMA compare callbacks */
// 1748       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1749       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1750 
// 1751       /* Set the DMA error callback */
// 1752       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 1753 
// 1754       /* Enable the DMA stream */
// 1755       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)pData, (uint32_t)&htim->Instance->CCR1,
// 1756                            Length) != HAL_OK)
// 1757       {
// 1758         /* Return error status */
// 1759         return HAL_ERROR;
// 1760       }
// 1761 
// 1762       /* Enable the TIM Capture/Compare 1 DMA request */
// 1763       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 1764       break;
// 1765     }
// 1766 
// 1767     case TIM_CHANNEL_2:
// 1768     {
// 1769       /* Set the DMA compare callbacks */
// 1770       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1771       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1772 
// 1773       /* Set the DMA error callback */
// 1774       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 1775 
// 1776       /* Enable the DMA stream */
// 1777       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)pData, (uint32_t)&htim->Instance->CCR2,
// 1778                            Length) != HAL_OK)
// 1779       {
// 1780         /* Return error status */
// 1781         return HAL_ERROR;
// 1782       }
// 1783       /* Enable the TIM Capture/Compare 2 DMA request */
// 1784       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 1785       break;
// 1786     }
// 1787 
// 1788     case TIM_CHANNEL_3:
// 1789     {
// 1790       /* Set the DMA compare callbacks */
// 1791       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1792       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1793 
// 1794       /* Set the DMA error callback */
// 1795       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 1796 
// 1797       /* Enable the DMA stream */
// 1798       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)pData, (uint32_t)&htim->Instance->CCR3,
// 1799                            Length) != HAL_OK)
// 1800       {
// 1801         /* Return error status */
// 1802         return HAL_ERROR;
// 1803       }
// 1804       /* Enable the TIM Output Capture/Compare 3 request */
// 1805       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 1806       break;
// 1807     }
// 1808 
// 1809     case TIM_CHANNEL_4:
// 1810     {
// 1811       /* Set the DMA compare callbacks */
// 1812       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 1813       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 1814 
// 1815       /* Set the DMA error callback */
// 1816       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 1817 
// 1818       /* Enable the DMA stream */
// 1819       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)pData, (uint32_t)&htim->Instance->CCR4,
// 1820                            Length) != HAL_OK)
// 1821       {
// 1822         /* Return error status */
// 1823         return HAL_ERROR;
// 1824       }
// 1825       /* Enable the TIM Capture/Compare 4 DMA request */
// 1826       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 1827       break;
// 1828     }
// 1829 
// 1830     default:
// 1831       status = HAL_ERROR;
// 1832       break;
// 1833   }
// 1834 
// 1835   if (status == HAL_OK)
// 1836   {
// 1837     /* Enable the Capture compare channel */
// 1838     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 1839 
// 1840     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1841     {
// 1842       /* Enable the main output */
// 1843       __HAL_TIM_MOE_ENABLE(htim);
// 1844     }
// 1845 
// 1846     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 1847     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 1848     {
// 1849       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 1850       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 1851       {
// 1852         __HAL_TIM_ENABLE(htim);
// 1853       }
// 1854     }
// 1855     else
// 1856     {
// 1857       __HAL_TIM_ENABLE(htim);
// 1858     }
// 1859   }
// 1860 
// 1861   /* Return function status */
// 1862   return status;
// 1863 }
// 1864 
// 1865 /**
// 1866   * @brief  Stops the TIM PWM signal generation in DMA mode.
// 1867   * @param  htim TIM PWM handle
// 1868   * @param  Channel TIM Channels to be disabled
// 1869   *          This parameter can be one of the following values:
// 1870   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 1871   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 1872   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 1873   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 1874   * @retval HAL status
// 1875   */
// 1876 HAL_StatusTypeDef HAL_TIM_PWM_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 1877 {
// 1878   HAL_StatusTypeDef status = HAL_OK;
// 1879 
// 1880   /* Check the parameters */
// 1881   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 1882 
// 1883   switch (Channel)
// 1884   {
// 1885     case TIM_CHANNEL_1:
// 1886     {
// 1887       /* Disable the TIM Capture/Compare 1 DMA request */
// 1888       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 1889       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 1890       break;
// 1891     }
// 1892 
// 1893     case TIM_CHANNEL_2:
// 1894     {
// 1895       /* Disable the TIM Capture/Compare 2 DMA request */
// 1896       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 1897       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 1898       break;
// 1899     }
// 1900 
// 1901     case TIM_CHANNEL_3:
// 1902     {
// 1903       /* Disable the TIM Capture/Compare 3 DMA request */
// 1904       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 1905       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 1906       break;
// 1907     }
// 1908 
// 1909     case TIM_CHANNEL_4:
// 1910     {
// 1911       /* Disable the TIM Capture/Compare 4 interrupt */
// 1912       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 1913       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 1914       break;
// 1915     }
// 1916 
// 1917     default:
// 1918       status = HAL_ERROR;
// 1919       break;
// 1920   }
// 1921 
// 1922   if (status == HAL_OK)
// 1923   {
// 1924     /* Disable the Capture compare channel */
// 1925     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 1926 
// 1927     if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 1928     {
// 1929       /* Disable the Main Output */
// 1930       __HAL_TIM_MOE_DISABLE(htim);
// 1931     }
// 1932 
// 1933     /* Disable the Peripheral */
// 1934     __HAL_TIM_DISABLE(htim);
// 1935 
// 1936     /* Set the TIM channel state */
// 1937     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 1938   }
// 1939 
// 1940   /* Return function status */
// 1941   return status;
// 1942 }
// 1943 
// 1944 /**
// 1945   * @}
// 1946   */
// 1947 
// 1948 /** @defgroup TIM_Exported_Functions_Group4 TIM Input Capture functions
// 1949   *  @brief    TIM Input Capture functions
// 1950   *
// 1951 @verbatim
// 1952   ==============================================================================
// 1953               ##### TIM Input Capture functions #####
// 1954   ==============================================================================
// 1955  [..]
// 1956    This section provides functions allowing to:
// 1957    (+) Initialize and configure the TIM Input Capture.
// 1958    (+) De-initialize the TIM Input Capture.
// 1959    (+) Start the TIM Input Capture.
// 1960    (+) Stop the TIM Input Capture.
// 1961    (+) Start the TIM Input Capture and enable interrupt.
// 1962    (+) Stop the TIM Input Capture and disable interrupt.
// 1963    (+) Start the TIM Input Capture and enable DMA transfer.
// 1964    (+) Stop the TIM Input Capture and disable DMA transfer.
// 1965 
// 1966 @endverbatim
// 1967   * @{
// 1968   */
// 1969 /**
// 1970   * @brief  Initializes the TIM Input Capture Time base according to the specified
// 1971   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
// 1972   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 1973   *         requires a timer reset to avoid unexpected direction
// 1974   *         due to DIR bit readonly in center aligned mode.
// 1975   *         Ex: call @ref HAL_TIM_IC_DeInit() before HAL_TIM_IC_Init()
// 1976   * @param  htim TIM Input Capture handle
// 1977   * @retval HAL status
// 1978   */
// 1979 HAL_StatusTypeDef HAL_TIM_IC_Init(TIM_HandleTypeDef *htim)
// 1980 {
// 1981   /* Check the TIM handle allocation */
// 1982   if (htim == NULL)
// 1983   {
// 1984     return HAL_ERROR;
// 1985   }
// 1986 
// 1987   /* Check the parameters */
// 1988   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 1989   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 1990   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 1991   assert_param(IS_TIM_PERIOD(htim, htim->Init.Period));
// 1992   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 1993 
// 1994   if (htim->State == HAL_TIM_STATE_RESET)
// 1995   {
// 1996     /* Allocate lock resource and initialize it */
// 1997     htim->Lock = HAL_UNLOCKED;
// 1998 
// 1999 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2000     /* Reset interrupt callbacks to legacy weak callbacks */
// 2001     TIM_ResetCallback(htim);
// 2002 
// 2003     if (htim->IC_MspInitCallback == NULL)
// 2004     {
// 2005       htim->IC_MspInitCallback = HAL_TIM_IC_MspInit;
// 2006     }
// 2007     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 2008     htim->IC_MspInitCallback(htim);
// 2009 #else
// 2010     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 2011     HAL_TIM_IC_MspInit(htim);
// 2012 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2013   }
// 2014 
// 2015   /* Set the TIM state */
// 2016   htim->State = HAL_TIM_STATE_BUSY;
// 2017 
// 2018   /* Init the base time for the input capture */
// 2019   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 2020 
// 2021   /* Initialize the DMA burst operation state */
// 2022   htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
// 2023 
// 2024   /* Initialize the TIM channels state */
// 2025   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
// 2026   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_READY);
// 2027 
// 2028   /* Initialize the TIM state*/
// 2029   htim->State = HAL_TIM_STATE_READY;
// 2030 
// 2031   return HAL_OK;
// 2032 }
// 2033 
// 2034 /**
// 2035   * @brief  DeInitializes the TIM peripheral
// 2036   * @param  htim TIM Input Capture handle
// 2037   * @retval HAL status
// 2038   */
// 2039 HAL_StatusTypeDef HAL_TIM_IC_DeInit(TIM_HandleTypeDef *htim)
// 2040 {
// 2041   /* Check the parameters */
// 2042   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 2043 
// 2044   htim->State = HAL_TIM_STATE_BUSY;
// 2045 
// 2046   /* Disable the TIM Peripheral Clock */
// 2047   __HAL_TIM_DISABLE(htim);
// 2048 
// 2049 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2050   if (htim->IC_MspDeInitCallback == NULL)
// 2051   {
// 2052     htim->IC_MspDeInitCallback = HAL_TIM_IC_MspDeInit;
// 2053   }
// 2054   /* DeInit the low level hardware */
// 2055   htim->IC_MspDeInitCallback(htim);
// 2056 #else
// 2057   /* DeInit the low level hardware: GPIO, CLOCK, NVIC and DMA */
// 2058   HAL_TIM_IC_MspDeInit(htim);
// 2059 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2060 
// 2061   /* Change the DMA burst operation state */
// 2062   htim->DMABurstState = HAL_DMA_BURST_STATE_RESET;
// 2063 
// 2064   /* Change the TIM channels state */
// 2065   TIM_CHANNEL_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
// 2066   TIM_CHANNEL_N_STATE_SET_ALL(htim, HAL_TIM_CHANNEL_STATE_RESET);
// 2067 
// 2068   /* Change TIM state */
// 2069   htim->State = HAL_TIM_STATE_RESET;
// 2070 
// 2071   /* Release Lock */
// 2072   __HAL_UNLOCK(htim);
// 2073 
// 2074   return HAL_OK;
// 2075 }
// 2076 
// 2077 /**
// 2078   * @brief  Initializes the TIM Input Capture MSP.
// 2079   * @param  htim TIM Input Capture handle
// 2080   * @retval None
// 2081   */
// 2082 __weak void HAL_TIM_IC_MspInit(TIM_HandleTypeDef *htim)
// 2083 {
// 2084   /* Prevent unused argument(s) compilation warning */
// 2085   UNUSED(htim);
// 2086 
// 2087   /* NOTE : This function should not be modified, when the callback is needed,
// 2088             the HAL_TIM_IC_MspInit could be implemented in the user file
// 2089    */
// 2090 }
// 2091 
// 2092 /**
// 2093   * @brief  DeInitializes TIM Input Capture MSP.
// 2094   * @param  htim TIM handle
// 2095   * @retval None
// 2096   */
// 2097 __weak void HAL_TIM_IC_MspDeInit(TIM_HandleTypeDef *htim)
// 2098 {
// 2099   /* Prevent unused argument(s) compilation warning */
// 2100   UNUSED(htim);
// 2101 
// 2102   /* NOTE : This function should not be modified, when the callback is needed,
// 2103             the HAL_TIM_IC_MspDeInit could be implemented in the user file
// 2104    */
// 2105 }
// 2106 
// 2107 /**
// 2108   * @brief  Starts the TIM Input Capture measurement.
// 2109   * @param  htim TIM Input Capture handle
// 2110   * @param  Channel TIM Channels to be enabled
// 2111   *          This parameter can be one of the following values:
// 2112   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2113   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2114   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2115   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2116   * @retval HAL status
// 2117   */
// 2118 HAL_StatusTypeDef HAL_TIM_IC_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2119 {
// 2120   uint32_t tmpsmcr;
// 2121   HAL_TIM_ChannelStateTypeDef channel_state = TIM_CHANNEL_STATE_GET(htim, Channel);
// 2122   HAL_TIM_ChannelStateTypeDef complementary_channel_state = TIM_CHANNEL_N_STATE_GET(htim, Channel);
// 2123 
// 2124   /* Check the parameters */
// 2125   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2126 
// 2127   /* Check the TIM channel state */
// 2128   if ((channel_state != HAL_TIM_CHANNEL_STATE_READY)
// 2129       || (complementary_channel_state != HAL_TIM_CHANNEL_STATE_READY))
// 2130   {
// 2131     return HAL_ERROR;
// 2132   }
// 2133 
// 2134   /* Set the TIM channel state */
// 2135   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 2136   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 2137 
// 2138   /* Enable the Input Capture channel */
// 2139   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 2140 
// 2141   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 2142   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 2143   {
// 2144     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 2145     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 2146     {
// 2147       __HAL_TIM_ENABLE(htim);
// 2148     }
// 2149   }
// 2150   else
// 2151   {
// 2152     __HAL_TIM_ENABLE(htim);
// 2153   }
// 2154 
// 2155   /* Return function status */
// 2156   return HAL_OK;
// 2157 }
// 2158 
// 2159 /**
// 2160   * @brief  Stops the TIM Input Capture measurement.
// 2161   * @param  htim TIM Input Capture handle
// 2162   * @param  Channel TIM Channels to be disabled
// 2163   *          This parameter can be one of the following values:
// 2164   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2165   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2166   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2167   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2168   * @retval HAL status
// 2169   */
// 2170 HAL_StatusTypeDef HAL_TIM_IC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2171 {
// 2172   /* Check the parameters */
// 2173   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2174 
// 2175   /* Disable the Input Capture channel */
// 2176   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 2177 
// 2178   /* Disable the Peripheral */
// 2179   __HAL_TIM_DISABLE(htim);
// 2180 
// 2181   /* Set the TIM channel state */
// 2182   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 2183   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 2184 
// 2185   /* Return function status */
// 2186   return HAL_OK;
// 2187 }
// 2188 
// 2189 /**
// 2190   * @brief  Starts the TIM Input Capture measurement in interrupt mode.
// 2191   * @param  htim TIM Input Capture handle
// 2192   * @param  Channel TIM Channels to be enabled
// 2193   *          This parameter can be one of the following values:
// 2194   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2195   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2196   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2197   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2198   * @retval HAL status
// 2199   */
// 2200 HAL_StatusTypeDef HAL_TIM_IC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2201 {
// 2202   HAL_StatusTypeDef status = HAL_OK;
// 2203   uint32_t tmpsmcr;
// 2204 
// 2205   HAL_TIM_ChannelStateTypeDef channel_state = TIM_CHANNEL_STATE_GET(htim, Channel);
// 2206   HAL_TIM_ChannelStateTypeDef complementary_channel_state = TIM_CHANNEL_N_STATE_GET(htim, Channel);
// 2207 
// 2208   /* Check the parameters */
// 2209   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2210 
// 2211   /* Check the TIM channel state */
// 2212   if ((channel_state != HAL_TIM_CHANNEL_STATE_READY)
// 2213       || (complementary_channel_state != HAL_TIM_CHANNEL_STATE_READY))
// 2214   {
// 2215     return HAL_ERROR;
// 2216   }
// 2217 
// 2218   /* Set the TIM channel state */
// 2219   TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 2220   TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 2221 
// 2222   switch (Channel)
// 2223   {
// 2224     case TIM_CHANNEL_1:
// 2225     {
// 2226       /* Enable the TIM Capture/Compare 1 interrupt */
// 2227       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2228       break;
// 2229     }
// 2230 
// 2231     case TIM_CHANNEL_2:
// 2232     {
// 2233       /* Enable the TIM Capture/Compare 2 interrupt */
// 2234       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2235       break;
// 2236     }
// 2237 
// 2238     case TIM_CHANNEL_3:
// 2239     {
// 2240       /* Enable the TIM Capture/Compare 3 interrupt */
// 2241       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC3);
// 2242       break;
// 2243     }
// 2244 
// 2245     case TIM_CHANNEL_4:
// 2246     {
// 2247       /* Enable the TIM Capture/Compare 4 interrupt */
// 2248       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC4);
// 2249       break;
// 2250     }
// 2251 
// 2252     default:
// 2253       status = HAL_ERROR;
// 2254       break;
// 2255   }
// 2256 
// 2257   if (status == HAL_OK)
// 2258   {
// 2259     /* Enable the Input Capture channel */
// 2260     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 2261 
// 2262     /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 2263     if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 2264     {
// 2265       tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 2266       if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 2267       {
// 2268         __HAL_TIM_ENABLE(htim);
// 2269       }
// 2270     }
// 2271     else
// 2272     {
// 2273       __HAL_TIM_ENABLE(htim);
// 2274     }
// 2275   }
// 2276 
// 2277   /* Return function status */
// 2278   return status;
// 2279 }
// 2280 
// 2281 /**
// 2282   * @brief  Stops the TIM Input Capture measurement in interrupt mode.
// 2283   * @param  htim TIM Input Capture handle
// 2284   * @param  Channel TIM Channels to be disabled
// 2285   *          This parameter can be one of the following values:
// 2286   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2287   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2288   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2289   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2290   * @retval HAL status
// 2291   */
// 2292 HAL_StatusTypeDef HAL_TIM_IC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2293 {
// 2294   HAL_StatusTypeDef status = HAL_OK;
// 2295 
// 2296   /* Check the parameters */
// 2297   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2298 
// 2299   switch (Channel)
// 2300   {
// 2301     case TIM_CHANNEL_1:
// 2302     {
// 2303       /* Disable the TIM Capture/Compare 1 interrupt */
// 2304       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2305       break;
// 2306     }
// 2307 
// 2308     case TIM_CHANNEL_2:
// 2309     {
// 2310       /* Disable the TIM Capture/Compare 2 interrupt */
// 2311       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2312       break;
// 2313     }
// 2314 
// 2315     case TIM_CHANNEL_3:
// 2316     {
// 2317       /* Disable the TIM Capture/Compare 3 interrupt */
// 2318       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC3);
// 2319       break;
// 2320     }
// 2321 
// 2322     case TIM_CHANNEL_4:
// 2323     {
// 2324       /* Disable the TIM Capture/Compare 4 interrupt */
// 2325       __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC4);
// 2326       break;
// 2327     }
// 2328 
// 2329     default:
// 2330       status = HAL_ERROR;
// 2331       break;
// 2332   }
// 2333 
// 2334   if (status == HAL_OK)
// 2335   {
// 2336     /* Disable the Input Capture channel */
// 2337     TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 2338 
// 2339     /* Disable the Peripheral */
// 2340     __HAL_TIM_DISABLE(htim);
// 2341 
// 2342     /* Set the TIM channel state */
// 2343     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 2344     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 2345   }
// 2346 
// 2347   /* Return function status */
// 2348   return status;
// 2349 }
// 2350 
// 2351 /**
// 2352   * @brief  Starts the TIM Input Capture measurement in DMA mode.
// 2353   * @param  htim TIM Input Capture handle
// 2354   * @param  Channel TIM Channels to be enabled
// 2355   *          This parameter can be one of the following values:
// 2356   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2357   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2358   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2359   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2360   * @param  pData The destination Buffer address.
// 2361   * @param  Length The length of data to be transferred from TIM peripheral to memory.
// 2362   * @retval HAL status
// 2363   */
// 2364 HAL_StatusTypeDef HAL_TIM_IC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length)
// 2365 {
// 2366   HAL_StatusTypeDef status = HAL_OK;
// 2367   uint32_t tmpsmcr;
// 2368 
// 2369   HAL_TIM_ChannelStateTypeDef channel_state = TIM_CHANNEL_STATE_GET(htim, Channel);
// 2370   HAL_TIM_ChannelStateTypeDef complementary_channel_state = TIM_CHANNEL_N_STATE_GET(htim, Channel);
// 2371 
// 2372   /* Check the parameters */
// 2373   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2374   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 2375 
// 2376   /* Set the TIM channel state */
// 2377   if ((channel_state == HAL_TIM_CHANNEL_STATE_BUSY)
// 2378       || (complementary_channel_state == HAL_TIM_CHANNEL_STATE_BUSY))
// 2379   {
// 2380     return HAL_BUSY;
// 2381   }
// 2382   else if ((channel_state == HAL_TIM_CHANNEL_STATE_READY)
// 2383            && (complementary_channel_state == HAL_TIM_CHANNEL_STATE_READY))
// 2384   {
// 2385     if ((pData == NULL) || (Length == 0U))
// 2386     {
// 2387       return HAL_ERROR;
// 2388     }
// 2389     else
// 2390     {
// 2391       TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 2392       TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_BUSY);
// 2393     }
// 2394   }
// 2395   else
// 2396   {
// 2397     return HAL_ERROR;
// 2398   }
// 2399 
// 2400   /* Enable the Input Capture channel */
// 2401   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_ENABLE);
// 2402 
// 2403   switch (Channel)
// 2404   {
// 2405     case TIM_CHANNEL_1:
// 2406     {
// 2407       /* Set the DMA capture callbacks */
// 2408       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 2409       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2410 
// 2411       /* Set the DMA error callback */
// 2412       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 2413 
// 2414       /* Enable the DMA stream */
// 2415       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData,
// 2416                            Length) != HAL_OK)
// 2417       {
// 2418         /* Return error status */
// 2419         return HAL_ERROR;
// 2420       }
// 2421       /* Enable the TIM Capture/Compare 1 DMA request */
// 2422       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 2423       break;
// 2424     }
// 2425 
// 2426     case TIM_CHANNEL_2:
// 2427     {
// 2428       /* Set the DMA capture callbacks */
// 2429       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 2430       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2431 
// 2432       /* Set the DMA error callback */
// 2433       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 2434 
// 2435       /* Enable the DMA stream */
// 2436       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData,
// 2437                            Length) != HAL_OK)
// 2438       {
// 2439         /* Return error status */
// 2440         return HAL_ERROR;
// 2441       }
// 2442       /* Enable the TIM Capture/Compare 2  DMA request */
// 2443       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 2444       break;
// 2445     }
// 2446 
// 2447     case TIM_CHANNEL_3:
// 2448     {
// 2449       /* Set the DMA capture callbacks */
// 2450       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMACaptureCplt;
// 2451       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2452 
// 2453       /* Set the DMA error callback */
// 2454       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 2455 
// 2456       /* Enable the DMA stream */
// 2457       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)&htim->Instance->CCR3, (uint32_t)pData,
// 2458                            Length) != HAL_OK)
// 2459       {
// 2460         /* Return error status */
// 2461         return HAL_ERROR;
// 2462       }
// 2463       /* Enable the TIM Capture/Compare 3  DMA request */
// 2464       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC3);
// 2465       break;
// 2466     }
// 2467 
// 2468     case TIM_CHANNEL_4:
// 2469     {
// 2470       /* Set the DMA capture callbacks */
// 2471       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMACaptureCplt;
// 2472       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 2473 
// 2474       /* Set the DMA error callback */
// 2475       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 2476 
// 2477       /* Enable the DMA stream */
// 2478       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)&htim->Instance->CCR4, (uint32_t)pData,
// 2479                            Length) != HAL_OK)
// 2480       {
// 2481         /* Return error status */
// 2482         return HAL_ERROR;
// 2483       }
// 2484       /* Enable the TIM Capture/Compare 4  DMA request */
// 2485       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC4);
// 2486       break;
// 2487     }
// 2488 
// 2489     default:
// 2490       status = HAL_ERROR;
// 2491       break;
// 2492   }
// 2493 
// 2494   /* Enable the Peripheral, except in trigger mode where enable is automatically done with trigger */
// 2495   if (IS_TIM_SLAVE_INSTANCE(htim->Instance))
// 2496   {
// 2497     tmpsmcr = htim->Instance->SMCR & TIM_SMCR_SMS;
// 2498     if (!IS_TIM_SLAVEMODE_TRIGGER_ENABLED(tmpsmcr))
// 2499     {
// 2500       __HAL_TIM_ENABLE(htim);
// 2501     }
// 2502   }
// 2503   else
// 2504   {
// 2505     __HAL_TIM_ENABLE(htim);
// 2506   }
// 2507 
// 2508   /* Return function status */
// 2509   return status;
// 2510 }
// 2511 
// 2512 /**
// 2513   * @brief  Stops the TIM Input Capture measurement in DMA mode.
// 2514   * @param  htim TIM Input Capture handle
// 2515   * @param  Channel TIM Channels to be disabled
// 2516   *          This parameter can be one of the following values:
// 2517   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 2518   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 2519   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 2520   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 2521   * @retval HAL status
// 2522   */
// 2523 HAL_StatusTypeDef HAL_TIM_IC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 2524 {
// 2525   HAL_StatusTypeDef status = HAL_OK;
// 2526 
// 2527   /* Check the parameters */
// 2528   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 2529   assert_param(IS_TIM_DMA_CC_INSTANCE(htim->Instance));
// 2530 
// 2531   /* Disable the Input Capture channel */
// 2532   TIM_CCxChannelCmd(htim->Instance, Channel, TIM_CCx_DISABLE);
// 2533 
// 2534   switch (Channel)
// 2535   {
// 2536     case TIM_CHANNEL_1:
// 2537     {
// 2538       /* Disable the TIM Capture/Compare 1 DMA request */
// 2539       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 2540       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 2541       break;
// 2542     }
// 2543 
// 2544     case TIM_CHANNEL_2:
// 2545     {
// 2546       /* Disable the TIM Capture/Compare 2 DMA request */
// 2547       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 2548       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 2549       break;
// 2550     }
// 2551 
// 2552     case TIM_CHANNEL_3:
// 2553     {
// 2554       /* Disable the TIM Capture/Compare 3  DMA request */
// 2555       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC3);
// 2556       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 2557       break;
// 2558     }
// 2559 
// 2560     case TIM_CHANNEL_4:
// 2561     {
// 2562       /* Disable the TIM Capture/Compare 4  DMA request */
// 2563       __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC4);
// 2564       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 2565       break;
// 2566     }
// 2567 
// 2568     default:
// 2569       status = HAL_ERROR;
// 2570       break;
// 2571   }
// 2572 
// 2573   if (status == HAL_OK)
// 2574   {
// 2575     /* Disable the Peripheral */
// 2576     __HAL_TIM_DISABLE(htim);
// 2577 
// 2578     /* Set the TIM channel state */
// 2579     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 2580     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 2581   }
// 2582 
// 2583   /* Return function status */
// 2584   return status;
// 2585 }
// 2586 /**
// 2587   * @}
// 2588   */
// 2589 
// 2590 /** @defgroup TIM_Exported_Functions_Group5 TIM One Pulse functions
// 2591   *  @brief    TIM One Pulse functions
// 2592   *
// 2593 @verbatim
// 2594   ==============================================================================
// 2595                         ##### TIM One Pulse functions #####
// 2596   ==============================================================================
// 2597   [..]
// 2598     This section provides functions allowing to:
// 2599     (+) Initialize and configure the TIM One Pulse.
// 2600     (+) De-initialize the TIM One Pulse.
// 2601     (+) Start the TIM One Pulse.
// 2602     (+) Stop the TIM One Pulse.
// 2603     (+) Start the TIM One Pulse and enable interrupt.
// 2604     (+) Stop the TIM One Pulse and disable interrupt.
// 2605     (+) Start the TIM One Pulse and enable DMA transfer.
// 2606     (+) Stop the TIM One Pulse and disable DMA transfer.
// 2607 
// 2608 @endverbatim
// 2609   * @{
// 2610   */
// 2611 /**
// 2612   * @brief  Initializes the TIM One Pulse Time Base according to the specified
// 2613   *         parameters in the TIM_HandleTypeDef and initializes the associated handle.
// 2614   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 2615   *         requires a timer reset to avoid unexpected direction
// 2616   *         due to DIR bit readonly in center aligned mode.
// 2617   *         Ex: call @ref HAL_TIM_OnePulse_DeInit() before HAL_TIM_OnePulse_Init()
// 2618   * @note   When the timer instance is initialized in One Pulse mode, timer
// 2619   *         channels 1 and channel 2 are reserved and cannot be used for other
// 2620   *         purpose.
// 2621   * @param  htim TIM One Pulse handle
// 2622   * @param  OnePulseMode Select the One pulse mode.
// 2623   *         This parameter can be one of the following values:
// 2624   *            @arg TIM_OPMODE_SINGLE: Only one pulse will be generated.
// 2625   *            @arg TIM_OPMODE_REPETITIVE: Repetitive pulses will be generated.
// 2626   * @retval HAL status
// 2627   */
// 2628 HAL_StatusTypeDef HAL_TIM_OnePulse_Init(TIM_HandleTypeDef *htim, uint32_t OnePulseMode)
// 2629 {
// 2630   /* Check the TIM handle allocation */
// 2631   if (htim == NULL)
// 2632   {
// 2633     return HAL_ERROR;
// 2634   }
// 2635 
// 2636   /* Check the parameters */
// 2637   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 2638   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 2639   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 2640   assert_param(IS_TIM_OPM_MODE(OnePulseMode));
// 2641   assert_param(IS_TIM_PERIOD(htim, htim->Init.Period));
// 2642   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 2643 
// 2644   if (htim->State == HAL_TIM_STATE_RESET)
// 2645   {
// 2646     /* Allocate lock resource and initialize it */
// 2647     htim->Lock = HAL_UNLOCKED;
// 2648 
// 2649 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2650     /* Reset interrupt callbacks to legacy weak callbacks */
// 2651     TIM_ResetCallback(htim);
// 2652 
// 2653     if (htim->OnePulse_MspInitCallback == NULL)
// 2654     {
// 2655       htim->OnePulse_MspInitCallback = HAL_TIM_OnePulse_MspInit;
// 2656     }
// 2657     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 2658     htim->OnePulse_MspInitCallback(htim);
// 2659 #else
// 2660     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 2661     HAL_TIM_OnePulse_MspInit(htim);
// 2662 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2663   }
// 2664 
// 2665   /* Set the TIM state */
// 2666   htim->State = HAL_TIM_STATE_BUSY;
// 2667 
// 2668   /* Configure the Time base in the One Pulse Mode */
// 2669   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 2670 
// 2671   /* Reset the OPM Bit */
// 2672   htim->Instance->CR1 &= ~TIM_CR1_OPM;
// 2673 
// 2674   /* Configure the OPM Mode */
// 2675   htim->Instance->CR1 |= OnePulseMode;
// 2676 
// 2677   /* Initialize the DMA burst operation state */
// 2678   htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
// 2679 
// 2680   /* Initialize the TIM channels state */
// 2681   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2682   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2683   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2684   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2685 
// 2686   /* Initialize the TIM state*/
// 2687   htim->State = HAL_TIM_STATE_READY;
// 2688 
// 2689   return HAL_OK;
// 2690 }
// 2691 
// 2692 /**
// 2693   * @brief  DeInitializes the TIM One Pulse
// 2694   * @param  htim TIM One Pulse handle
// 2695   * @retval HAL status
// 2696   */
// 2697 HAL_StatusTypeDef HAL_TIM_OnePulse_DeInit(TIM_HandleTypeDef *htim)
// 2698 {
// 2699   /* Check the parameters */
// 2700   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 2701 
// 2702   htim->State = HAL_TIM_STATE_BUSY;
// 2703 
// 2704   /* Disable the TIM Peripheral Clock */
// 2705   __HAL_TIM_DISABLE(htim);
// 2706 
// 2707 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 2708   if (htim->OnePulse_MspDeInitCallback == NULL)
// 2709   {
// 2710     htim->OnePulse_MspDeInitCallback = HAL_TIM_OnePulse_MspDeInit;
// 2711   }
// 2712   /* DeInit the low level hardware */
// 2713   htim->OnePulse_MspDeInitCallback(htim);
// 2714 #else
// 2715   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
// 2716   HAL_TIM_OnePulse_MspDeInit(htim);
// 2717 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 2718 
// 2719   /* Change the DMA burst operation state */
// 2720   htim->DMABurstState = HAL_DMA_BURST_STATE_RESET;
// 2721 
// 2722   /* Set the TIM channel state */
// 2723   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_RESET);
// 2724   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_RESET);
// 2725   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_RESET);
// 2726   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_RESET);
// 2727 
// 2728   /* Change TIM state */
// 2729   htim->State = HAL_TIM_STATE_RESET;
// 2730 
// 2731   /* Release Lock */
// 2732   __HAL_UNLOCK(htim);
// 2733 
// 2734   return HAL_OK;
// 2735 }
// 2736 
// 2737 /**
// 2738   * @brief  Initializes the TIM One Pulse MSP.
// 2739   * @param  htim TIM One Pulse handle
// 2740   * @retval None
// 2741   */
// 2742 __weak void HAL_TIM_OnePulse_MspInit(TIM_HandleTypeDef *htim)
// 2743 {
// 2744   /* Prevent unused argument(s) compilation warning */
// 2745   UNUSED(htim);
// 2746 
// 2747   /* NOTE : This function should not be modified, when the callback is needed,
// 2748             the HAL_TIM_OnePulse_MspInit could be implemented in the user file
// 2749    */
// 2750 }
// 2751 
// 2752 /**
// 2753   * @brief  DeInitializes TIM One Pulse MSP.
// 2754   * @param  htim TIM One Pulse handle
// 2755   * @retval None
// 2756   */
// 2757 __weak void HAL_TIM_OnePulse_MspDeInit(TIM_HandleTypeDef *htim)
// 2758 {
// 2759   /* Prevent unused argument(s) compilation warning */
// 2760   UNUSED(htim);
// 2761 
// 2762   /* NOTE : This function should not be modified, when the callback is needed,
// 2763             the HAL_TIM_OnePulse_MspDeInit could be implemented in the user file
// 2764    */
// 2765 }
// 2766 
// 2767 /**
// 2768   * @brief  Starts the TIM One Pulse signal generation.
// 2769   * @note Though OutputChannel parameter is deprecated and ignored by the function
// 2770   *        it has been kept to avoid HAL_TIM API compatibility break.
// 2771   * @note The pulse output channel is determined when calling
// 2772   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 2773   * @param  htim TIM One Pulse handle
// 2774   * @param  OutputChannel See note above
// 2775   * @retval HAL status
// 2776   */
// 2777 HAL_StatusTypeDef HAL_TIM_OnePulse_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2778 {
// 2779   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
// 2780   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
// 2781   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
// 2782   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
// 2783 
// 2784   /* Prevent unused argument(s) compilation warning */
// 2785   UNUSED(OutputChannel);
// 2786 
// 2787   /* Check the TIM channels state */
// 2788   if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 2789       || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 2790       || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 2791       || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 2792   {
// 2793     return HAL_ERROR;
// 2794   }
// 2795 
// 2796   /* Set the TIM channels state */
// 2797   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 2798   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 2799   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 2800   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 2801 
// 2802   /* Enable the Capture compare and the Input Capture channels
// 2803     (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2804     if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2805     if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2806     whatever the combination, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be enabled together
// 2807 
// 2808     No need to enable the counter, it's enabled automatically by hardware
// 2809     (the counter starts in response to a stimulus and generate a pulse */
// 2810 
// 2811   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2812   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2813 
// 2814   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2815   {
// 2816     /* Enable the main output */
// 2817     __HAL_TIM_MOE_ENABLE(htim);
// 2818   }
// 2819 
// 2820   /* Return function status */
// 2821   return HAL_OK;
// 2822 }
// 2823 
// 2824 /**
// 2825   * @brief  Stops the TIM One Pulse signal generation.
// 2826   * @note Though OutputChannel parameter is deprecated and ignored by the function
// 2827   *        it has been kept to avoid HAL_TIM API compatibility break.
// 2828   * @note The pulse output channel is determined when calling
// 2829   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 2830   * @param  htim TIM One Pulse handle
// 2831   * @param  OutputChannel See note above
// 2832   * @retval HAL status
// 2833   */
// 2834 HAL_StatusTypeDef HAL_TIM_OnePulse_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2835 {
// 2836   /* Prevent unused argument(s) compilation warning */
// 2837   UNUSED(OutputChannel);
// 2838 
// 2839   /* Disable the Capture compare and the Input Capture channels
// 2840   (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2841   if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2842   if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2843   whatever the combination, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be disabled together */
// 2844 
// 2845   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2846   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2847 
// 2848   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2849   {
// 2850     /* Disable the Main Output */
// 2851     __HAL_TIM_MOE_DISABLE(htim);
// 2852   }
// 2853 
// 2854   /* Disable the Peripheral */
// 2855   __HAL_TIM_DISABLE(htim);
// 2856 
// 2857   /* Set the TIM channels state */
// 2858   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2859   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2860   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2861   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2862 
// 2863   /* Return function status */
// 2864   return HAL_OK;
// 2865 }
// 2866 
// 2867 /**
// 2868   * @brief  Starts the TIM One Pulse signal generation in interrupt mode.
// 2869   * @note Though OutputChannel parameter is deprecated and ignored by the function
// 2870   *        it has been kept to avoid HAL_TIM API compatibility break.
// 2871   * @note The pulse output channel is determined when calling
// 2872   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 2873   * @param  htim TIM One Pulse handle
// 2874   * @param  OutputChannel See note above
// 2875   * @retval HAL status
// 2876   */
// 2877 HAL_StatusTypeDef HAL_TIM_OnePulse_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2878 {
// 2879   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
// 2880   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
// 2881   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
// 2882   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
// 2883 
// 2884   /* Prevent unused argument(s) compilation warning */
// 2885   UNUSED(OutputChannel);
// 2886 
// 2887   /* Check the TIM channels state */
// 2888   if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 2889       || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 2890       || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 2891       || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 2892   {
// 2893     return HAL_ERROR;
// 2894   }
// 2895 
// 2896   /* Set the TIM channels state */
// 2897   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 2898   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 2899   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 2900   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 2901 
// 2902   /* Enable the Capture compare and the Input Capture channels
// 2903     (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2904     if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2905     if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2906     whatever the combination, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be enabled together
// 2907 
// 2908     No need to enable the counter, it's enabled automatically by hardware
// 2909     (the counter starts in response to a stimulus and generate a pulse */
// 2910 
// 2911   /* Enable the TIM Capture/Compare 1 interrupt */
// 2912   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 2913 
// 2914   /* Enable the TIM Capture/Compare 2 interrupt */
// 2915   __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 2916 
// 2917   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 2918   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 2919 
// 2920   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2921   {
// 2922     /* Enable the main output */
// 2923     __HAL_TIM_MOE_ENABLE(htim);
// 2924   }
// 2925 
// 2926   /* Return function status */
// 2927   return HAL_OK;
// 2928 }
// 2929 
// 2930 /**
// 2931   * @brief  Stops the TIM One Pulse signal generation in interrupt mode.
// 2932   * @note Though OutputChannel parameter is deprecated and ignored by the function
// 2933   *        it has been kept to avoid HAL_TIM API compatibility break.
// 2934   * @note The pulse output channel is determined when calling
// 2935   *       @ref HAL_TIM_OnePulse_ConfigChannel().
// 2936   * @param  htim TIM One Pulse handle
// 2937   * @param  OutputChannel See note above
// 2938   * @retval HAL status
// 2939   */
// 2940 HAL_StatusTypeDef HAL_TIM_OnePulse_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel)
// 2941 {
// 2942   /* Prevent unused argument(s) compilation warning */
// 2943   UNUSED(OutputChannel);
// 2944 
// 2945   /* Disable the TIM Capture/Compare 1 interrupt */
// 2946   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 2947 
// 2948   /* Disable the TIM Capture/Compare 2 interrupt */
// 2949   __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 2950 
// 2951   /* Disable the Capture compare and the Input Capture channels
// 2952   (in the OPM Mode the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2)
// 2953   if TIM_CHANNEL_1 is used as output, the TIM_CHANNEL_2 will be used as input and
// 2954   if TIM_CHANNEL_1 is used as input, the TIM_CHANNEL_2 will be used as output
// 2955   whatever the combination, the TIM_CHANNEL_1 and TIM_CHANNEL_2 should be disabled together */
// 2956   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 2957   TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 2958 
// 2959   if (IS_TIM_BREAK_INSTANCE(htim->Instance) != RESET)
// 2960   {
// 2961     /* Disable the Main Output */
// 2962     __HAL_TIM_MOE_DISABLE(htim);
// 2963   }
// 2964 
// 2965   /* Disable the Peripheral */
// 2966   __HAL_TIM_DISABLE(htim);
// 2967 
// 2968   /* Set the TIM channels state */
// 2969   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2970   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2971   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 2972   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 2973 
// 2974   /* Return function status */
// 2975   return HAL_OK;
// 2976 }
// 2977 
// 2978 /**
// 2979   * @}
// 2980   */
// 2981 
// 2982 /** @defgroup TIM_Exported_Functions_Group6 TIM Encoder functions
// 2983   *  @brief    TIM Encoder functions
// 2984   *
// 2985 @verbatim
// 2986   ==============================================================================
// 2987                           ##### TIM Encoder functions #####
// 2988   ==============================================================================
// 2989   [..]
// 2990     This section provides functions allowing to:
// 2991     (+) Initialize and configure the TIM Encoder.
// 2992     (+) De-initialize the TIM Encoder.
// 2993     (+) Start the TIM Encoder.
// 2994     (+) Stop the TIM Encoder.
// 2995     (+) Start the TIM Encoder and enable interrupt.
// 2996     (+) Stop the TIM Encoder and disable interrupt.
// 2997     (+) Start the TIM Encoder and enable DMA transfer.
// 2998     (+) Stop the TIM Encoder and disable DMA transfer.
// 2999 
// 3000 @endverbatim
// 3001   * @{
// 3002   */
// 3003 /**
// 3004   * @brief  Initializes the TIM Encoder Interface and initialize the associated handle.
// 3005   * @note   Switching from Center Aligned counter mode to Edge counter mode (or reverse)
// 3006   *         requires a timer reset to avoid unexpected direction
// 3007   *         due to DIR bit readonly in center aligned mode.
// 3008   *         Ex: call @ref HAL_TIM_Encoder_DeInit() before HAL_TIM_Encoder_Init()
// 3009   * @note   Encoder mode and External clock mode 2 are not compatible and must not be selected together
// 3010   *         Ex: A call for @ref HAL_TIM_Encoder_Init will erase the settings of @ref HAL_TIM_ConfigClockSource
// 3011   *         using TIM_CLOCKSOURCE_ETRMODE2 and vice versa
// 3012   * @note   When the timer instance is initialized in Encoder mode, timer
// 3013   *         channels 1 and channel 2 are reserved and cannot be used for other
// 3014   *         purpose.
// 3015   * @param  htim TIM Encoder Interface handle
// 3016   * @param  sConfig TIM Encoder Interface configuration structure
// 3017   * @retval HAL status
// 3018   */
// 3019 HAL_StatusTypeDef HAL_TIM_Encoder_Init(TIM_HandleTypeDef *htim, const TIM_Encoder_InitTypeDef *sConfig)
// 3020 {
// 3021   uint32_t tmpsmcr;
// 3022   uint32_t tmpccmr1;
// 3023   uint32_t tmpccer;
// 3024 
// 3025   /* Check the TIM handle allocation */
// 3026   if (htim == NULL)
// 3027   {
// 3028     return HAL_ERROR;
// 3029   }
// 3030 
// 3031   /* Check the parameters */
// 3032   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
// 3033   assert_param(IS_TIM_COUNTER_MODE(htim->Init.CounterMode));
// 3034   assert_param(IS_TIM_CLOCKDIVISION_DIV(htim->Init.ClockDivision));
// 3035   assert_param(IS_TIM_AUTORELOAD_PRELOAD(htim->Init.AutoReloadPreload));
// 3036   assert_param(IS_TIM_ENCODER_MODE(sConfig->EncoderMode));
// 3037   assert_param(IS_TIM_IC_SELECTION(sConfig->IC1Selection));
// 3038   assert_param(IS_TIM_IC_SELECTION(sConfig->IC2Selection));
// 3039   assert_param(IS_TIM_ENCODERINPUT_POLARITY(sConfig->IC1Polarity));
// 3040   assert_param(IS_TIM_ENCODERINPUT_POLARITY(sConfig->IC2Polarity));
// 3041   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC1Prescaler));
// 3042   assert_param(IS_TIM_IC_PRESCALER(sConfig->IC2Prescaler));
// 3043   assert_param(IS_TIM_IC_FILTER(sConfig->IC1Filter));
// 3044   assert_param(IS_TIM_IC_FILTER(sConfig->IC2Filter));
// 3045   assert_param(IS_TIM_PERIOD(htim, htim->Init.Period));
// 3046 
// 3047   if (htim->State == HAL_TIM_STATE_RESET)
// 3048   {
// 3049     /* Allocate lock resource and initialize it */
// 3050     htim->Lock = HAL_UNLOCKED;
// 3051 
// 3052 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3053     /* Reset interrupt callbacks to legacy weak callbacks */
// 3054     TIM_ResetCallback(htim);
// 3055 
// 3056     if (htim->Encoder_MspInitCallback == NULL)
// 3057     {
// 3058       htim->Encoder_MspInitCallback = HAL_TIM_Encoder_MspInit;
// 3059     }
// 3060     /* Init the low level hardware : GPIO, CLOCK, NVIC */
// 3061     htim->Encoder_MspInitCallback(htim);
// 3062 #else
// 3063     /* Init the low level hardware : GPIO, CLOCK, NVIC and DMA */
// 3064     HAL_TIM_Encoder_MspInit(htim);
// 3065 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3066   }
// 3067 
// 3068   /* Set the TIM state */
// 3069   htim->State = HAL_TIM_STATE_BUSY;
// 3070 
// 3071   /* Reset the SMS and ECE bits */
// 3072   htim->Instance->SMCR &= ~(TIM_SMCR_SMS | TIM_SMCR_ECE);
// 3073 
// 3074   /* Configure the Time base in the Encoder Mode */
// 3075   TIM_Base_SetConfig(htim->Instance, &htim->Init);
// 3076 
// 3077   /* Get the TIMx SMCR register value */
// 3078   tmpsmcr = htim->Instance->SMCR;
// 3079 
// 3080   /* Get the TIMx CCMR1 register value */
// 3081   tmpccmr1 = htim->Instance->CCMR1;
// 3082 
// 3083   /* Get the TIMx CCER register value */
// 3084   tmpccer = htim->Instance->CCER;
// 3085 
// 3086   /* Set the encoder Mode */
// 3087   tmpsmcr |= sConfig->EncoderMode;
// 3088 
// 3089   /* Select the Capture Compare 1 and the Capture Compare 2 as input */
// 3090   tmpccmr1 &= ~(TIM_CCMR1_CC1S | TIM_CCMR1_CC2S);
// 3091   tmpccmr1 |= (sConfig->IC1Selection | (sConfig->IC2Selection << 8U));
// 3092 
// 3093   /* Set the Capture Compare 1 and the Capture Compare 2 prescalers and filters */
// 3094   tmpccmr1 &= ~(TIM_CCMR1_IC1PSC | TIM_CCMR1_IC2PSC);
// 3095   tmpccmr1 &= ~(TIM_CCMR1_IC1F | TIM_CCMR1_IC2F);
// 3096   tmpccmr1 |= sConfig->IC1Prescaler | (sConfig->IC2Prescaler << 8U);
// 3097   tmpccmr1 |= (sConfig->IC1Filter << 4U) | (sConfig->IC2Filter << 12U);
// 3098 
// 3099   /* Set the TI1 and the TI2 Polarities */
// 3100   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC2P);
// 3101   tmpccer &= ~(TIM_CCER_CC1NP | TIM_CCER_CC2NP);
// 3102   tmpccer |= sConfig->IC1Polarity | (sConfig->IC2Polarity << 4U);
// 3103 
// 3104   /* Write to TIMx SMCR */
// 3105   htim->Instance->SMCR = tmpsmcr;
// 3106 
// 3107   /* Write to TIMx CCMR1 */
// 3108   htim->Instance->CCMR1 = tmpccmr1;
// 3109 
// 3110   /* Write to TIMx CCER */
// 3111   htim->Instance->CCER = tmpccer;
// 3112 
// 3113   /* Initialize the DMA burst operation state */
// 3114   htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
// 3115 
// 3116   /* Set the TIM channels state */
// 3117   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3118   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3119   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3120   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3121 
// 3122   /* Initialize the TIM state*/
// 3123   htim->State = HAL_TIM_STATE_READY;
// 3124 
// 3125   return HAL_OK;
// 3126 }
// 3127 
// 3128 
// 3129 /**
// 3130   * @brief  DeInitializes the TIM Encoder interface
// 3131   * @param  htim TIM Encoder Interface handle
// 3132   * @retval HAL status
// 3133   */
// 3134 HAL_StatusTypeDef HAL_TIM_Encoder_DeInit(TIM_HandleTypeDef *htim)
// 3135 {
// 3136   /* Check the parameters */
// 3137   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 3138 
// 3139   htim->State = HAL_TIM_STATE_BUSY;
// 3140 
// 3141   /* Disable the TIM Peripheral Clock */
// 3142   __HAL_TIM_DISABLE(htim);
// 3143 
// 3144 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3145   if (htim->Encoder_MspDeInitCallback == NULL)
// 3146   {
// 3147     htim->Encoder_MspDeInitCallback = HAL_TIM_Encoder_MspDeInit;
// 3148   }
// 3149   /* DeInit the low level hardware */
// 3150   htim->Encoder_MspDeInitCallback(htim);
// 3151 #else
// 3152   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
// 3153   HAL_TIM_Encoder_MspDeInit(htim);
// 3154 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3155 
// 3156   /* Change the DMA burst operation state */
// 3157   htim->DMABurstState = HAL_DMA_BURST_STATE_RESET;
// 3158 
// 3159   /* Set the TIM channels state */
// 3160   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_RESET);
// 3161   TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_RESET);
// 3162   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_RESET);
// 3163   TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_RESET);
// 3164 
// 3165   /* Change TIM state */
// 3166   htim->State = HAL_TIM_STATE_RESET;
// 3167 
// 3168   /* Release Lock */
// 3169   __HAL_UNLOCK(htim);
// 3170 
// 3171   return HAL_OK;
// 3172 }
// 3173 
// 3174 /**
// 3175   * @brief  Initializes the TIM Encoder Interface MSP.
// 3176   * @param  htim TIM Encoder Interface handle
// 3177   * @retval None
// 3178   */
// 3179 __weak void HAL_TIM_Encoder_MspInit(TIM_HandleTypeDef *htim)
// 3180 {
// 3181   /* Prevent unused argument(s) compilation warning */
// 3182   UNUSED(htim);
// 3183 
// 3184   /* NOTE : This function should not be modified, when the callback is needed,
// 3185             the HAL_TIM_Encoder_MspInit could be implemented in the user file
// 3186    */
// 3187 }
// 3188 
// 3189 /**
// 3190   * @brief  DeInitializes TIM Encoder Interface MSP.
// 3191   * @param  htim TIM Encoder Interface handle
// 3192   * @retval None
// 3193   */
// 3194 __weak void HAL_TIM_Encoder_MspDeInit(TIM_HandleTypeDef *htim)
// 3195 {
// 3196   /* Prevent unused argument(s) compilation warning */
// 3197   UNUSED(htim);
// 3198 
// 3199   /* NOTE : This function should not be modified, when the callback is needed,
// 3200             the HAL_TIM_Encoder_MspDeInit could be implemented in the user file
// 3201    */
// 3202 }
// 3203 
// 3204 /**
// 3205   * @brief  Starts the TIM Encoder Interface.
// 3206   * @param  htim TIM Encoder Interface handle
// 3207   * @param  Channel TIM Channels to be enabled
// 3208   *          This parameter can be one of the following values:
// 3209   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3210   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3211   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 3212   * @retval HAL status
// 3213   */
// 3214 HAL_StatusTypeDef HAL_TIM_Encoder_Start(TIM_HandleTypeDef *htim, uint32_t Channel)
// 3215 {
// 3216   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
// 3217   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
// 3218   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
// 3219   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
// 3220 
// 3221   /* Check the parameters */
// 3222   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
// 3223 
// 3224   /* Set the TIM channel(s) state */
// 3225   if (Channel == TIM_CHANNEL_1)
// 3226   {
// 3227     if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 3228         || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY))
// 3229     {
// 3230       return HAL_ERROR;
// 3231     }
// 3232     else
// 3233     {
// 3234       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3235       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3236     }
// 3237   }
// 3238   else if (Channel == TIM_CHANNEL_2)
// 3239   {
// 3240     if ((channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 3241         || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 3242     {
// 3243       return HAL_ERROR;
// 3244     }
// 3245     else
// 3246     {
// 3247       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3248       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3249     }
// 3250   }
// 3251   else
// 3252   {
// 3253     if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 3254         || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 3255         || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 3256         || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 3257     {
// 3258       return HAL_ERROR;
// 3259     }
// 3260     else
// 3261     {
// 3262       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3263       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3264       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3265       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3266     }
// 3267   }
// 3268 
// 3269   /* Enable the encoder interface channels */
// 3270   switch (Channel)
// 3271   {
// 3272     case TIM_CHANNEL_1:
// 3273     {
// 3274       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3275       break;
// 3276     }
// 3277 
// 3278     case TIM_CHANNEL_2:
// 3279     {
// 3280       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3281       break;
// 3282     }
// 3283 
// 3284     default :
// 3285     {
// 3286       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3287       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3288       break;
// 3289     }
// 3290   }
// 3291   /* Enable the Peripheral */
// 3292   __HAL_TIM_ENABLE(htim);
// 3293 
// 3294   /* Return function status */
// 3295   return HAL_OK;
// 3296 }
// 3297 
// 3298 /**
// 3299   * @brief  Stops the TIM Encoder Interface.
// 3300   * @param  htim TIM Encoder Interface handle
// 3301   * @param  Channel TIM Channels to be disabled
// 3302   *          This parameter can be one of the following values:
// 3303   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3304   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3305   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 3306   * @retval HAL status
// 3307   */
// 3308 HAL_StatusTypeDef HAL_TIM_Encoder_Stop(TIM_HandleTypeDef *htim, uint32_t Channel)
// 3309 {
// 3310   /* Check the parameters */
// 3311   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
// 3312 
// 3313   /* Disable the Input Capture channels 1 and 2
// 3314     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 3315   switch (Channel)
// 3316   {
// 3317     case TIM_CHANNEL_1:
// 3318     {
// 3319       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3320       break;
// 3321     }
// 3322 
// 3323     case TIM_CHANNEL_2:
// 3324     {
// 3325       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3326       break;
// 3327     }
// 3328 
// 3329     default :
// 3330     {
// 3331       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3332       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3333       break;
// 3334     }
// 3335   }
// 3336 
// 3337   /* Disable the Peripheral */
// 3338   __HAL_TIM_DISABLE(htim);
// 3339 
// 3340   /* Set the TIM channel(s) state */
// 3341   if ((Channel == TIM_CHANNEL_1) || (Channel == TIM_CHANNEL_2))
// 3342   {
// 3343     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 3344     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 3345   }
// 3346   else
// 3347   {
// 3348     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3349     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3350     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3351     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3352   }
// 3353 
// 3354   /* Return function status */
// 3355   return HAL_OK;
// 3356 }
// 3357 
// 3358 /**
// 3359   * @brief  Starts the TIM Encoder Interface in interrupt mode.
// 3360   * @param  htim TIM Encoder Interface handle
// 3361   * @param  Channel TIM Channels to be enabled
// 3362   *          This parameter can be one of the following values:
// 3363   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3364   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3365   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 3366   * @retval HAL status
// 3367   */
// 3368 HAL_StatusTypeDef HAL_TIM_Encoder_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 3369 {
// 3370   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
// 3371   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
// 3372   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
// 3373   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
// 3374 
// 3375   /* Check the parameters */
// 3376   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
// 3377 
// 3378   /* Set the TIM channel(s) state */
// 3379   if (Channel == TIM_CHANNEL_1)
// 3380   {
// 3381     if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 3382         || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY))
// 3383     {
// 3384       return HAL_ERROR;
// 3385     }
// 3386     else
// 3387     {
// 3388       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3389       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3390     }
// 3391   }
// 3392   else if (Channel == TIM_CHANNEL_2)
// 3393   {
// 3394     if ((channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 3395         || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 3396     {
// 3397       return HAL_ERROR;
// 3398     }
// 3399     else
// 3400     {
// 3401       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3402       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3403     }
// 3404   }
// 3405   else
// 3406   {
// 3407     if ((channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 3408         || (channel_2_state != HAL_TIM_CHANNEL_STATE_READY)
// 3409         || (complementary_channel_1_state != HAL_TIM_CHANNEL_STATE_READY)
// 3410         || (complementary_channel_2_state != HAL_TIM_CHANNEL_STATE_READY))
// 3411     {
// 3412       return HAL_ERROR;
// 3413     }
// 3414     else
// 3415     {
// 3416       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3417       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3418       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3419       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3420     }
// 3421   }
// 3422 
// 3423   /* Enable the encoder interface channels */
// 3424   /* Enable the capture compare Interrupts 1 and/or 2 */
// 3425   switch (Channel)
// 3426   {
// 3427     case TIM_CHANNEL_1:
// 3428     {
// 3429       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3430       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 3431       break;
// 3432     }
// 3433 
// 3434     case TIM_CHANNEL_2:
// 3435     {
// 3436       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3437       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 3438       break;
// 3439     }
// 3440 
// 3441     default :
// 3442     {
// 3443       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3444       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3445       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC1);
// 3446       __HAL_TIM_ENABLE_IT(htim, TIM_IT_CC2);
// 3447       break;
// 3448     }
// 3449   }
// 3450 
// 3451   /* Enable the Peripheral */
// 3452   __HAL_TIM_ENABLE(htim);
// 3453 
// 3454   /* Return function status */
// 3455   return HAL_OK;
// 3456 }
// 3457 
// 3458 /**
// 3459   * @brief  Stops the TIM Encoder Interface in interrupt mode.
// 3460   * @param  htim TIM Encoder Interface handle
// 3461   * @param  Channel TIM Channels to be disabled
// 3462   *          This parameter can be one of the following values:
// 3463   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3464   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3465   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 3466   * @retval HAL status
// 3467   */
// 3468 HAL_StatusTypeDef HAL_TIM_Encoder_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel)
// 3469 {
// 3470   /* Check the parameters */
// 3471   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
// 3472 
// 3473   /* Disable the Input Capture channels 1 and 2
// 3474     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 3475   if (Channel == TIM_CHANNEL_1)
// 3476   {
// 3477     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3478 
// 3479     /* Disable the capture compare Interrupts 1 */
// 3480     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 3481   }
// 3482   else if (Channel == TIM_CHANNEL_2)
// 3483   {
// 3484     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3485 
// 3486     /* Disable the capture compare Interrupts 2 */
// 3487     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 3488   }
// 3489   else
// 3490   {
// 3491     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3492     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3493 
// 3494     /* Disable the capture compare Interrupts 1 and 2 */
// 3495     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC1);
// 3496     __HAL_TIM_DISABLE_IT(htim, TIM_IT_CC2);
// 3497   }
// 3498 
// 3499   /* Disable the Peripheral */
// 3500   __HAL_TIM_DISABLE(htim);
// 3501 
// 3502   /* Set the TIM channel(s) state */
// 3503   if ((Channel == TIM_CHANNEL_1) || (Channel == TIM_CHANNEL_2))
// 3504   {
// 3505     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 3506     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 3507   }
// 3508   else
// 3509   {
// 3510     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3511     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3512     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3513     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3514   }
// 3515 
// 3516   /* Return function status */
// 3517   return HAL_OK;
// 3518 }
// 3519 
// 3520 /**
// 3521   * @brief  Starts the TIM Encoder Interface in DMA mode.
// 3522   * @param  htim TIM Encoder Interface handle
// 3523   * @param  Channel TIM Channels to be enabled
// 3524   *          This parameter can be one of the following values:
// 3525   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3526   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3527   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 3528   * @param  pData1 The destination Buffer address for IC1.
// 3529   * @param  pData2 The destination Buffer address for IC2.
// 3530   * @param  Length The length of data to be transferred from TIM peripheral to memory.
// 3531   * @retval HAL status
// 3532   */
// 3533 HAL_StatusTypeDef HAL_TIM_Encoder_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData1,
// 3534                                             uint32_t *pData2, uint16_t Length)
// 3535 {
// 3536   HAL_TIM_ChannelStateTypeDef channel_1_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_1);
// 3537   HAL_TIM_ChannelStateTypeDef channel_2_state = TIM_CHANNEL_STATE_GET(htim, TIM_CHANNEL_2);
// 3538   HAL_TIM_ChannelStateTypeDef complementary_channel_1_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_1);
// 3539   HAL_TIM_ChannelStateTypeDef complementary_channel_2_state = TIM_CHANNEL_N_STATE_GET(htim, TIM_CHANNEL_2);
// 3540 
// 3541   /* Check the parameters */
// 3542   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
// 3543 
// 3544   /* Set the TIM channel(s) state */
// 3545   if (Channel == TIM_CHANNEL_1)
// 3546   {
// 3547     if ((channel_1_state == HAL_TIM_CHANNEL_STATE_BUSY)
// 3548         || (complementary_channel_1_state == HAL_TIM_CHANNEL_STATE_BUSY))
// 3549     {
// 3550       return HAL_BUSY;
// 3551     }
// 3552     else if ((channel_1_state == HAL_TIM_CHANNEL_STATE_READY)
// 3553              && (complementary_channel_1_state == HAL_TIM_CHANNEL_STATE_READY))
// 3554     {
// 3555       if ((pData1 == NULL) || (Length == 0U))
// 3556       {
// 3557         return HAL_ERROR;
// 3558       }
// 3559       else
// 3560       {
// 3561         TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3562         TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3563       }
// 3564     }
// 3565     else
// 3566     {
// 3567       return HAL_ERROR;
// 3568     }
// 3569   }
// 3570   else if (Channel == TIM_CHANNEL_2)
// 3571   {
// 3572     if ((channel_2_state == HAL_TIM_CHANNEL_STATE_BUSY)
// 3573         || (complementary_channel_2_state == HAL_TIM_CHANNEL_STATE_BUSY))
// 3574     {
// 3575       return HAL_BUSY;
// 3576     }
// 3577     else if ((channel_2_state == HAL_TIM_CHANNEL_STATE_READY)
// 3578              && (complementary_channel_2_state == HAL_TIM_CHANNEL_STATE_READY))
// 3579     {
// 3580       if ((pData2 == NULL) || (Length == 0U))
// 3581       {
// 3582         return HAL_ERROR;
// 3583       }
// 3584       else
// 3585       {
// 3586         TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3587         TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3588       }
// 3589     }
// 3590     else
// 3591     {
// 3592       return HAL_ERROR;
// 3593     }
// 3594   }
// 3595   else
// 3596   {
// 3597     if ((channel_1_state == HAL_TIM_CHANNEL_STATE_BUSY)
// 3598         || (channel_2_state == HAL_TIM_CHANNEL_STATE_BUSY)
// 3599         || (complementary_channel_1_state == HAL_TIM_CHANNEL_STATE_BUSY)
// 3600         || (complementary_channel_2_state == HAL_TIM_CHANNEL_STATE_BUSY))
// 3601     {
// 3602       return HAL_BUSY;
// 3603     }
// 3604     else if ((channel_1_state == HAL_TIM_CHANNEL_STATE_READY)
// 3605              && (channel_2_state == HAL_TIM_CHANNEL_STATE_READY)
// 3606              && (complementary_channel_1_state == HAL_TIM_CHANNEL_STATE_READY)
// 3607              && (complementary_channel_2_state == HAL_TIM_CHANNEL_STATE_READY))
// 3608     {
// 3609       if ((((pData1 == NULL) || (pData2 == NULL))) || (Length == 0U))
// 3610       {
// 3611         return HAL_ERROR;
// 3612       }
// 3613       else
// 3614       {
// 3615         TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3616         TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3617         TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_BUSY);
// 3618         TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_BUSY);
// 3619       }
// 3620     }
// 3621     else
// 3622     {
// 3623       return HAL_ERROR;
// 3624     }
// 3625   }
// 3626 
// 3627   switch (Channel)
// 3628   {
// 3629     case TIM_CHANNEL_1:
// 3630     {
// 3631       /* Set the DMA capture callbacks */
// 3632       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 3633       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3634 
// 3635       /* Set the DMA error callback */
// 3636       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 3637 
// 3638       /* Enable the DMA stream */
// 3639       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData1,
// 3640                            Length) != HAL_OK)
// 3641       {
// 3642         /* Return error status */
// 3643         return HAL_ERROR;
// 3644       }
// 3645       /* Enable the TIM Input Capture DMA request */
// 3646       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 3647 
// 3648       /* Enable the Capture compare channel */
// 3649       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3650 
// 3651       /* Enable the Peripheral */
// 3652       __HAL_TIM_ENABLE(htim);
// 3653 
// 3654       break;
// 3655     }
// 3656 
// 3657     case TIM_CHANNEL_2:
// 3658     {
// 3659       /* Set the DMA capture callbacks */
// 3660       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 3661       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3662 
// 3663       /* Set the DMA error callback */
// 3664       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError;
// 3665       /* Enable the DMA stream */
// 3666       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData2,
// 3667                            Length) != HAL_OK)
// 3668       {
// 3669         /* Return error status */
// 3670         return HAL_ERROR;
// 3671       }
// 3672       /* Enable the TIM Input Capture  DMA request */
// 3673       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 3674 
// 3675       /* Enable the Capture compare channel */
// 3676       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3677 
// 3678       /* Enable the Peripheral */
// 3679       __HAL_TIM_ENABLE(htim);
// 3680 
// 3681       break;
// 3682     }
// 3683 
// 3684     default:
// 3685     {
// 3686       /* Set the DMA capture callbacks */
// 3687       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 3688       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3689 
// 3690       /* Set the DMA error callback */
// 3691       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 3692 
// 3693       /* Enable the DMA stream */
// 3694       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->CCR1, (uint32_t)pData1,
// 3695                            Length) != HAL_OK)
// 3696       {
// 3697         /* Return error status */
// 3698         return HAL_ERROR;
// 3699       }
// 3700 
// 3701       /* Set the DMA capture callbacks */
// 3702       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 3703       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 3704 
// 3705       /* Set the DMA error callback */
// 3706       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 3707 
// 3708       /* Enable the DMA stream */
// 3709       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->CCR2, (uint32_t)pData2,
// 3710                            Length) != HAL_OK)
// 3711       {
// 3712         /* Return error status */
// 3713         return HAL_ERROR;
// 3714       }
// 3715 
// 3716       /* Enable the TIM Input Capture  DMA request */
// 3717       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC1);
// 3718       /* Enable the TIM Input Capture  DMA request */
// 3719       __HAL_TIM_ENABLE_DMA(htim, TIM_DMA_CC2);
// 3720 
// 3721       /* Enable the Capture compare channel */
// 3722       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_ENABLE);
// 3723       TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_ENABLE);
// 3724 
// 3725       /* Enable the Peripheral */
// 3726       __HAL_TIM_ENABLE(htim);
// 3727 
// 3728       break;
// 3729     }
// 3730   }
// 3731 
// 3732   /* Return function status */
// 3733   return HAL_OK;
// 3734 }
// 3735 
// 3736 /**
// 3737   * @brief  Stops the TIM Encoder Interface in DMA mode.
// 3738   * @param  htim TIM Encoder Interface handle
// 3739   * @param  Channel TIM Channels to be enabled
// 3740   *          This parameter can be one of the following values:
// 3741   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 3742   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 3743   *            @arg TIM_CHANNEL_ALL: TIM Channel 1 and TIM Channel 2 are selected
// 3744   * @retval HAL status
// 3745   */
// 3746 HAL_StatusTypeDef HAL_TIM_Encoder_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel)
// 3747 {
// 3748   /* Check the parameters */
// 3749   assert_param(IS_TIM_ENCODER_INTERFACE_INSTANCE(htim->Instance));
// 3750 
// 3751   /* Disable the Input Capture channels 1 and 2
// 3752     (in the EncoderInterface the two possible channels that can be used are TIM_CHANNEL_1 and TIM_CHANNEL_2) */
// 3753   if (Channel == TIM_CHANNEL_1)
// 3754   {
// 3755     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3756 
// 3757     /* Disable the capture compare DMA Request 1 */
// 3758     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 3759     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 3760   }
// 3761   else if (Channel == TIM_CHANNEL_2)
// 3762   {
// 3763     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3764 
// 3765     /* Disable the capture compare DMA Request 2 */
// 3766     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 3767     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 3768   }
// 3769   else
// 3770   {
// 3771     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_1, TIM_CCx_DISABLE);
// 3772     TIM_CCxChannelCmd(htim->Instance, TIM_CHANNEL_2, TIM_CCx_DISABLE);
// 3773 
// 3774     /* Disable the capture compare DMA Request 1 and 2 */
// 3775     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC1);
// 3776     __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_CC2);
// 3777     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 3778     (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 3779   }
// 3780 
// 3781   /* Disable the Peripheral */
// 3782   __HAL_TIM_DISABLE(htim);
// 3783 
// 3784   /* Set the TIM channel(s) state */
// 3785   if ((Channel == TIM_CHANNEL_1) || (Channel == TIM_CHANNEL_2))
// 3786   {
// 3787     TIM_CHANNEL_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 3788     TIM_CHANNEL_N_STATE_SET(htim, Channel, HAL_TIM_CHANNEL_STATE_READY);
// 3789   }
// 3790   else
// 3791   {
// 3792     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3793     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3794     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 3795     TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 3796   }
// 3797 
// 3798   /* Return function status */
// 3799   return HAL_OK;
// 3800 }
// 3801 
// 3802 /**
// 3803   * @}
// 3804   */
// 3805 /** @defgroup TIM_Exported_Functions_Group7 TIM IRQ handler management
// 3806   *  @brief    TIM IRQ handler management
// 3807   *
// 3808 @verbatim
// 3809   ==============================================================================
// 3810                         ##### IRQ handler management #####
// 3811   ==============================================================================
// 3812   [..]
// 3813     This section provides Timer IRQ handler function.
// 3814 
// 3815 @endverbatim
// 3816   * @{
// 3817   */
// 3818 /**
// 3819   * @brief  This function handles TIM interrupts requests.
// 3820   * @param  htim TIM  handle
// 3821   * @retval None
// 3822   */
// 3823 void HAL_TIM_IRQHandler(TIM_HandleTypeDef *htim)
// 3824 {
// 3825   uint32_t itsource = htim->Instance->DIER;
// 3826   uint32_t itflag   = htim->Instance->SR;
// 3827 
// 3828   /* Capture compare 1 event */
// 3829   if ((itflag & (TIM_FLAG_CC1)) == (TIM_FLAG_CC1))
// 3830   {
// 3831     if ((itsource & (TIM_IT_CC1)) == (TIM_IT_CC1))
// 3832     {
// 3833       {
// 3834         __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_CC1);
// 3835         htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 3836 
// 3837         /* Input capture event */
// 3838         if ((htim->Instance->CCMR1 & TIM_CCMR1_CC1S) != 0x00U)
// 3839         {
// 3840 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3841           htim->IC_CaptureCallback(htim);
// 3842 #else
// 3843           HAL_TIM_IC_CaptureCallback(htim);
// 3844 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3845         }
// 3846         /* Output compare event */
// 3847         else
// 3848         {
// 3849 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3850           htim->OC_DelayElapsedCallback(htim);
// 3851           htim->PWM_PulseFinishedCallback(htim);
// 3852 #else
// 3853           HAL_TIM_OC_DelayElapsedCallback(htim);
// 3854           HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3855 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3856         }
// 3857         htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3858       }
// 3859     }
// 3860   }
// 3861   /* Capture compare 2 event */
// 3862   if ((itflag & (TIM_FLAG_CC2)) == (TIM_FLAG_CC2))
// 3863   {
// 3864     if ((itsource & (TIM_IT_CC2)) == (TIM_IT_CC2))
// 3865     {
// 3866       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_CC2);
// 3867       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 3868       /* Input capture event */
// 3869       if ((htim->Instance->CCMR1 & TIM_CCMR1_CC2S) != 0x00U)
// 3870       {
// 3871 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3872         htim->IC_CaptureCallback(htim);
// 3873 #else
// 3874         HAL_TIM_IC_CaptureCallback(htim);
// 3875 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3876       }
// 3877       /* Output compare event */
// 3878       else
// 3879       {
// 3880 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3881         htim->OC_DelayElapsedCallback(htim);
// 3882         htim->PWM_PulseFinishedCallback(htim);
// 3883 #else
// 3884         HAL_TIM_OC_DelayElapsedCallback(htim);
// 3885         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3886 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3887       }
// 3888       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3889     }
// 3890   }
// 3891   /* Capture compare 3 event */
// 3892   if ((itflag & (TIM_FLAG_CC3)) == (TIM_FLAG_CC3))
// 3893   {
// 3894     if ((itsource & (TIM_IT_CC3)) == (TIM_IT_CC3))
// 3895     {
// 3896       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_CC3);
// 3897       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 3898       /* Input capture event */
// 3899       if ((htim->Instance->CCMR2 & TIM_CCMR2_CC3S) != 0x00U)
// 3900       {
// 3901 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3902         htim->IC_CaptureCallback(htim);
// 3903 #else
// 3904         HAL_TIM_IC_CaptureCallback(htim);
// 3905 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3906       }
// 3907       /* Output compare event */
// 3908       else
// 3909       {
// 3910 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3911         htim->OC_DelayElapsedCallback(htim);
// 3912         htim->PWM_PulseFinishedCallback(htim);
// 3913 #else
// 3914         HAL_TIM_OC_DelayElapsedCallback(htim);
// 3915         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3916 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3917       }
// 3918       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3919     }
// 3920   }
// 3921   /* Capture compare 4 event */
// 3922   if ((itflag & (TIM_FLAG_CC4)) == (TIM_FLAG_CC4))
// 3923   {
// 3924     if ((itsource & (TIM_IT_CC4)) == (TIM_IT_CC4))
// 3925     {
// 3926       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_CC4);
// 3927       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 3928       /* Input capture event */
// 3929       if ((htim->Instance->CCMR2 & TIM_CCMR2_CC4S) != 0x00U)
// 3930       {
// 3931 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3932         htim->IC_CaptureCallback(htim);
// 3933 #else
// 3934         HAL_TIM_IC_CaptureCallback(htim);
// 3935 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3936       }
// 3937       /* Output compare event */
// 3938       else
// 3939       {
// 3940 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3941         htim->OC_DelayElapsedCallback(htim);
// 3942         htim->PWM_PulseFinishedCallback(htim);
// 3943 #else
// 3944         HAL_TIM_OC_DelayElapsedCallback(htim);
// 3945         HAL_TIM_PWM_PulseFinishedCallback(htim);
// 3946 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3947       }
// 3948       htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 3949     }
// 3950   }
// 3951   /* TIM Update event */
// 3952   if ((itflag & (TIM_FLAG_UPDATE)) == (TIM_FLAG_UPDATE))
// 3953   {
// 3954     if ((itsource & (TIM_IT_UPDATE)) == (TIM_IT_UPDATE))
// 3955     {
// 3956       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_UPDATE);
// 3957 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3958       htim->PeriodElapsedCallback(htim);
// 3959 #else
// 3960       HAL_TIM_PeriodElapsedCallback(htim);
// 3961 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3962     }
// 3963   }
// 3964   /* TIM Break input event */
// 3965   if ((itflag & (TIM_FLAG_BREAK)) == (TIM_FLAG_BREAK))
// 3966   {
// 3967     if ((itsource & (TIM_IT_BREAK)) == (TIM_IT_BREAK))
// 3968     {
// 3969       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_BREAK);
// 3970 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3971       htim->BreakCallback(htim);
// 3972 #else
// 3973       HAL_TIMEx_BreakCallback(htim);
// 3974 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3975     }
// 3976   }
// 3977   /* TIM Trigger detection event */
// 3978   if ((itflag & (TIM_FLAG_TRIGGER)) == (TIM_FLAG_TRIGGER))
// 3979   {
// 3980     if ((itsource & (TIM_IT_TRIGGER)) == (TIM_IT_TRIGGER))
// 3981     {
// 3982       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_TRIGGER);
// 3983 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3984       htim->TriggerCallback(htim);
// 3985 #else
// 3986       HAL_TIM_TriggerCallback(htim);
// 3987 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 3988     }
// 3989   }
// 3990   /* TIM commutation event */
// 3991   if ((itflag & (TIM_FLAG_COM)) == (TIM_FLAG_COM))
// 3992   {
// 3993     if ((itsource & (TIM_IT_COM)) == (TIM_IT_COM))
// 3994     {
// 3995       __HAL_TIM_CLEAR_FLAG(htim, TIM_FLAG_COM);
// 3996 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 3997       htim->CommutationCallback(htim);
// 3998 #else
// 3999       HAL_TIMEx_CommutCallback(htim);
// 4000 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 4001     }
// 4002   }
// 4003 }
// 4004 
// 4005 /**
// 4006   * @}
// 4007   */
// 4008 
// 4009 /** @defgroup TIM_Exported_Functions_Group8 TIM Peripheral Control functions
// 4010   *  @brief    TIM Peripheral Control functions
// 4011   *
// 4012 @verbatim
// 4013   ==============================================================================
// 4014                    ##### Peripheral Control functions #####
// 4015   ==============================================================================
// 4016  [..]
// 4017    This section provides functions allowing to:
// 4018       (+) Configure The Input Output channels for OC, PWM, IC or One Pulse mode.
// 4019       (+) Configure External Clock source.
// 4020       (+) Configure Complementary channels, break features and dead time.
// 4021       (+) Configure Master and the Slave synchronization.
// 4022       (+) Configure the DMA Burst Mode.
// 4023 
// 4024 @endverbatim
// 4025   * @{
// 4026   */
// 4027 
// 4028 /**
// 4029   * @brief  Initializes the TIM Output Compare Channels according to the specified
// 4030   *         parameters in the TIM_OC_InitTypeDef.
// 4031   * @param  htim TIM Output Compare handle
// 4032   * @param  sConfig TIM Output Compare configuration structure
// 4033   * @param  Channel TIM Channels to configure
// 4034   *          This parameter can be one of the following values:
// 4035   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 4036   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 4037   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 4038   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 4039   * @retval HAL status
// 4040   */
// 4041 HAL_StatusTypeDef HAL_TIM_OC_ConfigChannel(TIM_HandleTypeDef *htim,
// 4042                                            const TIM_OC_InitTypeDef *sConfig,
// 4043                                            uint32_t Channel)
// 4044 {
// 4045   HAL_StatusTypeDef status = HAL_OK;
// 4046 
// 4047   /* Check the parameters */
// 4048   assert_param(IS_TIM_CHANNELS(Channel));
// 4049   assert_param(IS_TIM_OC_MODE(sConfig->OCMode));
// 4050   assert_param(IS_TIM_OC_POLARITY(sConfig->OCPolarity));
// 4051 
// 4052   /* Process Locked */
// 4053   __HAL_LOCK(htim);
// 4054 
// 4055   switch (Channel)
// 4056   {
// 4057     case TIM_CHANNEL_1:
// 4058     {
// 4059       /* Check the parameters */
// 4060       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4061 
// 4062       /* Configure the TIM Channel 1 in Output Compare */
// 4063       TIM_OC1_SetConfig(htim->Instance, sConfig);
// 4064       break;
// 4065     }
// 4066 
// 4067     case TIM_CHANNEL_2:
// 4068     {
// 4069       /* Check the parameters */
// 4070       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4071 
// 4072       /* Configure the TIM Channel 2 in Output Compare */
// 4073       TIM_OC2_SetConfig(htim->Instance, sConfig);
// 4074       break;
// 4075     }
// 4076 
// 4077     case TIM_CHANNEL_3:
// 4078     {
// 4079       /* Check the parameters */
// 4080       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 4081 
// 4082       /* Configure the TIM Channel 3 in Output Compare */
// 4083       TIM_OC3_SetConfig(htim->Instance, sConfig);
// 4084       break;
// 4085     }
// 4086 
// 4087     case TIM_CHANNEL_4:
// 4088     {
// 4089       /* Check the parameters */
// 4090       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 4091 
// 4092       /* Configure the TIM Channel 4 in Output Compare */
// 4093       TIM_OC4_SetConfig(htim->Instance, sConfig);
// 4094       break;
// 4095     }
// 4096 
// 4097     default:
// 4098       status = HAL_ERROR;
// 4099       break;
// 4100   }
// 4101 
// 4102   __HAL_UNLOCK(htim);
// 4103 
// 4104   return status;
// 4105 }
// 4106 
// 4107 /**
// 4108   * @brief  Initializes the TIM Input Capture Channels according to the specified
// 4109   *         parameters in the TIM_IC_InitTypeDef.
// 4110   * @param  htim TIM IC handle
// 4111   * @param  sConfig TIM Input Capture configuration structure
// 4112   * @param  Channel TIM Channel to configure
// 4113   *          This parameter can be one of the following values:
// 4114   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 4115   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 4116   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 4117   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 4118   * @retval HAL status
// 4119   */
// 4120 HAL_StatusTypeDef HAL_TIM_IC_ConfigChannel(TIM_HandleTypeDef *htim, const TIM_IC_InitTypeDef *sConfig, uint32_t Channel)
// 4121 {
// 4122   HAL_StatusTypeDef status = HAL_OK;
// 4123 
// 4124   /* Check the parameters */
// 4125   assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4126   assert_param(IS_TIM_IC_POLARITY(sConfig->ICPolarity));
// 4127   assert_param(IS_TIM_IC_SELECTION(sConfig->ICSelection));
// 4128   assert_param(IS_TIM_IC_PRESCALER(sConfig->ICPrescaler));
// 4129   assert_param(IS_TIM_IC_FILTER(sConfig->ICFilter));
// 4130 
// 4131   /* Process Locked */
// 4132   __HAL_LOCK(htim);
// 4133 
// 4134   if (Channel == TIM_CHANNEL_1)
// 4135   {
// 4136     /* TI1 Configuration */
// 4137     TIM_TI1_SetConfig(htim->Instance,
// 4138                       sConfig->ICPolarity,
// 4139                       sConfig->ICSelection,
// 4140                       sConfig->ICFilter);
// 4141 
// 4142     /* Reset the IC1PSC Bits */
// 4143     htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
// 4144 
// 4145     /* Set the IC1PSC value */
// 4146     htim->Instance->CCMR1 |= sConfig->ICPrescaler;
// 4147   }
// 4148   else if (Channel == TIM_CHANNEL_2)
// 4149   {
// 4150     /* TI2 Configuration */
// 4151     assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4152 
// 4153     TIM_TI2_SetConfig(htim->Instance,
// 4154                       sConfig->ICPolarity,
// 4155                       sConfig->ICSelection,
// 4156                       sConfig->ICFilter);
// 4157 
// 4158     /* Reset the IC2PSC Bits */
// 4159     htim->Instance->CCMR1 &= ~TIM_CCMR1_IC2PSC;
// 4160 
// 4161     /* Set the IC2PSC value */
// 4162     htim->Instance->CCMR1 |= (sConfig->ICPrescaler << 8U);
// 4163   }
// 4164   else if (Channel == TIM_CHANNEL_3)
// 4165   {
// 4166     /* TI3 Configuration */
// 4167     assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 4168 
// 4169     TIM_TI3_SetConfig(htim->Instance,
// 4170                       sConfig->ICPolarity,
// 4171                       sConfig->ICSelection,
// 4172                       sConfig->ICFilter);
// 4173 
// 4174     /* Reset the IC3PSC Bits */
// 4175     htim->Instance->CCMR2 &= ~TIM_CCMR2_IC3PSC;
// 4176 
// 4177     /* Set the IC3PSC value */
// 4178     htim->Instance->CCMR2 |= sConfig->ICPrescaler;
// 4179   }
// 4180   else if (Channel == TIM_CHANNEL_4)
// 4181   {
// 4182     /* TI4 Configuration */
// 4183     assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 4184 
// 4185     TIM_TI4_SetConfig(htim->Instance,
// 4186                       sConfig->ICPolarity,
// 4187                       sConfig->ICSelection,
// 4188                       sConfig->ICFilter);
// 4189 
// 4190     /* Reset the IC4PSC Bits */
// 4191     htim->Instance->CCMR2 &= ~TIM_CCMR2_IC4PSC;
// 4192 
// 4193     /* Set the IC4PSC value */
// 4194     htim->Instance->CCMR2 |= (sConfig->ICPrescaler << 8U);
// 4195   }
// 4196   else
// 4197   {
// 4198     status = HAL_ERROR;
// 4199   }
// 4200 
// 4201   __HAL_UNLOCK(htim);
// 4202 
// 4203   return status;
// 4204 }
// 4205 
// 4206 /**
// 4207   * @brief  Initializes the TIM PWM  channels according to the specified
// 4208   *         parameters in the TIM_OC_InitTypeDef.
// 4209   * @param  htim TIM PWM handle
// 4210   * @param  sConfig TIM PWM configuration structure
// 4211   * @param  Channel TIM Channels to be configured
// 4212   *          This parameter can be one of the following values:
// 4213   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 4214   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 4215   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 4216   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 4217   * @retval HAL status
// 4218   */
// 4219 HAL_StatusTypeDef HAL_TIM_PWM_ConfigChannel(TIM_HandleTypeDef *htim,
// 4220                                             const TIM_OC_InitTypeDef *sConfig,
// 4221                                             uint32_t Channel)
// 4222 {
// 4223   HAL_StatusTypeDef status = HAL_OK;
// 4224 
// 4225   /* Check the parameters */
// 4226   assert_param(IS_TIM_CHANNELS(Channel));
// 4227   assert_param(IS_TIM_PWM_MODE(sConfig->OCMode));
// 4228   assert_param(IS_TIM_OC_POLARITY(sConfig->OCPolarity));
// 4229   assert_param(IS_TIM_FAST_STATE(sConfig->OCFastMode));
// 4230 
// 4231   /* Process Locked */
// 4232   __HAL_LOCK(htim);
// 4233 
// 4234   switch (Channel)
// 4235   {
// 4236     case TIM_CHANNEL_1:
// 4237     {
// 4238       /* Check the parameters */
// 4239       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4240 
// 4241       /* Configure the Channel 1 in PWM mode */
// 4242       TIM_OC1_SetConfig(htim->Instance, sConfig);
// 4243 
// 4244       /* Set the Preload enable bit for channel1 */
// 4245       htim->Instance->CCMR1 |= TIM_CCMR1_OC1PE;
// 4246 
// 4247       /* Configure the Output Fast mode */
// 4248       htim->Instance->CCMR1 &= ~TIM_CCMR1_OC1FE;
// 4249       htim->Instance->CCMR1 |= sConfig->OCFastMode;
// 4250       break;
// 4251     }
// 4252 
// 4253     case TIM_CHANNEL_2:
// 4254     {
// 4255       /* Check the parameters */
// 4256       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4257 
// 4258       /* Configure the Channel 2 in PWM mode */
// 4259       TIM_OC2_SetConfig(htim->Instance, sConfig);
// 4260 
// 4261       /* Set the Preload enable bit for channel2 */
// 4262       htim->Instance->CCMR1 |= TIM_CCMR1_OC2PE;
// 4263 
// 4264       /* Configure the Output Fast mode */
// 4265       htim->Instance->CCMR1 &= ~TIM_CCMR1_OC2FE;
// 4266       htim->Instance->CCMR1 |= sConfig->OCFastMode << 8U;
// 4267       break;
// 4268     }
// 4269 
// 4270     case TIM_CHANNEL_3:
// 4271     {
// 4272       /* Check the parameters */
// 4273       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 4274 
// 4275       /* Configure the Channel 3 in PWM mode */
// 4276       TIM_OC3_SetConfig(htim->Instance, sConfig);
// 4277 
// 4278       /* Set the Preload enable bit for channel3 */
// 4279       htim->Instance->CCMR2 |= TIM_CCMR2_OC3PE;
// 4280 
// 4281       /* Configure the Output Fast mode */
// 4282       htim->Instance->CCMR2 &= ~TIM_CCMR2_OC3FE;
// 4283       htim->Instance->CCMR2 |= sConfig->OCFastMode;
// 4284       break;
// 4285     }
// 4286 
// 4287     case TIM_CHANNEL_4:
// 4288     {
// 4289       /* Check the parameters */
// 4290       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 4291 
// 4292       /* Configure the Channel 4 in PWM mode */
// 4293       TIM_OC4_SetConfig(htim->Instance, sConfig);
// 4294 
// 4295       /* Set the Preload enable bit for channel4 */
// 4296       htim->Instance->CCMR2 |= TIM_CCMR2_OC4PE;
// 4297 
// 4298       /* Configure the Output Fast mode */
// 4299       htim->Instance->CCMR2 &= ~TIM_CCMR2_OC4FE;
// 4300       htim->Instance->CCMR2 |= sConfig->OCFastMode << 8U;
// 4301       break;
// 4302     }
// 4303 
// 4304     default:
// 4305       status = HAL_ERROR;
// 4306       break;
// 4307   }
// 4308 
// 4309   __HAL_UNLOCK(htim);
// 4310 
// 4311   return status;
// 4312 }
// 4313 
// 4314 /**
// 4315   * @brief  Initializes the TIM One Pulse Channels according to the specified
// 4316   *         parameters in the TIM_OnePulse_InitTypeDef.
// 4317   * @param  htim TIM One Pulse handle
// 4318   * @param  sConfig TIM One Pulse configuration structure
// 4319   * @param  OutputChannel TIM output channel to configure
// 4320   *          This parameter can be one of the following values:
// 4321   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 4322   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 4323   * @param  InputChannel TIM input Channel to configure
// 4324   *          This parameter can be one of the following values:
// 4325   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 4326   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 4327   * @note  To output a waveform with a minimum delay user can enable the fast
// 4328   *        mode by calling the @ref __HAL_TIM_ENABLE_OCxFAST macro. Then CCx
// 4329   *        output is forced in response to the edge detection on TIx input,
// 4330   *        without taking in account the comparison.
// 4331   * @retval HAL status
// 4332   */
// 4333 HAL_StatusTypeDef HAL_TIM_OnePulse_ConfigChannel(TIM_HandleTypeDef *htim,  TIM_OnePulse_InitTypeDef *sConfig,
// 4334                                                  uint32_t OutputChannel,  uint32_t InputChannel)
// 4335 {
// 4336   HAL_StatusTypeDef status = HAL_OK;
// 4337   TIM_OC_InitTypeDef temp1;
// 4338 
// 4339   /* Check the parameters */
// 4340   assert_param(IS_TIM_OPM_CHANNELS(OutputChannel));
// 4341   assert_param(IS_TIM_OPM_CHANNELS(InputChannel));
// 4342 
// 4343   if (OutputChannel != InputChannel)
// 4344   {
// 4345     /* Process Locked */
// 4346     __HAL_LOCK(htim);
// 4347 
// 4348     htim->State = HAL_TIM_STATE_BUSY;
// 4349 
// 4350     /* Extract the Output compare configuration from sConfig structure */
// 4351     temp1.OCMode = sConfig->OCMode;
// 4352     temp1.Pulse = sConfig->Pulse;
// 4353     temp1.OCPolarity = sConfig->OCPolarity;
// 4354     temp1.OCNPolarity = sConfig->OCNPolarity;
// 4355     temp1.OCIdleState = sConfig->OCIdleState;
// 4356     temp1.OCNIdleState = sConfig->OCNIdleState;
// 4357 
// 4358     switch (OutputChannel)
// 4359     {
// 4360       case TIM_CHANNEL_1:
// 4361       {
// 4362         assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4363 
// 4364         TIM_OC1_SetConfig(htim->Instance, &temp1);
// 4365         break;
// 4366       }
// 4367 
// 4368       case TIM_CHANNEL_2:
// 4369       {
// 4370         assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4371 
// 4372         TIM_OC2_SetConfig(htim->Instance, &temp1);
// 4373         break;
// 4374       }
// 4375 
// 4376       default:
// 4377         status = HAL_ERROR;
// 4378         break;
// 4379     }
// 4380 
// 4381     if (status == HAL_OK)
// 4382     {
// 4383       switch (InputChannel)
// 4384       {
// 4385         case TIM_CHANNEL_1:
// 4386         {
// 4387           assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 4388 
// 4389           TIM_TI1_SetConfig(htim->Instance, sConfig->ICPolarity,
// 4390                             sConfig->ICSelection, sConfig->ICFilter);
// 4391 
// 4392           /* Reset the IC1PSC Bits */
// 4393           htim->Instance->CCMR1 &= ~TIM_CCMR1_IC1PSC;
// 4394 
// 4395           /* Select the Trigger source */
// 4396           htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 4397           htim->Instance->SMCR |= TIM_TS_TI1FP1;
// 4398 
// 4399           /* Select the Slave Mode */
// 4400           htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 4401           htim->Instance->SMCR |= TIM_SLAVEMODE_TRIGGER;
// 4402           break;
// 4403         }
// 4404 
// 4405         case TIM_CHANNEL_2:
// 4406         {
// 4407           assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 4408 
// 4409           TIM_TI2_SetConfig(htim->Instance, sConfig->ICPolarity,
// 4410                             sConfig->ICSelection, sConfig->ICFilter);
// 4411 
// 4412           /* Reset the IC2PSC Bits */
// 4413           htim->Instance->CCMR1 &= ~TIM_CCMR1_IC2PSC;
// 4414 
// 4415           /* Select the Trigger source */
// 4416           htim->Instance->SMCR &= ~TIM_SMCR_TS;
// 4417           htim->Instance->SMCR |= TIM_TS_TI2FP2;
// 4418 
// 4419           /* Select the Slave Mode */
// 4420           htim->Instance->SMCR &= ~TIM_SMCR_SMS;
// 4421           htim->Instance->SMCR |= TIM_SLAVEMODE_TRIGGER;
// 4422           break;
// 4423         }
// 4424 
// 4425         default:
// 4426           status = HAL_ERROR;
// 4427           break;
// 4428       }
// 4429     }
// 4430 
// 4431     htim->State = HAL_TIM_STATE_READY;
// 4432 
// 4433     __HAL_UNLOCK(htim);
// 4434 
// 4435     return status;
// 4436   }
// 4437   else
// 4438   {
// 4439     return HAL_ERROR;
// 4440   }
// 4441 }
// 4442 
// 4443 /**
// 4444   * @brief  Configure the DMA Burst to transfer Data from the memory to the TIM peripheral
// 4445   * @param  htim TIM handle
// 4446   * @param  BurstBaseAddress TIM Base address from where the DMA  will start the Data write
// 4447   *         This parameter can be one of the following values:
// 4448   *            @arg TIM_DMABASE_CR1
// 4449   *            @arg TIM_DMABASE_CR2
// 4450   *            @arg TIM_DMABASE_SMCR
// 4451   *            @arg TIM_DMABASE_DIER
// 4452   *            @arg TIM_DMABASE_SR
// 4453   *            @arg TIM_DMABASE_EGR
// 4454   *            @arg TIM_DMABASE_CCMR1
// 4455   *            @arg TIM_DMABASE_CCMR2
// 4456   *            @arg TIM_DMABASE_CCER
// 4457   *            @arg TIM_DMABASE_CNT
// 4458   *            @arg TIM_DMABASE_PSC
// 4459   *            @arg TIM_DMABASE_ARR
// 4460   *            @arg TIM_DMABASE_RCR
// 4461   *            @arg TIM_DMABASE_CCR1
// 4462   *            @arg TIM_DMABASE_CCR2
// 4463   *            @arg TIM_DMABASE_CCR3
// 4464   *            @arg TIM_DMABASE_CCR4
// 4465   *            @arg TIM_DMABASE_BDTR
// 4466   * @param  BurstRequestSrc TIM DMA Request sources
// 4467   *         This parameter can be one of the following values:
// 4468   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 4469   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 4470   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 4471   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 4472   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 4473   *            @arg TIM_DMA_COM: TIM Commutation DMA source
// 4474   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 4475   * @param  BurstBuffer The Buffer address.
// 4476   * @param  BurstLength DMA Burst length. This parameter can be one value
// 4477   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 4478   * @note   This function should be used only when BurstLength is equal to DMA data transfer length.
// 4479   * @retval HAL status
// 4480   */
// 4481 HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
// 4482                                               uint32_t BurstRequestSrc, const uint32_t *BurstBuffer,
// 4483                                               uint32_t  BurstLength)
// 4484 {
// 4485   HAL_StatusTypeDef status;
// 4486 
// 4487   status = HAL_TIM_DMABurst_MultiWriteStart(htim, BurstBaseAddress, BurstRequestSrc, BurstBuffer, BurstLength,
// 4488                                             ((BurstLength) >> 8U) + 1U);
// 4489 
// 4490 
// 4491 
// 4492   return status;
// 4493 }
// 4494 
// 4495 /**
// 4496   * @brief  Configure the DMA Burst to transfer multiple Data from the memory to the TIM peripheral
// 4497   * @param  htim TIM handle
// 4498   * @param  BurstBaseAddress TIM Base address from where the DMA will start the Data write
// 4499   *         This parameter can be one of the following values:
// 4500   *            @arg TIM_DMABASE_CR1
// 4501   *            @arg TIM_DMABASE_CR2
// 4502   *            @arg TIM_DMABASE_SMCR
// 4503   *            @arg TIM_DMABASE_DIER
// 4504   *            @arg TIM_DMABASE_SR
// 4505   *            @arg TIM_DMABASE_EGR
// 4506   *            @arg TIM_DMABASE_CCMR1
// 4507   *            @arg TIM_DMABASE_CCMR2
// 4508   *            @arg TIM_DMABASE_CCER
// 4509   *            @arg TIM_DMABASE_CNT
// 4510   *            @arg TIM_DMABASE_PSC
// 4511   *            @arg TIM_DMABASE_ARR
// 4512   *            @arg TIM_DMABASE_RCR
// 4513   *            @arg TIM_DMABASE_CCR1
// 4514   *            @arg TIM_DMABASE_CCR2
// 4515   *            @arg TIM_DMABASE_CCR3
// 4516   *            @arg TIM_DMABASE_CCR4
// 4517   *            @arg TIM_DMABASE_BDTR
// 4518   * @param  BurstRequestSrc TIM DMA Request sources
// 4519   *         This parameter can be one of the following values:
// 4520   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 4521   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 4522   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 4523   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 4524   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 4525   *            @arg TIM_DMA_COM: TIM Commutation DMA source
// 4526   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 4527   * @param  BurstBuffer The Buffer address.
// 4528   * @param  BurstLength DMA Burst length. This parameter can be one value
// 4529   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 4530   * @param  DataLength Data length. This parameter can be one value
// 4531   *         between 1 and 0xFFFF.
// 4532   * @retval HAL status
// 4533   */
// 4534 HAL_StatusTypeDef HAL_TIM_DMABurst_MultiWriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
// 4535                                                    uint32_t BurstRequestSrc, const uint32_t *BurstBuffer,
// 4536                                                    uint32_t  BurstLength,  uint32_t  DataLength)
// 4537 {
// 4538   HAL_StatusTypeDef status = HAL_OK;
// 4539 
// 4540   /* Check the parameters */
// 4541   assert_param(IS_TIM_DMABURST_INSTANCE(htim->Instance));
// 4542   assert_param(IS_TIM_DMA_BASE(BurstBaseAddress));
// 4543   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 4544   assert_param(IS_TIM_DMA_LENGTH(BurstLength));
// 4545   assert_param(IS_TIM_DMA_DATA_LENGTH(DataLength));
// 4546 
// 4547   if (htim->DMABurstState == HAL_DMA_BURST_STATE_BUSY)
// 4548   {
// 4549     return HAL_BUSY;
// 4550   }
// 4551   else if (htim->DMABurstState == HAL_DMA_BURST_STATE_READY)
// 4552   {
// 4553     if ((BurstBuffer == NULL) && (BurstLength > 0U))
// 4554     {
// 4555       return HAL_ERROR;
// 4556     }
// 4557     else
// 4558     {
// 4559       htim->DMABurstState = HAL_DMA_BURST_STATE_BUSY;
// 4560     }
// 4561   }
// 4562   else
// 4563   {
// 4564     /* nothing to do */
// 4565   }
// 4566 
// 4567   switch (BurstRequestSrc)
// 4568   {
// 4569     case TIM_DMA_UPDATE:
// 4570     {
// 4571       /* Set the DMA Period elapsed callbacks */
// 4572       htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
// 4573       htim->hdma[TIM_DMA_ID_UPDATE]->XferHalfCpltCallback = TIM_DMAPeriodElapsedHalfCplt;
// 4574 
// 4575       /* Set the DMA error callback */
// 4576       htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
// 4577 
// 4578       /* Enable the DMA stream */
// 4579       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)BurstBuffer,
// 4580                            (uint32_t)&htim->Instance->DMAR, DataLength) != HAL_OK)
// 4581       {
// 4582         /* Return error status */
// 4583         return HAL_ERROR;
// 4584       }
// 4585       break;
// 4586     }
// 4587     case TIM_DMA_CC1:
// 4588     {
// 4589       /* Set the DMA compare callbacks */
// 4590       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 4591       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 4592 
// 4593       /* Set the DMA error callback */
// 4594       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 4595 
// 4596       /* Enable the DMA stream */
// 4597       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)BurstBuffer,
// 4598                            (uint32_t)&htim->Instance->DMAR, DataLength) != HAL_OK)
// 4599       {
// 4600         /* Return error status */
// 4601         return HAL_ERROR;
// 4602       }
// 4603       break;
// 4604     }
// 4605     case TIM_DMA_CC2:
// 4606     {
// 4607       /* Set the DMA compare callbacks */
// 4608       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 4609       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 4610 
// 4611       /* Set the DMA error callback */
// 4612       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 4613 
// 4614       /* Enable the DMA stream */
// 4615       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)BurstBuffer,
// 4616                            (uint32_t)&htim->Instance->DMAR, DataLength) != HAL_OK)
// 4617       {
// 4618         /* Return error status */
// 4619         return HAL_ERROR;
// 4620       }
// 4621       break;
// 4622     }
// 4623     case TIM_DMA_CC3:
// 4624     {
// 4625       /* Set the DMA compare callbacks */
// 4626       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 4627       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 4628 
// 4629       /* Set the DMA error callback */
// 4630       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 4631 
// 4632       /* Enable the DMA stream */
// 4633       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)BurstBuffer,
// 4634                            (uint32_t)&htim->Instance->DMAR, DataLength) != HAL_OK)
// 4635       {
// 4636         /* Return error status */
// 4637         return HAL_ERROR;
// 4638       }
// 4639       break;
// 4640     }
// 4641     case TIM_DMA_CC4:
// 4642     {
// 4643       /* Set the DMA compare callbacks */
// 4644       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMADelayPulseCplt;
// 4645       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMADelayPulseHalfCplt;
// 4646 
// 4647       /* Set the DMA error callback */
// 4648       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 4649 
// 4650       /* Enable the DMA stream */
// 4651       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)BurstBuffer,
// 4652                            (uint32_t)&htim->Instance->DMAR, DataLength) != HAL_OK)
// 4653       {
// 4654         /* Return error status */
// 4655         return HAL_ERROR;
// 4656       }
// 4657       break;
// 4658     }
// 4659     case TIM_DMA_COM:
// 4660     {
// 4661       /* Set the DMA commutation callbacks */
// 4662       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferCpltCallback =  TIMEx_DMACommutationCplt;
// 4663       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback =  TIMEx_DMACommutationHalfCplt;
// 4664 
// 4665       /* Set the DMA error callback */
// 4666       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferErrorCallback = TIM_DMAError ;
// 4667 
// 4668       /* Enable the DMA stream */
// 4669       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_COMMUTATION], (uint32_t)BurstBuffer,
// 4670                            (uint32_t)&htim->Instance->DMAR, DataLength) != HAL_OK)
// 4671       {
// 4672         /* Return error status */
// 4673         return HAL_ERROR;
// 4674       }
// 4675       break;
// 4676     }
// 4677     case TIM_DMA_TRIGGER:
// 4678     {
// 4679       /* Set the DMA trigger callbacks */
// 4680       htim->hdma[TIM_DMA_ID_TRIGGER]->XferCpltCallback = TIM_DMATriggerCplt;
// 4681       htim->hdma[TIM_DMA_ID_TRIGGER]->XferHalfCpltCallback = TIM_DMATriggerHalfCplt;
// 4682 
// 4683       /* Set the DMA error callback */
// 4684       htim->hdma[TIM_DMA_ID_TRIGGER]->XferErrorCallback = TIM_DMAError ;
// 4685 
// 4686       /* Enable the DMA stream */
// 4687       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_TRIGGER], (uint32_t)BurstBuffer,
// 4688                            (uint32_t)&htim->Instance->DMAR, DataLength) != HAL_OK)
// 4689       {
// 4690         /* Return error status */
// 4691         return HAL_ERROR;
// 4692       }
// 4693       break;
// 4694     }
// 4695     default:
// 4696       status = HAL_ERROR;
// 4697       break;
// 4698   }
// 4699 
// 4700   if (status == HAL_OK)
// 4701   {
// 4702     /* Configure the DMA Burst Mode */
// 4703     htim->Instance->DCR = (BurstBaseAddress | BurstLength);
// 4704     /* Enable the TIM DMA Request */
// 4705     __HAL_TIM_ENABLE_DMA(htim, BurstRequestSrc);
// 4706   }
// 4707 
// 4708   /* Return function status */
// 4709   return status;
// 4710 }
// 4711 
// 4712 /**
// 4713   * @brief  Stops the TIM DMA Burst mode
// 4714   * @param  htim TIM handle
// 4715   * @param  BurstRequestSrc TIM DMA Request sources to disable
// 4716   * @retval HAL status
// 4717   */
// 4718 HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc)
// 4719 {
// 4720   HAL_StatusTypeDef status = HAL_OK;
// 4721 
// 4722   /* Check the parameters */
// 4723   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 4724 
// 4725   /* Abort the DMA transfer (at least disable the DMA stream) */
// 4726   switch (BurstRequestSrc)
// 4727   {
// 4728     case TIM_DMA_UPDATE:
// 4729     {
// 4730       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_UPDATE]);
// 4731       break;
// 4732     }
// 4733     case TIM_DMA_CC1:
// 4734     {
// 4735       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 4736       break;
// 4737     }
// 4738     case TIM_DMA_CC2:
// 4739     {
// 4740       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 4741       break;
// 4742     }
// 4743     case TIM_DMA_CC3:
// 4744     {
// 4745       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 4746       break;
// 4747     }
// 4748     case TIM_DMA_CC4:
// 4749     {
// 4750       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 4751       break;
// 4752     }
// 4753     case TIM_DMA_COM:
// 4754     {
// 4755       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_COMMUTATION]);
// 4756       break;
// 4757     }
// 4758     case TIM_DMA_TRIGGER:
// 4759     {
// 4760       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_TRIGGER]);
// 4761       break;
// 4762     }
// 4763     default:
// 4764       status = HAL_ERROR;
// 4765       break;
// 4766   }
// 4767 
// 4768   if (status == HAL_OK)
// 4769   {
// 4770     /* Disable the TIM Update DMA request */
// 4771     __HAL_TIM_DISABLE_DMA(htim, BurstRequestSrc);
// 4772 
// 4773     /* Change the DMA burst operation state */
// 4774     htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
// 4775   }
// 4776 
// 4777   /* Return function status */
// 4778   return status;
// 4779 }
// 4780 
// 4781 /**
// 4782   * @brief  Configure the DMA Burst to transfer Data from the TIM peripheral to the memory
// 4783   * @param  htim TIM handle
// 4784   * @param  BurstBaseAddress TIM Base address from where the DMA  will start the Data read
// 4785   *         This parameter can be one of the following values:
// 4786   *            @arg TIM_DMABASE_CR1
// 4787   *            @arg TIM_DMABASE_CR2
// 4788   *            @arg TIM_DMABASE_SMCR
// 4789   *            @arg TIM_DMABASE_DIER
// 4790   *            @arg TIM_DMABASE_SR
// 4791   *            @arg TIM_DMABASE_EGR
// 4792   *            @arg TIM_DMABASE_CCMR1
// 4793   *            @arg TIM_DMABASE_CCMR2
// 4794   *            @arg TIM_DMABASE_CCER
// 4795   *            @arg TIM_DMABASE_CNT
// 4796   *            @arg TIM_DMABASE_PSC
// 4797   *            @arg TIM_DMABASE_ARR
// 4798   *            @arg TIM_DMABASE_RCR
// 4799   *            @arg TIM_DMABASE_CCR1
// 4800   *            @arg TIM_DMABASE_CCR2
// 4801   *            @arg TIM_DMABASE_CCR3
// 4802   *            @arg TIM_DMABASE_CCR4
// 4803   *            @arg TIM_DMABASE_BDTR
// 4804   * @param  BurstRequestSrc TIM DMA Request sources
// 4805   *         This parameter can be one of the following values:
// 4806   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 4807   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 4808   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 4809   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 4810   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 4811   *            @arg TIM_DMA_COM: TIM Commutation DMA source
// 4812   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 4813   * @param  BurstBuffer The Buffer address.
// 4814   * @param  BurstLength DMA Burst length. This parameter can be one value
// 4815   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 4816   * @note   This function should be used only when BurstLength is equal to DMA data transfer length.
// 4817   * @retval HAL status
// 4818   */
// 4819 HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
// 4820                                              uint32_t BurstRequestSrc, uint32_t  *BurstBuffer, uint32_t  BurstLength)
// 4821 {
// 4822   HAL_StatusTypeDef status;
// 4823 
// 4824   status = HAL_TIM_DMABurst_MultiReadStart(htim, BurstBaseAddress, BurstRequestSrc, BurstBuffer, BurstLength,
// 4825                                            ((BurstLength) >> 8U) + 1U);
// 4826 
// 4827 
// 4828   return status;
// 4829 }
// 4830 
// 4831 /**
// 4832   * @brief  Configure the DMA Burst to transfer Data from the TIM peripheral to the memory
// 4833   * @param  htim TIM handle
// 4834   * @param  BurstBaseAddress TIM Base address from where the DMA  will start the Data read
// 4835   *         This parameter can be one of the following values:
// 4836   *            @arg TIM_DMABASE_CR1
// 4837   *            @arg TIM_DMABASE_CR2
// 4838   *            @arg TIM_DMABASE_SMCR
// 4839   *            @arg TIM_DMABASE_DIER
// 4840   *            @arg TIM_DMABASE_SR
// 4841   *            @arg TIM_DMABASE_EGR
// 4842   *            @arg TIM_DMABASE_CCMR1
// 4843   *            @arg TIM_DMABASE_CCMR2
// 4844   *            @arg TIM_DMABASE_CCER
// 4845   *            @arg TIM_DMABASE_CNT
// 4846   *            @arg TIM_DMABASE_PSC
// 4847   *            @arg TIM_DMABASE_ARR
// 4848   *            @arg TIM_DMABASE_RCR
// 4849   *            @arg TIM_DMABASE_CCR1
// 4850   *            @arg TIM_DMABASE_CCR2
// 4851   *            @arg TIM_DMABASE_CCR3
// 4852   *            @arg TIM_DMABASE_CCR4
// 4853   *            @arg TIM_DMABASE_BDTR
// 4854   * @param  BurstRequestSrc TIM DMA Request sources
// 4855   *         This parameter can be one of the following values:
// 4856   *            @arg TIM_DMA_UPDATE: TIM update Interrupt source
// 4857   *            @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
// 4858   *            @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
// 4859   *            @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
// 4860   *            @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
// 4861   *            @arg TIM_DMA_COM: TIM Commutation DMA source
// 4862   *            @arg TIM_DMA_TRIGGER: TIM Trigger DMA source
// 4863   * @param  BurstBuffer The Buffer address.
// 4864   * @param  BurstLength DMA Burst length. This parameter can be one value
// 4865   *         between: TIM_DMABURSTLENGTH_1TRANSFER and TIM_DMABURSTLENGTH_18TRANSFERS.
// 4866   * @param  DataLength Data length. This parameter can be one value
// 4867   *         between 1 and 0xFFFF.
// 4868   * @retval HAL status
// 4869   */
// 4870 HAL_StatusTypeDef HAL_TIM_DMABurst_MultiReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress,
// 4871                                                   uint32_t BurstRequestSrc, uint32_t  *BurstBuffer,
// 4872                                                   uint32_t  BurstLength, uint32_t  DataLength)
// 4873 {
// 4874   HAL_StatusTypeDef status = HAL_OK;
// 4875 
// 4876   /* Check the parameters */
// 4877   assert_param(IS_TIM_DMABURST_INSTANCE(htim->Instance));
// 4878   assert_param(IS_TIM_DMA_BASE(BurstBaseAddress));
// 4879   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 4880   assert_param(IS_TIM_DMA_LENGTH(BurstLength));
// 4881   assert_param(IS_TIM_DMA_DATA_LENGTH(DataLength));
// 4882 
// 4883   if (htim->DMABurstState == HAL_DMA_BURST_STATE_BUSY)
// 4884   {
// 4885     return HAL_BUSY;
// 4886   }
// 4887   else if (htim->DMABurstState == HAL_DMA_BURST_STATE_READY)
// 4888   {
// 4889     if ((BurstBuffer == NULL) && (BurstLength > 0U))
// 4890     {
// 4891       return HAL_ERROR;
// 4892     }
// 4893     else
// 4894     {
// 4895       htim->DMABurstState = HAL_DMA_BURST_STATE_BUSY;
// 4896     }
// 4897   }
// 4898   else
// 4899   {
// 4900     /* nothing to do */
// 4901   }
// 4902   switch (BurstRequestSrc)
// 4903   {
// 4904     case TIM_DMA_UPDATE:
// 4905     {
// 4906       /* Set the DMA Period elapsed callbacks */
// 4907       htim->hdma[TIM_DMA_ID_UPDATE]->XferCpltCallback = TIM_DMAPeriodElapsedCplt;
// 4908       htim->hdma[TIM_DMA_ID_UPDATE]->XferHalfCpltCallback = TIM_DMAPeriodElapsedHalfCplt;
// 4909 
// 4910       /* Set the DMA error callback */
// 4911       htim->hdma[TIM_DMA_ID_UPDATE]->XferErrorCallback = TIM_DMAError ;
// 4912 
// 4913       /* Enable the DMA stream */
// 4914       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_UPDATE], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer,
// 4915                            DataLength) != HAL_OK)
// 4916       {
// 4917         /* Return error status */
// 4918         return HAL_ERROR;
// 4919       }
// 4920       break;
// 4921     }
// 4922     case TIM_DMA_CC1:
// 4923     {
// 4924       /* Set the DMA capture callbacks */
// 4925       htim->hdma[TIM_DMA_ID_CC1]->XferCpltCallback = TIM_DMACaptureCplt;
// 4926       htim->hdma[TIM_DMA_ID_CC1]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4927 
// 4928       /* Set the DMA error callback */
// 4929       htim->hdma[TIM_DMA_ID_CC1]->XferErrorCallback = TIM_DMAError ;
// 4930 
// 4931       /* Enable the DMA stream */
// 4932       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC1], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer,
// 4933                            DataLength) != HAL_OK)
// 4934       {
// 4935         /* Return error status */
// 4936         return HAL_ERROR;
// 4937       }
// 4938       break;
// 4939     }
// 4940     case TIM_DMA_CC2:
// 4941     {
// 4942       /* Set the DMA capture callbacks */
// 4943       htim->hdma[TIM_DMA_ID_CC2]->XferCpltCallback = TIM_DMACaptureCplt;
// 4944       htim->hdma[TIM_DMA_ID_CC2]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4945 
// 4946       /* Set the DMA error callback */
// 4947       htim->hdma[TIM_DMA_ID_CC2]->XferErrorCallback = TIM_DMAError ;
// 4948 
// 4949       /* Enable the DMA stream */
// 4950       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC2], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer,
// 4951                            DataLength) != HAL_OK)
// 4952       {
// 4953         /* Return error status */
// 4954         return HAL_ERROR;
// 4955       }
// 4956       break;
// 4957     }
// 4958     case TIM_DMA_CC3:
// 4959     {
// 4960       /* Set the DMA capture callbacks */
// 4961       htim->hdma[TIM_DMA_ID_CC3]->XferCpltCallback = TIM_DMACaptureCplt;
// 4962       htim->hdma[TIM_DMA_ID_CC3]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4963 
// 4964       /* Set the DMA error callback */
// 4965       htim->hdma[TIM_DMA_ID_CC3]->XferErrorCallback = TIM_DMAError ;
// 4966 
// 4967       /* Enable the DMA stream */
// 4968       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC3], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer,
// 4969                            DataLength) != HAL_OK)
// 4970       {
// 4971         /* Return error status */
// 4972         return HAL_ERROR;
// 4973       }
// 4974       break;
// 4975     }
// 4976     case TIM_DMA_CC4:
// 4977     {
// 4978       /* Set the DMA capture callbacks */
// 4979       htim->hdma[TIM_DMA_ID_CC4]->XferCpltCallback = TIM_DMACaptureCplt;
// 4980       htim->hdma[TIM_DMA_ID_CC4]->XferHalfCpltCallback = TIM_DMACaptureHalfCplt;
// 4981 
// 4982       /* Set the DMA error callback */
// 4983       htim->hdma[TIM_DMA_ID_CC4]->XferErrorCallback = TIM_DMAError ;
// 4984 
// 4985       /* Enable the DMA stream */
// 4986       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_CC4], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer,
// 4987                            DataLength) != HAL_OK)
// 4988       {
// 4989         /* Return error status */
// 4990         return HAL_ERROR;
// 4991       }
// 4992       break;
// 4993     }
// 4994     case TIM_DMA_COM:
// 4995     {
// 4996       /* Set the DMA commutation callbacks */
// 4997       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferCpltCallback =  TIMEx_DMACommutationCplt;
// 4998       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferHalfCpltCallback =  TIMEx_DMACommutationHalfCplt;
// 4999 
// 5000       /* Set the DMA error callback */
// 5001       htim->hdma[TIM_DMA_ID_COMMUTATION]->XferErrorCallback = TIM_DMAError ;
// 5002 
// 5003       /* Enable the DMA stream */
// 5004       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_COMMUTATION], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer,
// 5005                            DataLength) != HAL_OK)
// 5006       {
// 5007         /* Return error status */
// 5008         return HAL_ERROR;
// 5009       }
// 5010       break;
// 5011     }
// 5012     case TIM_DMA_TRIGGER:
// 5013     {
// 5014       /* Set the DMA trigger callbacks */
// 5015       htim->hdma[TIM_DMA_ID_TRIGGER]->XferCpltCallback = TIM_DMATriggerCplt;
// 5016       htim->hdma[TIM_DMA_ID_TRIGGER]->XferHalfCpltCallback = TIM_DMATriggerHalfCplt;
// 5017 
// 5018       /* Set the DMA error callback */
// 5019       htim->hdma[TIM_DMA_ID_TRIGGER]->XferErrorCallback = TIM_DMAError ;
// 5020 
// 5021       /* Enable the DMA stream */
// 5022       if (HAL_DMA_Start_IT(htim->hdma[TIM_DMA_ID_TRIGGER], (uint32_t)&htim->Instance->DMAR, (uint32_t)BurstBuffer,
// 5023                            DataLength) != HAL_OK)
// 5024       {
// 5025         /* Return error status */
// 5026         return HAL_ERROR;
// 5027       }
// 5028       break;
// 5029     }
// 5030     default:
// 5031       status = HAL_ERROR;
// 5032       break;
// 5033   }
// 5034 
// 5035   if (status == HAL_OK)
// 5036   {
// 5037     /* Configure the DMA Burst Mode */
// 5038     htim->Instance->DCR = (BurstBaseAddress | BurstLength);
// 5039 
// 5040     /* Enable the TIM DMA Request */
// 5041     __HAL_TIM_ENABLE_DMA(htim, BurstRequestSrc);
// 5042   }
// 5043 
// 5044   /* Return function status */
// 5045   return status;
// 5046 }
// 5047 
// 5048 /**
// 5049   * @brief  Stop the DMA burst reading
// 5050   * @param  htim TIM handle
// 5051   * @param  BurstRequestSrc TIM DMA Request sources to disable.
// 5052   * @retval HAL status
// 5053   */
// 5054 HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc)
// 5055 {
// 5056   HAL_StatusTypeDef status = HAL_OK;
// 5057 
// 5058   /* Check the parameters */
// 5059   assert_param(IS_TIM_DMA_SOURCE(BurstRequestSrc));
// 5060 
// 5061   /* Abort the DMA transfer (at least disable the DMA stream) */
// 5062   switch (BurstRequestSrc)
// 5063   {
// 5064     case TIM_DMA_UPDATE:
// 5065     {
// 5066       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_UPDATE]);
// 5067       break;
// 5068     }
// 5069     case TIM_DMA_CC1:
// 5070     {
// 5071       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC1]);
// 5072       break;
// 5073     }
// 5074     case TIM_DMA_CC2:
// 5075     {
// 5076       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC2]);
// 5077       break;
// 5078     }
// 5079     case TIM_DMA_CC3:
// 5080     {
// 5081       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC3]);
// 5082       break;
// 5083     }
// 5084     case TIM_DMA_CC4:
// 5085     {
// 5086       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_CC4]);
// 5087       break;
// 5088     }
// 5089     case TIM_DMA_COM:
// 5090     {
// 5091       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_COMMUTATION]);
// 5092       break;
// 5093     }
// 5094     case TIM_DMA_TRIGGER:
// 5095     {
// 5096       (void)HAL_DMA_Abort_IT(htim->hdma[TIM_DMA_ID_TRIGGER]);
// 5097       break;
// 5098     }
// 5099     default:
// 5100       status = HAL_ERROR;
// 5101       break;
// 5102   }
// 5103 
// 5104   if (status == HAL_OK)
// 5105   {
// 5106     /* Disable the TIM Update DMA request */
// 5107     __HAL_TIM_DISABLE_DMA(htim, BurstRequestSrc);
// 5108 
// 5109     /* Change the DMA burst operation state */
// 5110     htim->DMABurstState = HAL_DMA_BURST_STATE_READY;
// 5111   }
// 5112 
// 5113   /* Return function status */
// 5114   return status;
// 5115 }
// 5116 
// 5117 /**
// 5118   * @brief  Generate a software event
// 5119   * @param  htim TIM handle
// 5120   * @param  EventSource specifies the event source.
// 5121   *          This parameter can be one of the following values:
// 5122   *            @arg TIM_EVENTSOURCE_UPDATE: Timer update Event source
// 5123   *            @arg TIM_EVENTSOURCE_CC1: Timer Capture Compare 1 Event source
// 5124   *            @arg TIM_EVENTSOURCE_CC2: Timer Capture Compare 2 Event source
// 5125   *            @arg TIM_EVENTSOURCE_CC3: Timer Capture Compare 3 Event source
// 5126   *            @arg TIM_EVENTSOURCE_CC4: Timer Capture Compare 4 Event source
// 5127   *            @arg TIM_EVENTSOURCE_COM: Timer COM event source
// 5128   *            @arg TIM_EVENTSOURCE_TRIGGER: Timer Trigger Event source
// 5129   *            @arg TIM_EVENTSOURCE_BREAK: Timer Break event source
// 5130   * @note   Basic timers can only generate an update event.
// 5131   * @note   TIM_EVENTSOURCE_COM is relevant only with advanced timer instances.
// 5132   * @note   TIM_EVENTSOURCE_BREAK are relevant only for timer instances
// 5133   *         supporting a break input.
// 5134   * @retval HAL status
// 5135   */
// 5136 
// 5137 HAL_StatusTypeDef HAL_TIM_GenerateEvent(TIM_HandleTypeDef *htim, uint32_t EventSource)
// 5138 {
// 5139   /* Check the parameters */
// 5140   assert_param(IS_TIM_INSTANCE(htim->Instance));
// 5141   assert_param(IS_TIM_EVENT_SOURCE(EventSource));
// 5142 
// 5143   /* Process Locked */
// 5144   __HAL_LOCK(htim);
// 5145 
// 5146   /* Change the TIM state */
// 5147   htim->State = HAL_TIM_STATE_BUSY;
// 5148 
// 5149   /* Set the event sources */
// 5150   htim->Instance->EGR = EventSource;
// 5151 
// 5152   /* Change the TIM state */
// 5153   htim->State = HAL_TIM_STATE_READY;
// 5154 
// 5155   __HAL_UNLOCK(htim);
// 5156 
// 5157   /* Return function status */
// 5158   return HAL_OK;
// 5159 }
// 5160 
// 5161 /**
// 5162   * @brief  Configures the OCRef clear feature
// 5163   * @param  htim TIM handle
// 5164   * @param  sClearInputConfig pointer to a TIM_ClearInputConfigTypeDef structure that
// 5165   *         contains the OCREF clear feature and parameters for the TIM peripheral.
// 5166   * @param  Channel specifies the TIM Channel
// 5167   *          This parameter can be one of the following values:
// 5168   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 5169   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 5170   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 5171   *            @arg TIM_CHANNEL_4: TIM Channel 4
// 5172   * @retval HAL status
// 5173   */
// 5174 HAL_StatusTypeDef HAL_TIM_ConfigOCrefClear(TIM_HandleTypeDef *htim,
// 5175                                            const TIM_ClearInputConfigTypeDef *sClearInputConfig,
// 5176                                            uint32_t Channel)
// 5177 {
// 5178   HAL_StatusTypeDef status = HAL_OK;
// 5179 
// 5180   /* Check the parameters */
// 5181   assert_param(IS_TIM_OCXREF_CLEAR_INSTANCE(htim->Instance));
// 5182   assert_param(IS_TIM_CLEARINPUT_SOURCE(sClearInputConfig->ClearInputSource));
// 5183 
// 5184   /* Process Locked */
// 5185   __HAL_LOCK(htim);
// 5186 
// 5187   htim->State = HAL_TIM_STATE_BUSY;
// 5188 
// 5189   switch (sClearInputConfig->ClearInputSource)
// 5190   {
// 5191     case TIM_CLEARINPUTSOURCE_NONE:
// 5192     {
// 5193       /* Clear the OCREF clear selection bit and the the ETR Bits */
// 5194       CLEAR_BIT(htim->Instance->SMCR, (TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP));
// 5195       break;
// 5196     }
// 5197 
// 5198     case TIM_CLEARINPUTSOURCE_ETR:
// 5199     {
// 5200       /* Check the parameters */
// 5201       assert_param(IS_TIM_CLEARINPUT_POLARITY(sClearInputConfig->ClearInputPolarity));
// 5202       assert_param(IS_TIM_CLEARINPUT_PRESCALER(sClearInputConfig->ClearInputPrescaler));
// 5203       assert_param(IS_TIM_CLEARINPUT_FILTER(sClearInputConfig->ClearInputFilter));
// 5204 
// 5205       /* When OCRef clear feature is used with ETR source, ETR prescaler must be off */
// 5206       if (sClearInputConfig->ClearInputPrescaler != TIM_CLEARINPUTPRESCALER_DIV1)
// 5207       {
// 5208         htim->State = HAL_TIM_STATE_READY;
// 5209         __HAL_UNLOCK(htim);
// 5210         return HAL_ERROR;
// 5211       }
// 5212 
// 5213       TIM_ETR_SetConfig(htim->Instance,
// 5214                         sClearInputConfig->ClearInputPrescaler,
// 5215                         sClearInputConfig->ClearInputPolarity,
// 5216                         sClearInputConfig->ClearInputFilter);
// 5217       break;
// 5218     }
// 5219 
// 5220     default:
// 5221       status = HAL_ERROR;
// 5222       break;
// 5223   }
// 5224 
// 5225   if (status == HAL_OK)
// 5226   {
// 5227     switch (Channel)
// 5228     {
// 5229       case TIM_CHANNEL_1:
// 5230       {
// 5231         if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 5232         {
// 5233           /* Enable the OCREF clear feature for Channel 1 */
// 5234           SET_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC1CE);
// 5235         }
// 5236         else
// 5237         {
// 5238           /* Disable the OCREF clear feature for Channel 1 */
// 5239           CLEAR_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC1CE);
// 5240         }
// 5241         break;
// 5242       }
// 5243       case TIM_CHANNEL_2:
// 5244       {
// 5245         if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 5246         {
// 5247           /* Enable the OCREF clear feature for Channel 2 */
// 5248           SET_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC2CE);
// 5249         }
// 5250         else
// 5251         {
// 5252           /* Disable the OCREF clear feature for Channel 2 */
// 5253           CLEAR_BIT(htim->Instance->CCMR1, TIM_CCMR1_OC2CE);
// 5254         }
// 5255         break;
// 5256       }
// 5257       case TIM_CHANNEL_3:
// 5258       {
// 5259         if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 5260         {
// 5261           /* Enable the OCREF clear feature for Channel 3 */
// 5262           SET_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC3CE);
// 5263         }
// 5264         else
// 5265         {
// 5266           /* Disable the OCREF clear feature for Channel 3 */
// 5267           CLEAR_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC3CE);
// 5268         }
// 5269         break;
// 5270       }
// 5271       case TIM_CHANNEL_4:
// 5272       {
// 5273         if (sClearInputConfig->ClearInputState != (uint32_t)DISABLE)
// 5274         {
// 5275           /* Enable the OCREF clear feature for Channel 4 */
// 5276           SET_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC4CE);
// 5277         }
// 5278         else
// 5279         {
// 5280           /* Disable the OCREF clear feature for Channel 4 */
// 5281           CLEAR_BIT(htim->Instance->CCMR2, TIM_CCMR2_OC4CE);
// 5282         }
// 5283         break;
// 5284       }
// 5285       default:
// 5286         break;
// 5287     }
// 5288   }
// 5289 
// 5290   htim->State = HAL_TIM_STATE_READY;
// 5291 
// 5292   __HAL_UNLOCK(htim);
// 5293 
// 5294   return status;
// 5295 }
// 5296 
// 5297 /**
// 5298   * @brief   Configures the clock source to be used
// 5299   * @param  htim TIM handle
// 5300   * @param  sClockSourceConfig pointer to a TIM_ClockConfigTypeDef structure that
// 5301   *         contains the clock source information for the TIM peripheral.
// 5302   * @retval HAL status
// 5303   */
// 5304 HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, const TIM_ClockConfigTypeDef *sClockSourceConfig)
// 5305 {
// 5306   HAL_StatusTypeDef status = HAL_OK;
// 5307   uint32_t tmpsmcr;
// 5308 
// 5309   /* Process Locked */
// 5310   __HAL_LOCK(htim);
// 5311 
// 5312   htim->State = HAL_TIM_STATE_BUSY;
// 5313 
// 5314   /* Check the parameters */
// 5315   assert_param(IS_TIM_CLOCKSOURCE(sClockSourceConfig->ClockSource));
// 5316 
// 5317   /* Reset the SMS, TS, ECE, ETPS and ETRF bits */
// 5318   tmpsmcr = htim->Instance->SMCR;
// 5319   tmpsmcr &= ~(TIM_SMCR_SMS | TIM_SMCR_TS);
// 5320   tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
// 5321   htim->Instance->SMCR = tmpsmcr;
// 5322 
// 5323   switch (sClockSourceConfig->ClockSource)
// 5324   {
// 5325     case TIM_CLOCKSOURCE_INTERNAL:
// 5326     {
// 5327       assert_param(IS_TIM_INSTANCE(htim->Instance));
// 5328       break;
// 5329     }
// 5330 
// 5331     case TIM_CLOCKSOURCE_ETRMODE1:
// 5332     {
// 5333       /* Check whether or not the timer instance supports external trigger input mode 1 (ETRF)*/
// 5334       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE1_INSTANCE(htim->Instance));
// 5335 
// 5336       /* Check ETR input conditioning related parameters */
// 5337       assert_param(IS_TIM_CLOCKPRESCALER(sClockSourceConfig->ClockPrescaler));
// 5338       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 5339       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 5340 
// 5341       /* Configure the ETR Clock source */
// 5342       TIM_ETR_SetConfig(htim->Instance,
// 5343                         sClockSourceConfig->ClockPrescaler,
// 5344                         sClockSourceConfig->ClockPolarity,
// 5345                         sClockSourceConfig->ClockFilter);
// 5346 
// 5347       /* Select the External clock mode1 and the ETRF trigger */
// 5348       tmpsmcr = htim->Instance->SMCR;
// 5349       tmpsmcr |= (TIM_SLAVEMODE_EXTERNAL1 | TIM_CLOCKSOURCE_ETRMODE1);
// 5350       /* Write to TIMx SMCR */
// 5351       htim->Instance->SMCR = tmpsmcr;
// 5352       break;
// 5353     }
// 5354 
// 5355     case TIM_CLOCKSOURCE_ETRMODE2:
// 5356     {
// 5357       /* Check whether or not the timer instance supports external trigger input mode 2 (ETRF)*/
// 5358       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE2_INSTANCE(htim->Instance));
// 5359 
// 5360       /* Check ETR input conditioning related parameters */
// 5361       assert_param(IS_TIM_CLOCKPRESCALER(sClockSourceConfig->ClockPrescaler));
// 5362       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 5363       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 5364 
// 5365       /* Configure the ETR Clock source */
// 5366       TIM_ETR_SetConfig(htim->Instance,
// 5367                         sClockSourceConfig->ClockPrescaler,
// 5368                         sClockSourceConfig->ClockPolarity,
// 5369                         sClockSourceConfig->ClockFilter);
// 5370       /* Enable the External clock mode2 */
// 5371       htim->Instance->SMCR |= TIM_SMCR_ECE;
// 5372       break;
// 5373     }
// 5374 
// 5375     case TIM_CLOCKSOURCE_TI1:
// 5376     {
// 5377       /* Check whether or not the timer instance supports external clock mode 1 */
// 5378       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 5379 
// 5380       /* Check TI1 input conditioning related parameters */
// 5381       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 5382       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 5383 
// 5384       TIM_TI1_ConfigInputStage(htim->Instance,
// 5385                                sClockSourceConfig->ClockPolarity,
// 5386                                sClockSourceConfig->ClockFilter);
// 5387       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1);
// 5388       break;
// 5389     }
// 5390 
// 5391     case TIM_CLOCKSOURCE_TI2:
// 5392     {
// 5393       /* Check whether or not the timer instance supports external clock mode 1 (ETRF)*/
// 5394       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 5395 
// 5396       /* Check TI2 input conditioning related parameters */
// 5397       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 5398       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 5399 
// 5400       TIM_TI2_ConfigInputStage(htim->Instance,
// 5401                                sClockSourceConfig->ClockPolarity,
// 5402                                sClockSourceConfig->ClockFilter);
// 5403       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI2);
// 5404       break;
// 5405     }
// 5406 
// 5407     case TIM_CLOCKSOURCE_TI1ED:
// 5408     {
// 5409       /* Check whether or not the timer instance supports external clock mode 1 */
// 5410       assert_param(IS_TIM_CLOCKSOURCE_TIX_INSTANCE(htim->Instance));
// 5411 
// 5412       /* Check TI1 input conditioning related parameters */
// 5413       assert_param(IS_TIM_CLOCKPOLARITY(sClockSourceConfig->ClockPolarity));
// 5414       assert_param(IS_TIM_CLOCKFILTER(sClockSourceConfig->ClockFilter));
// 5415 
// 5416       TIM_TI1_ConfigInputStage(htim->Instance,
// 5417                                sClockSourceConfig->ClockPolarity,
// 5418                                sClockSourceConfig->ClockFilter);
// 5419       TIM_ITRx_SetConfig(htim->Instance, TIM_CLOCKSOURCE_TI1ED);
// 5420       break;
// 5421     }
// 5422 
// 5423     case TIM_CLOCKSOURCE_ITR0:
// 5424     case TIM_CLOCKSOURCE_ITR1:
// 5425     case TIM_CLOCKSOURCE_ITR2:
// 5426     case TIM_CLOCKSOURCE_ITR3:
// 5427     {
// 5428       /* Check whether or not the timer instance supports internal trigger input */
// 5429       assert_param(IS_TIM_CLOCKSOURCE_ITRX_INSTANCE(htim->Instance));
// 5430 
// 5431       TIM_ITRx_SetConfig(htim->Instance, sClockSourceConfig->ClockSource);
// 5432       break;
// 5433     }
// 5434 
// 5435     default:
// 5436       status = HAL_ERROR;
// 5437       break;
// 5438   }
// 5439   htim->State = HAL_TIM_STATE_READY;
// 5440 
// 5441   __HAL_UNLOCK(htim);
// 5442 
// 5443   return status;
// 5444 }
// 5445 
// 5446 /**
// 5447   * @brief  Selects the signal connected to the TI1 input: direct from CH1_input
// 5448   *         or a XOR combination between CH1_input, CH2_input & CH3_input
// 5449   * @param  htim TIM handle.
// 5450   * @param  TI1_Selection Indicate whether or not channel 1 is connected to the
// 5451   *         output of a XOR gate.
// 5452   *          This parameter can be one of the following values:
// 5453   *            @arg TIM_TI1SELECTION_CH1: The TIMx_CH1 pin is connected to TI1 input
// 5454   *            @arg TIM_TI1SELECTION_XORCOMBINATION: The TIMx_CH1, CH2 and CH3
// 5455   *            pins are connected to the TI1 input (XOR combination)
// 5456   * @retval HAL status
// 5457   */
// 5458 HAL_StatusTypeDef HAL_TIM_ConfigTI1Input(TIM_HandleTypeDef *htim, uint32_t TI1_Selection)
// 5459 {
// 5460   uint32_t tmpcr2;
// 5461 
// 5462   /* Check the parameters */
// 5463   assert_param(IS_TIM_XOR_INSTANCE(htim->Instance));
// 5464   assert_param(IS_TIM_TI1SELECTION(TI1_Selection));
// 5465 
// 5466   /* Get the TIMx CR2 register value */
// 5467   tmpcr2 = htim->Instance->CR2;
// 5468 
// 5469   /* Reset the TI1 selection */
// 5470   tmpcr2 &= ~TIM_CR2_TI1S;
// 5471 
// 5472   /* Set the TI1 selection */
// 5473   tmpcr2 |= TI1_Selection;
// 5474 
// 5475   /* Write to TIMxCR2 */
// 5476   htim->Instance->CR2 = tmpcr2;
// 5477 
// 5478   return HAL_OK;
// 5479 }
// 5480 
// 5481 /**
// 5482   * @brief  Configures the TIM in Slave mode
// 5483   * @param  htim TIM handle.
// 5484   * @param  sSlaveConfig pointer to a TIM_SlaveConfigTypeDef structure that
// 5485   *         contains the selected trigger (internal trigger input, filtered
// 5486   *         timer input or external trigger input) and the Slave mode
// 5487   *         (Disable, Reset, Gated, Trigger, External clock mode 1).
// 5488   * @retval HAL status
// 5489   */
// 5490 HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro(TIM_HandleTypeDef *htim, const TIM_SlaveConfigTypeDef *sSlaveConfig)
// 5491 {
// 5492   /* Check the parameters */
// 5493   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
// 5494   assert_param(IS_TIM_SLAVE_MODE(sSlaveConfig->SlaveMode));
// 5495   assert_param(IS_TIM_TRIGGER_SELECTION(sSlaveConfig->InputTrigger));
// 5496 
// 5497   __HAL_LOCK(htim);
// 5498 
// 5499   htim->State = HAL_TIM_STATE_BUSY;
// 5500 
// 5501   if (TIM_SlaveTimer_SetConfig(htim, sSlaveConfig) != HAL_OK)
// 5502   {
// 5503     htim->State = HAL_TIM_STATE_READY;
// 5504     __HAL_UNLOCK(htim);
// 5505     return HAL_ERROR;
// 5506   }
// 5507 
// 5508   /* Disable Trigger Interrupt */
// 5509   __HAL_TIM_DISABLE_IT(htim, TIM_IT_TRIGGER);
// 5510 
// 5511   /* Disable Trigger DMA request */
// 5512   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
// 5513 
// 5514   htim->State = HAL_TIM_STATE_READY;
// 5515 
// 5516   __HAL_UNLOCK(htim);
// 5517 
// 5518   return HAL_OK;
// 5519 }
// 5520 
// 5521 /**
// 5522   * @brief  Configures the TIM in Slave mode in interrupt mode
// 5523   * @param  htim TIM handle.
// 5524   * @param  sSlaveConfig pointer to a TIM_SlaveConfigTypeDef structure that
// 5525   *         contains the selected trigger (internal trigger input, filtered
// 5526   *         timer input or external trigger input) and the Slave mode
// 5527   *         (Disable, Reset, Gated, Trigger, External clock mode 1).
// 5528   * @retval HAL status
// 5529   */
// 5530 HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro_IT(TIM_HandleTypeDef *htim,
// 5531                                                 const TIM_SlaveConfigTypeDef *sSlaveConfig)
// 5532 {
// 5533   /* Check the parameters */
// 5534   assert_param(IS_TIM_SLAVE_INSTANCE(htim->Instance));
// 5535   assert_param(IS_TIM_SLAVE_MODE(sSlaveConfig->SlaveMode));
// 5536   assert_param(IS_TIM_TRIGGER_SELECTION(sSlaveConfig->InputTrigger));
// 5537 
// 5538   __HAL_LOCK(htim);
// 5539 
// 5540   htim->State = HAL_TIM_STATE_BUSY;
// 5541 
// 5542   if (TIM_SlaveTimer_SetConfig(htim, sSlaveConfig) != HAL_OK)
// 5543   {
// 5544     htim->State = HAL_TIM_STATE_READY;
// 5545     __HAL_UNLOCK(htim);
// 5546     return HAL_ERROR;
// 5547   }
// 5548 
// 5549   /* Enable Trigger Interrupt */
// 5550   __HAL_TIM_ENABLE_IT(htim, TIM_IT_TRIGGER);
// 5551 
// 5552   /* Disable Trigger DMA request */
// 5553   __HAL_TIM_DISABLE_DMA(htim, TIM_DMA_TRIGGER);
// 5554 
// 5555   htim->State = HAL_TIM_STATE_READY;
// 5556 
// 5557   __HAL_UNLOCK(htim);
// 5558 
// 5559   return HAL_OK;
// 5560 }
// 5561 
// 5562 /**
// 5563   * @brief  Read the captured value from Capture Compare unit
// 5564   * @param  htim TIM handle.
// 5565   * @param  Channel TIM Channels to be enabled
// 5566   *          This parameter can be one of the following values:
// 5567   *            @arg TIM_CHANNEL_1: TIM Channel 1 selected
// 5568   *            @arg TIM_CHANNEL_2: TIM Channel 2 selected
// 5569   *            @arg TIM_CHANNEL_3: TIM Channel 3 selected
// 5570   *            @arg TIM_CHANNEL_4: TIM Channel 4 selected
// 5571   * @retval Captured value
// 5572   */
// 5573 uint32_t HAL_TIM_ReadCapturedValue(const TIM_HandleTypeDef *htim, uint32_t Channel)
// 5574 {
// 5575   uint32_t tmpreg = 0U;
// 5576 
// 5577   switch (Channel)
// 5578   {
// 5579     case TIM_CHANNEL_1:
// 5580     {
// 5581       /* Check the parameters */
// 5582       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 5583 
// 5584       /* Return the capture 1 value */
// 5585       tmpreg =  htim->Instance->CCR1;
// 5586 
// 5587       break;
// 5588     }
// 5589     case TIM_CHANNEL_2:
// 5590     {
// 5591       /* Check the parameters */
// 5592       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 5593 
// 5594       /* Return the capture 2 value */
// 5595       tmpreg =   htim->Instance->CCR2;
// 5596 
// 5597       break;
// 5598     }
// 5599 
// 5600     case TIM_CHANNEL_3:
// 5601     {
// 5602       /* Check the parameters */
// 5603       assert_param(IS_TIM_CC3_INSTANCE(htim->Instance));
// 5604 
// 5605       /* Return the capture 3 value */
// 5606       tmpreg =   htim->Instance->CCR3;
// 5607 
// 5608       break;
// 5609     }
// 5610 
// 5611     case TIM_CHANNEL_4:
// 5612     {
// 5613       /* Check the parameters */
// 5614       assert_param(IS_TIM_CC4_INSTANCE(htim->Instance));
// 5615 
// 5616       /* Return the capture 4 value */
// 5617       tmpreg =   htim->Instance->CCR4;
// 5618 
// 5619       break;
// 5620     }
// 5621 
// 5622     default:
// 5623       break;
// 5624   }
// 5625 
// 5626   return tmpreg;
// 5627 }
// 5628 
// 5629 /**
// 5630   * @}
// 5631   */
// 5632 
// 5633 /** @defgroup TIM_Exported_Functions_Group9 TIM Callbacks functions
// 5634   *  @brief    TIM Callbacks functions
// 5635   *
// 5636 @verbatim
// 5637   ==============================================================================
// 5638                         ##### TIM Callbacks functions #####
// 5639   ==============================================================================
// 5640  [..]
// 5641    This section provides TIM callback functions:
// 5642    (+) TIM Period elapsed callback
// 5643    (+) TIM Output Compare callback
// 5644    (+) TIM Input capture callback
// 5645    (+) TIM Trigger callback
// 5646    (+) TIM Error callback
// 5647 
// 5648 @endverbatim
// 5649   * @{
// 5650   */
// 5651 
// 5652 /**
// 5653   * @brief  Period elapsed callback in non-blocking mode
// 5654   * @param  htim TIM handle
// 5655   * @retval None
// 5656   */
// 5657 __weak void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
// 5658 {
// 5659   /* Prevent unused argument(s) compilation warning */
// 5660   UNUSED(htim);
// 5661 
// 5662   /* NOTE : This function should not be modified, when the callback is needed,
// 5663             the HAL_TIM_PeriodElapsedCallback could be implemented in the user file
// 5664    */
// 5665 }
// 5666 
// 5667 /**
// 5668   * @brief  Period elapsed half complete callback in non-blocking mode
// 5669   * @param  htim TIM handle
// 5670   * @retval None
// 5671   */
// 5672 __weak void HAL_TIM_PeriodElapsedHalfCpltCallback(TIM_HandleTypeDef *htim)
// 5673 {
// 5674   /* Prevent unused argument(s) compilation warning */
// 5675   UNUSED(htim);
// 5676 
// 5677   /* NOTE : This function should not be modified, when the callback is needed,
// 5678             the HAL_TIM_PeriodElapsedHalfCpltCallback could be implemented in the user file
// 5679    */
// 5680 }
// 5681 
// 5682 /**
// 5683   * @brief  Output Compare callback in non-blocking mode
// 5684   * @param  htim TIM OC handle
// 5685   * @retval None
// 5686   */
// 5687 __weak void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim)
// 5688 {
// 5689   /* Prevent unused argument(s) compilation warning */
// 5690   UNUSED(htim);
// 5691 
// 5692   /* NOTE : This function should not be modified, when the callback is needed,
// 5693             the HAL_TIM_OC_DelayElapsedCallback could be implemented in the user file
// 5694    */
// 5695 }
// 5696 
// 5697 /**
// 5698   * @brief  Input Capture callback in non-blocking mode
// 5699   * @param  htim TIM IC handle
// 5700   * @retval None
// 5701   */
// 5702 __weak void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
// 5703 {
// 5704   /* Prevent unused argument(s) compilation warning */
// 5705   UNUSED(htim);
// 5706 
// 5707   /* NOTE : This function should not be modified, when the callback is needed,
// 5708             the HAL_TIM_IC_CaptureCallback could be implemented in the user file
// 5709    */
// 5710 }
// 5711 
// 5712 /**
// 5713   * @brief  Input Capture half complete callback in non-blocking mode
// 5714   * @param  htim TIM IC handle
// 5715   * @retval None
// 5716   */
// 5717 __weak void HAL_TIM_IC_CaptureHalfCpltCallback(TIM_HandleTypeDef *htim)
// 5718 {
// 5719   /* Prevent unused argument(s) compilation warning */
// 5720   UNUSED(htim);
// 5721 
// 5722   /* NOTE : This function should not be modified, when the callback is needed,
// 5723             the HAL_TIM_IC_CaptureHalfCpltCallback could be implemented in the user file
// 5724    */
// 5725 }
// 5726 
// 5727 /**
// 5728   * @brief  PWM Pulse finished callback in non-blocking mode
// 5729   * @param  htim TIM handle
// 5730   * @retval None
// 5731   */
// 5732 __weak void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim)
// 5733 {
// 5734   /* Prevent unused argument(s) compilation warning */
// 5735   UNUSED(htim);
// 5736 
// 5737   /* NOTE : This function should not be modified, when the callback is needed,
// 5738             the HAL_TIM_PWM_PulseFinishedCallback could be implemented in the user file
// 5739    */
// 5740 }
// 5741 
// 5742 /**
// 5743   * @brief  PWM Pulse finished half complete callback in non-blocking mode
// 5744   * @param  htim TIM handle
// 5745   * @retval None
// 5746   */
// 5747 __weak void HAL_TIM_PWM_PulseFinishedHalfCpltCallback(TIM_HandleTypeDef *htim)
// 5748 {
// 5749   /* Prevent unused argument(s) compilation warning */
// 5750   UNUSED(htim);
// 5751 
// 5752   /* NOTE : This function should not be modified, when the callback is needed,
// 5753             the HAL_TIM_PWM_PulseFinishedHalfCpltCallback could be implemented in the user file
// 5754    */
// 5755 }
// 5756 
// 5757 /**
// 5758   * @brief  Hall Trigger detection callback in non-blocking mode
// 5759   * @param  htim TIM handle
// 5760   * @retval None
// 5761   */
// 5762 __weak void HAL_TIM_TriggerCallback(TIM_HandleTypeDef *htim)
// 5763 {
// 5764   /* Prevent unused argument(s) compilation warning */
// 5765   UNUSED(htim);
// 5766 
// 5767   /* NOTE : This function should not be modified, when the callback is needed,
// 5768             the HAL_TIM_TriggerCallback could be implemented in the user file
// 5769    */
// 5770 }
// 5771 
// 5772 /**
// 5773   * @brief  Hall Trigger detection half complete callback in non-blocking mode
// 5774   * @param  htim TIM handle
// 5775   * @retval None
// 5776   */
// 5777 __weak void HAL_TIM_TriggerHalfCpltCallback(TIM_HandleTypeDef *htim)
// 5778 {
// 5779   /* Prevent unused argument(s) compilation warning */
// 5780   UNUSED(htim);
// 5781 
// 5782   /* NOTE : This function should not be modified, when the callback is needed,
// 5783             the HAL_TIM_TriggerHalfCpltCallback could be implemented in the user file
// 5784    */
// 5785 }
// 5786 
// 5787 /**
// 5788   * @brief  Timer error callback in non-blocking mode
// 5789   * @param  htim TIM handle
// 5790   * @retval None
// 5791   */
// 5792 __weak void HAL_TIM_ErrorCallback(TIM_HandleTypeDef *htim)
// 5793 {
// 5794   /* Prevent unused argument(s) compilation warning */
// 5795   UNUSED(htim);
// 5796 
// 5797   /* NOTE : This function should not be modified, when the callback is needed,
// 5798             the HAL_TIM_ErrorCallback could be implemented in the user file
// 5799    */
// 5800 }
// 5801 
// 5802 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 5803 /**
// 5804   * @brief  Register a User TIM callback to be used instead of the weak predefined callback
// 5805   * @param htim tim handle
// 5806   * @param CallbackID ID of the callback to be registered
// 5807   *        This parameter can be one of the following values:
// 5808   *          @arg @ref HAL_TIM_BASE_MSPINIT_CB_ID Base MspInit Callback ID
// 5809   *          @arg @ref HAL_TIM_BASE_MSPDEINIT_CB_ID Base MspDeInit Callback ID
// 5810   *          @arg @ref HAL_TIM_IC_MSPINIT_CB_ID IC MspInit Callback ID
// 5811   *          @arg @ref HAL_TIM_IC_MSPDEINIT_CB_ID IC MspDeInit Callback ID
// 5812   *          @arg @ref HAL_TIM_OC_MSPINIT_CB_ID OC MspInit Callback ID
// 5813   *          @arg @ref HAL_TIM_OC_MSPDEINIT_CB_ID OC MspDeInit Callback ID
// 5814   *          @arg @ref HAL_TIM_PWM_MSPINIT_CB_ID PWM MspInit Callback ID
// 5815   *          @arg @ref HAL_TIM_PWM_MSPDEINIT_CB_ID PWM MspDeInit Callback ID
// 5816   *          @arg @ref HAL_TIM_ONE_PULSE_MSPINIT_CB_ID One Pulse MspInit Callback ID
// 5817   *          @arg @ref HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID One Pulse MspDeInit Callback ID
// 5818   *          @arg @ref HAL_TIM_ENCODER_MSPINIT_CB_ID Encoder MspInit Callback ID
// 5819   *          @arg @ref HAL_TIM_ENCODER_MSPDEINIT_CB_ID Encoder MspDeInit Callback ID
// 5820   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID Hall Sensor MspInit Callback ID
// 5821   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID Hall Sensor MspDeInit Callback ID
// 5822   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_CB_ID Period Elapsed Callback ID
// 5823   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID Period Elapsed half complete Callback ID
// 5824   *          @arg @ref HAL_TIM_TRIGGER_CB_ID Trigger Callback ID
// 5825   *          @arg @ref HAL_TIM_TRIGGER_HALF_CB_ID Trigger half complete Callback ID
// 5826   *          @arg @ref HAL_TIM_IC_CAPTURE_CB_ID Input Capture Callback ID
// 5827   *          @arg @ref HAL_TIM_IC_CAPTURE_HALF_CB_ID Input Capture half complete Callback ID
// 5828   *          @arg @ref HAL_TIM_OC_DELAY_ELAPSED_CB_ID Output Compare Delay Elapsed Callback ID
// 5829   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_CB_ID PWM Pulse Finished Callback ID
// 5830   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID PWM Pulse Finished half complete Callback ID
// 5831   *          @arg @ref HAL_TIM_ERROR_CB_ID Error Callback ID
// 5832   *          @arg @ref HAL_TIM_COMMUTATION_CB_ID Commutation Callback ID
// 5833   *          @arg @ref HAL_TIM_COMMUTATION_HALF_CB_ID Commutation half complete Callback ID
// 5834   *          @arg @ref HAL_TIM_BREAK_CB_ID Break Callback ID
// 5835   *          @param pCallback pointer to the callback function
// 5836   *          @retval status
// 5837   */
// 5838 HAL_StatusTypeDef HAL_TIM_RegisterCallback(TIM_HandleTypeDef *htim, HAL_TIM_CallbackIDTypeDef CallbackID,
// 5839                                            pTIM_CallbackTypeDef pCallback)
// 5840 {
// 5841   HAL_StatusTypeDef status = HAL_OK;
// 5842 
// 5843   if (pCallback == NULL)
// 5844   {
// 5845     return HAL_ERROR;
// 5846   }
// 5847 
// 5848   if (htim->State == HAL_TIM_STATE_READY)
// 5849   {
// 5850     switch (CallbackID)
// 5851     {
// 5852       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 5853         htim->Base_MspInitCallback                 = pCallback;
// 5854         break;
// 5855 
// 5856       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 5857         htim->Base_MspDeInitCallback               = pCallback;
// 5858         break;
// 5859 
// 5860       case HAL_TIM_IC_MSPINIT_CB_ID :
// 5861         htim->IC_MspInitCallback                   = pCallback;
// 5862         break;
// 5863 
// 5864       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 5865         htim->IC_MspDeInitCallback                 = pCallback;
// 5866         break;
// 5867 
// 5868       case HAL_TIM_OC_MSPINIT_CB_ID :
// 5869         htim->OC_MspInitCallback                   = pCallback;
// 5870         break;
// 5871 
// 5872       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 5873         htim->OC_MspDeInitCallback                 = pCallback;
// 5874         break;
// 5875 
// 5876       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 5877         htim->PWM_MspInitCallback                  = pCallback;
// 5878         break;
// 5879 
// 5880       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 5881         htim->PWM_MspDeInitCallback                = pCallback;
// 5882         break;
// 5883 
// 5884       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 5885         htim->OnePulse_MspInitCallback             = pCallback;
// 5886         break;
// 5887 
// 5888       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 5889         htim->OnePulse_MspDeInitCallback           = pCallback;
// 5890         break;
// 5891 
// 5892       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 5893         htim->Encoder_MspInitCallback              = pCallback;
// 5894         break;
// 5895 
// 5896       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 5897         htim->Encoder_MspDeInitCallback            = pCallback;
// 5898         break;
// 5899 
// 5900       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 5901         htim->HallSensor_MspInitCallback           = pCallback;
// 5902         break;
// 5903 
// 5904       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 5905         htim->HallSensor_MspDeInitCallback         = pCallback;
// 5906         break;
// 5907 
// 5908       case HAL_TIM_PERIOD_ELAPSED_CB_ID :
// 5909         htim->PeriodElapsedCallback                = pCallback;
// 5910         break;
// 5911 
// 5912       case HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID :
// 5913         htim->PeriodElapsedHalfCpltCallback        = pCallback;
// 5914         break;
// 5915 
// 5916       case HAL_TIM_TRIGGER_CB_ID :
// 5917         htim->TriggerCallback                      = pCallback;
// 5918         break;
// 5919 
// 5920       case HAL_TIM_TRIGGER_HALF_CB_ID :
// 5921         htim->TriggerHalfCpltCallback              = pCallback;
// 5922         break;
// 5923 
// 5924       case HAL_TIM_IC_CAPTURE_CB_ID :
// 5925         htim->IC_CaptureCallback                   = pCallback;
// 5926         break;
// 5927 
// 5928       case HAL_TIM_IC_CAPTURE_HALF_CB_ID :
// 5929         htim->IC_CaptureHalfCpltCallback           = pCallback;
// 5930         break;
// 5931 
// 5932       case HAL_TIM_OC_DELAY_ELAPSED_CB_ID :
// 5933         htim->OC_DelayElapsedCallback              = pCallback;
// 5934         break;
// 5935 
// 5936       case HAL_TIM_PWM_PULSE_FINISHED_CB_ID :
// 5937         htim->PWM_PulseFinishedCallback            = pCallback;
// 5938         break;
// 5939 
// 5940       case HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID :
// 5941         htim->PWM_PulseFinishedHalfCpltCallback    = pCallback;
// 5942         break;
// 5943 
// 5944       case HAL_TIM_ERROR_CB_ID :
// 5945         htim->ErrorCallback                        = pCallback;
// 5946         break;
// 5947 
// 5948       case HAL_TIM_COMMUTATION_CB_ID :
// 5949         htim->CommutationCallback                  = pCallback;
// 5950         break;
// 5951 
// 5952       case HAL_TIM_COMMUTATION_HALF_CB_ID :
// 5953         htim->CommutationHalfCpltCallback          = pCallback;
// 5954         break;
// 5955 
// 5956       case HAL_TIM_BREAK_CB_ID :
// 5957         htim->BreakCallback                        = pCallback;
// 5958         break;
// 5959 
// 5960       default :
// 5961         /* Return error status */
// 5962         status = HAL_ERROR;
// 5963         break;
// 5964     }
// 5965   }
// 5966   else if (htim->State == HAL_TIM_STATE_RESET)
// 5967   {
// 5968     switch (CallbackID)
// 5969     {
// 5970       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 5971         htim->Base_MspInitCallback         = pCallback;
// 5972         break;
// 5973 
// 5974       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 5975         htim->Base_MspDeInitCallback       = pCallback;
// 5976         break;
// 5977 
// 5978       case HAL_TIM_IC_MSPINIT_CB_ID :
// 5979         htim->IC_MspInitCallback           = pCallback;
// 5980         break;
// 5981 
// 5982       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 5983         htim->IC_MspDeInitCallback         = pCallback;
// 5984         break;
// 5985 
// 5986       case HAL_TIM_OC_MSPINIT_CB_ID :
// 5987         htim->OC_MspInitCallback           = pCallback;
// 5988         break;
// 5989 
// 5990       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 5991         htim->OC_MspDeInitCallback         = pCallback;
// 5992         break;
// 5993 
// 5994       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 5995         htim->PWM_MspInitCallback          = pCallback;
// 5996         break;
// 5997 
// 5998       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 5999         htim->PWM_MspDeInitCallback        = pCallback;
// 6000         break;
// 6001 
// 6002       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 6003         htim->OnePulse_MspInitCallback     = pCallback;
// 6004         break;
// 6005 
// 6006       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 6007         htim->OnePulse_MspDeInitCallback   = pCallback;
// 6008         break;
// 6009 
// 6010       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 6011         htim->Encoder_MspInitCallback      = pCallback;
// 6012         break;
// 6013 
// 6014       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 6015         htim->Encoder_MspDeInitCallback    = pCallback;
// 6016         break;
// 6017 
// 6018       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 6019         htim->HallSensor_MspInitCallback   = pCallback;
// 6020         break;
// 6021 
// 6022       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 6023         htim->HallSensor_MspDeInitCallback = pCallback;
// 6024         break;
// 6025 
// 6026       default :
// 6027         /* Return error status */
// 6028         status = HAL_ERROR;
// 6029         break;
// 6030     }
// 6031   }
// 6032   else
// 6033   {
// 6034     /* Return error status */
// 6035     status = HAL_ERROR;
// 6036   }
// 6037 
// 6038   return status;
// 6039 }
// 6040 
// 6041 /**
// 6042   * @brief  Unregister a TIM callback
// 6043   *         TIM callback is redirected to the weak predefined callback
// 6044   * @param htim tim handle
// 6045   * @param CallbackID ID of the callback to be unregistered
// 6046   *        This parameter can be one of the following values:
// 6047   *          @arg @ref HAL_TIM_BASE_MSPINIT_CB_ID Base MspInit Callback ID
// 6048   *          @arg @ref HAL_TIM_BASE_MSPDEINIT_CB_ID Base MspDeInit Callback ID
// 6049   *          @arg @ref HAL_TIM_IC_MSPINIT_CB_ID IC MspInit Callback ID
// 6050   *          @arg @ref HAL_TIM_IC_MSPDEINIT_CB_ID IC MspDeInit Callback ID
// 6051   *          @arg @ref HAL_TIM_OC_MSPINIT_CB_ID OC MspInit Callback ID
// 6052   *          @arg @ref HAL_TIM_OC_MSPDEINIT_CB_ID OC MspDeInit Callback ID
// 6053   *          @arg @ref HAL_TIM_PWM_MSPINIT_CB_ID PWM MspInit Callback ID
// 6054   *          @arg @ref HAL_TIM_PWM_MSPDEINIT_CB_ID PWM MspDeInit Callback ID
// 6055   *          @arg @ref HAL_TIM_ONE_PULSE_MSPINIT_CB_ID One Pulse MspInit Callback ID
// 6056   *          @arg @ref HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID One Pulse MspDeInit Callback ID
// 6057   *          @arg @ref HAL_TIM_ENCODER_MSPINIT_CB_ID Encoder MspInit Callback ID
// 6058   *          @arg @ref HAL_TIM_ENCODER_MSPDEINIT_CB_ID Encoder MspDeInit Callback ID
// 6059   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID Hall Sensor MspInit Callback ID
// 6060   *          @arg @ref HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID Hall Sensor MspDeInit Callback ID
// 6061   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_CB_ID Period Elapsed Callback ID
// 6062   *          @arg @ref HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID Period Elapsed half complete Callback ID
// 6063   *          @arg @ref HAL_TIM_TRIGGER_CB_ID Trigger Callback ID
// 6064   *          @arg @ref HAL_TIM_TRIGGER_HALF_CB_ID Trigger half complete Callback ID
// 6065   *          @arg @ref HAL_TIM_IC_CAPTURE_CB_ID Input Capture Callback ID
// 6066   *          @arg @ref HAL_TIM_IC_CAPTURE_HALF_CB_ID Input Capture half complete Callback ID
// 6067   *          @arg @ref HAL_TIM_OC_DELAY_ELAPSED_CB_ID Output Compare Delay Elapsed Callback ID
// 6068   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_CB_ID PWM Pulse Finished Callback ID
// 6069   *          @arg @ref HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID PWM Pulse Finished half complete Callback ID
// 6070   *          @arg @ref HAL_TIM_ERROR_CB_ID Error Callback ID
// 6071   *          @arg @ref HAL_TIM_COMMUTATION_CB_ID Commutation Callback ID
// 6072   *          @arg @ref HAL_TIM_COMMUTATION_HALF_CB_ID Commutation half complete Callback ID
// 6073   *          @arg @ref HAL_TIM_BREAK_CB_ID Break Callback ID
// 6074   *          @retval status
// 6075   */
// 6076 HAL_StatusTypeDef HAL_TIM_UnRegisterCallback(TIM_HandleTypeDef *htim, HAL_TIM_CallbackIDTypeDef CallbackID)
// 6077 {
// 6078   HAL_StatusTypeDef status = HAL_OK;
// 6079 
// 6080   if (htim->State == HAL_TIM_STATE_READY)
// 6081   {
// 6082     switch (CallbackID)
// 6083     {
// 6084       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 6085         /* Legacy weak Base MspInit Callback */
// 6086         htim->Base_MspInitCallback              = HAL_TIM_Base_MspInit;
// 6087         break;
// 6088 
// 6089       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 6090         /* Legacy weak Base Msp DeInit Callback */
// 6091         htim->Base_MspDeInitCallback            = HAL_TIM_Base_MspDeInit;
// 6092         break;
// 6093 
// 6094       case HAL_TIM_IC_MSPINIT_CB_ID :
// 6095         /* Legacy weak IC Msp Init Callback */
// 6096         htim->IC_MspInitCallback                = HAL_TIM_IC_MspInit;
// 6097         break;
// 6098 
// 6099       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 6100         /* Legacy weak IC Msp DeInit Callback */
// 6101         htim->IC_MspDeInitCallback              = HAL_TIM_IC_MspDeInit;
// 6102         break;
// 6103 
// 6104       case HAL_TIM_OC_MSPINIT_CB_ID :
// 6105         /* Legacy weak OC Msp Init Callback */
// 6106         htim->OC_MspInitCallback                = HAL_TIM_OC_MspInit;
// 6107         break;
// 6108 
// 6109       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 6110         /* Legacy weak OC Msp DeInit Callback */
// 6111         htim->OC_MspDeInitCallback              = HAL_TIM_OC_MspDeInit;
// 6112         break;
// 6113 
// 6114       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 6115         /* Legacy weak PWM Msp Init Callback */
// 6116         htim->PWM_MspInitCallback               = HAL_TIM_PWM_MspInit;
// 6117         break;
// 6118 
// 6119       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 6120         /* Legacy weak PWM Msp DeInit Callback */
// 6121         htim->PWM_MspDeInitCallback             = HAL_TIM_PWM_MspDeInit;
// 6122         break;
// 6123 
// 6124       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 6125         /* Legacy weak One Pulse Msp Init Callback */
// 6126         htim->OnePulse_MspInitCallback          = HAL_TIM_OnePulse_MspInit;
// 6127         break;
// 6128 
// 6129       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 6130         /* Legacy weak One Pulse Msp DeInit Callback */
// 6131         htim->OnePulse_MspDeInitCallback        = HAL_TIM_OnePulse_MspDeInit;
// 6132         break;
// 6133 
// 6134       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 6135         /* Legacy weak Encoder Msp Init Callback */
// 6136         htim->Encoder_MspInitCallback           = HAL_TIM_Encoder_MspInit;
// 6137         break;
// 6138 
// 6139       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 6140         /* Legacy weak Encoder Msp DeInit Callback */
// 6141         htim->Encoder_MspDeInitCallback         = HAL_TIM_Encoder_MspDeInit;
// 6142         break;
// 6143 
// 6144       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 6145         /* Legacy weak Hall Sensor Msp Init Callback */
// 6146         htim->HallSensor_MspInitCallback        = HAL_TIMEx_HallSensor_MspInit;
// 6147         break;
// 6148 
// 6149       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 6150         /* Legacy weak Hall Sensor Msp DeInit Callback */
// 6151         htim->HallSensor_MspDeInitCallback      = HAL_TIMEx_HallSensor_MspDeInit;
// 6152         break;
// 6153 
// 6154       case HAL_TIM_PERIOD_ELAPSED_CB_ID :
// 6155         /* Legacy weak Period Elapsed Callback */
// 6156         htim->PeriodElapsedCallback             = HAL_TIM_PeriodElapsedCallback;
// 6157         break;
// 6158 
// 6159       case HAL_TIM_PERIOD_ELAPSED_HALF_CB_ID :
// 6160         /* Legacy weak Period Elapsed half complete Callback */
// 6161         htim->PeriodElapsedHalfCpltCallback     = HAL_TIM_PeriodElapsedHalfCpltCallback;
// 6162         break;
// 6163 
// 6164       case HAL_TIM_TRIGGER_CB_ID :
// 6165         /* Legacy weak Trigger Callback */
// 6166         htim->TriggerCallback                   = HAL_TIM_TriggerCallback;
// 6167         break;
// 6168 
// 6169       case HAL_TIM_TRIGGER_HALF_CB_ID :
// 6170         /* Legacy weak Trigger half complete Callback */
// 6171         htim->TriggerHalfCpltCallback           = HAL_TIM_TriggerHalfCpltCallback;
// 6172         break;
// 6173 
// 6174       case HAL_TIM_IC_CAPTURE_CB_ID :
// 6175         /* Legacy weak IC Capture Callback */
// 6176         htim->IC_CaptureCallback                = HAL_TIM_IC_CaptureCallback;
// 6177         break;
// 6178 
// 6179       case HAL_TIM_IC_CAPTURE_HALF_CB_ID :
// 6180         /* Legacy weak IC Capture half complete Callback */
// 6181         htim->IC_CaptureHalfCpltCallback        = HAL_TIM_IC_CaptureHalfCpltCallback;
// 6182         break;
// 6183 
// 6184       case HAL_TIM_OC_DELAY_ELAPSED_CB_ID :
// 6185         /* Legacy weak OC Delay Elapsed Callback */
// 6186         htim->OC_DelayElapsedCallback           = HAL_TIM_OC_DelayElapsedCallback;
// 6187         break;
// 6188 
// 6189       case HAL_TIM_PWM_PULSE_FINISHED_CB_ID :
// 6190         /* Legacy weak PWM Pulse Finished Callback */
// 6191         htim->PWM_PulseFinishedCallback         = HAL_TIM_PWM_PulseFinishedCallback;
// 6192         break;
// 6193 
// 6194       case HAL_TIM_PWM_PULSE_FINISHED_HALF_CB_ID :
// 6195         /* Legacy weak PWM Pulse Finished half complete Callback */
// 6196         htim->PWM_PulseFinishedHalfCpltCallback = HAL_TIM_PWM_PulseFinishedHalfCpltCallback;
// 6197         break;
// 6198 
// 6199       case HAL_TIM_ERROR_CB_ID :
// 6200         /* Legacy weak Error Callback */
// 6201         htim->ErrorCallback                     = HAL_TIM_ErrorCallback;
// 6202         break;
// 6203 
// 6204       case HAL_TIM_COMMUTATION_CB_ID :
// 6205         /* Legacy weak Commutation Callback */
// 6206         htim->CommutationCallback               = HAL_TIMEx_CommutCallback;
// 6207         break;
// 6208 
// 6209       case HAL_TIM_COMMUTATION_HALF_CB_ID :
// 6210         /* Legacy weak Commutation half complete Callback */
// 6211         htim->CommutationHalfCpltCallback       = HAL_TIMEx_CommutHalfCpltCallback;
// 6212         break;
// 6213 
// 6214       case HAL_TIM_BREAK_CB_ID :
// 6215         /* Legacy weak Break Callback */
// 6216         htim->BreakCallback                     = HAL_TIMEx_BreakCallback;
// 6217         break;
// 6218 
// 6219       default :
// 6220         /* Return error status */
// 6221         status = HAL_ERROR;
// 6222         break;
// 6223     }
// 6224   }
// 6225   else if (htim->State == HAL_TIM_STATE_RESET)
// 6226   {
// 6227     switch (CallbackID)
// 6228     {
// 6229       case HAL_TIM_BASE_MSPINIT_CB_ID :
// 6230         /* Legacy weak Base MspInit Callback */
// 6231         htim->Base_MspInitCallback         = HAL_TIM_Base_MspInit;
// 6232         break;
// 6233 
// 6234       case HAL_TIM_BASE_MSPDEINIT_CB_ID :
// 6235         /* Legacy weak Base Msp DeInit Callback */
// 6236         htim->Base_MspDeInitCallback       = HAL_TIM_Base_MspDeInit;
// 6237         break;
// 6238 
// 6239       case HAL_TIM_IC_MSPINIT_CB_ID :
// 6240         /* Legacy weak IC Msp Init Callback */
// 6241         htim->IC_MspInitCallback           = HAL_TIM_IC_MspInit;
// 6242         break;
// 6243 
// 6244       case HAL_TIM_IC_MSPDEINIT_CB_ID :
// 6245         /* Legacy weak IC Msp DeInit Callback */
// 6246         htim->IC_MspDeInitCallback         = HAL_TIM_IC_MspDeInit;
// 6247         break;
// 6248 
// 6249       case HAL_TIM_OC_MSPINIT_CB_ID :
// 6250         /* Legacy weak OC Msp Init Callback */
// 6251         htim->OC_MspInitCallback           = HAL_TIM_OC_MspInit;
// 6252         break;
// 6253 
// 6254       case HAL_TIM_OC_MSPDEINIT_CB_ID :
// 6255         /* Legacy weak OC Msp DeInit Callback */
// 6256         htim->OC_MspDeInitCallback         = HAL_TIM_OC_MspDeInit;
// 6257         break;
// 6258 
// 6259       case HAL_TIM_PWM_MSPINIT_CB_ID :
// 6260         /* Legacy weak PWM Msp Init Callback */
// 6261         htim->PWM_MspInitCallback          = HAL_TIM_PWM_MspInit;
// 6262         break;
// 6263 
// 6264       case HAL_TIM_PWM_MSPDEINIT_CB_ID :
// 6265         /* Legacy weak PWM Msp DeInit Callback */
// 6266         htim->PWM_MspDeInitCallback        = HAL_TIM_PWM_MspDeInit;
// 6267         break;
// 6268 
// 6269       case HAL_TIM_ONE_PULSE_MSPINIT_CB_ID :
// 6270         /* Legacy weak One Pulse Msp Init Callback */
// 6271         htim->OnePulse_MspInitCallback     = HAL_TIM_OnePulse_MspInit;
// 6272         break;
// 6273 
// 6274       case HAL_TIM_ONE_PULSE_MSPDEINIT_CB_ID :
// 6275         /* Legacy weak One Pulse Msp DeInit Callback */
// 6276         htim->OnePulse_MspDeInitCallback   = HAL_TIM_OnePulse_MspDeInit;
// 6277         break;
// 6278 
// 6279       case HAL_TIM_ENCODER_MSPINIT_CB_ID :
// 6280         /* Legacy weak Encoder Msp Init Callback */
// 6281         htim->Encoder_MspInitCallback      = HAL_TIM_Encoder_MspInit;
// 6282         break;
// 6283 
// 6284       case HAL_TIM_ENCODER_MSPDEINIT_CB_ID :
// 6285         /* Legacy weak Encoder Msp DeInit Callback */
// 6286         htim->Encoder_MspDeInitCallback    = HAL_TIM_Encoder_MspDeInit;
// 6287         break;
// 6288 
// 6289       case HAL_TIM_HALL_SENSOR_MSPINIT_CB_ID :
// 6290         /* Legacy weak Hall Sensor Msp Init Callback */
// 6291         htim->HallSensor_MspInitCallback   = HAL_TIMEx_HallSensor_MspInit;
// 6292         break;
// 6293 
// 6294       case HAL_TIM_HALL_SENSOR_MSPDEINIT_CB_ID :
// 6295         /* Legacy weak Hall Sensor Msp DeInit Callback */
// 6296         htim->HallSensor_MspDeInitCallback = HAL_TIMEx_HallSensor_MspDeInit;
// 6297         break;
// 6298 
// 6299       default :
// 6300         /* Return error status */
// 6301         status = HAL_ERROR;
// 6302         break;
// 6303     }
// 6304   }
// 6305   else
// 6306   {
// 6307     /* Return error status */
// 6308     status = HAL_ERROR;
// 6309   }
// 6310 
// 6311   return status;
// 6312 }
// 6313 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6314 
// 6315 /**
// 6316   * @}
// 6317   */
// 6318 
// 6319 /** @defgroup TIM_Exported_Functions_Group10 TIM Peripheral State functions
// 6320   *  @brief   TIM Peripheral State functions
// 6321   *
// 6322 @verbatim
// 6323   ==============================================================================
// 6324                         ##### Peripheral State functions #####
// 6325   ==============================================================================
// 6326     [..]
// 6327     This subsection permits to get in run-time the status of the peripheral
// 6328     and the data flow.
// 6329 
// 6330 @endverbatim
// 6331   * @{
// 6332   */
// 6333 
// 6334 /**
// 6335   * @brief  Return the TIM Base handle state.
// 6336   * @param  htim TIM Base handle
// 6337   * @retval HAL state
// 6338   */
// 6339 HAL_TIM_StateTypeDef HAL_TIM_Base_GetState(const TIM_HandleTypeDef *htim)
// 6340 {
// 6341   return htim->State;
// 6342 }
// 6343 
// 6344 /**
// 6345   * @brief  Return the TIM OC handle state.
// 6346   * @param  htim TIM Output Compare handle
// 6347   * @retval HAL state
// 6348   */
// 6349 HAL_TIM_StateTypeDef HAL_TIM_OC_GetState(const TIM_HandleTypeDef *htim)
// 6350 {
// 6351   return htim->State;
// 6352 }
// 6353 
// 6354 /**
// 6355   * @brief  Return the TIM PWM handle state.
// 6356   * @param  htim TIM handle
// 6357   * @retval HAL state
// 6358   */
// 6359 HAL_TIM_StateTypeDef HAL_TIM_PWM_GetState(const TIM_HandleTypeDef *htim)
// 6360 {
// 6361   return htim->State;
// 6362 }
// 6363 
// 6364 /**
// 6365   * @brief  Return the TIM Input Capture handle state.
// 6366   * @param  htim TIM IC handle
// 6367   * @retval HAL state
// 6368   */
// 6369 HAL_TIM_StateTypeDef HAL_TIM_IC_GetState(const TIM_HandleTypeDef *htim)
// 6370 {
// 6371   return htim->State;
// 6372 }
// 6373 
// 6374 /**
// 6375   * @brief  Return the TIM One Pulse Mode handle state.
// 6376   * @param  htim TIM OPM handle
// 6377   * @retval HAL state
// 6378   */
// 6379 HAL_TIM_StateTypeDef HAL_TIM_OnePulse_GetState(const TIM_HandleTypeDef *htim)
// 6380 {
// 6381   return htim->State;
// 6382 }
// 6383 
// 6384 /**
// 6385   * @brief  Return the TIM Encoder Mode handle state.
// 6386   * @param  htim TIM Encoder Interface handle
// 6387   * @retval HAL state
// 6388   */
// 6389 HAL_TIM_StateTypeDef HAL_TIM_Encoder_GetState(const TIM_HandleTypeDef *htim)
// 6390 {
// 6391   return htim->State;
// 6392 }
// 6393 
// 6394 /**
// 6395   * @brief  Return the TIM Encoder Mode handle state.
// 6396   * @param  htim TIM handle
// 6397   * @retval Active channel
// 6398   */
// 6399 HAL_TIM_ActiveChannel HAL_TIM_GetActiveChannel(const TIM_HandleTypeDef *htim)
// 6400 {
// 6401   return htim->Channel;
// 6402 }
// 6403 
// 6404 /**
// 6405   * @brief  Return actual state of the TIM channel.
// 6406   * @param  htim TIM handle
// 6407   * @param  Channel TIM Channel
// 6408   *          This parameter can be one of the following values:
// 6409   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 6410   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 6411   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 6412   *            @arg TIM_CHANNEL_4: TIM Channel 4
// 6413   *            @arg TIM_CHANNEL_5: TIM Channel 5
// 6414   *            @arg TIM_CHANNEL_6: TIM Channel 6
// 6415   * @retval TIM Channel state
// 6416   */
// 6417 HAL_TIM_ChannelStateTypeDef HAL_TIM_GetChannelState(const TIM_HandleTypeDef *htim,  uint32_t Channel)
// 6418 {
// 6419   HAL_TIM_ChannelStateTypeDef channel_state;
// 6420 
// 6421   /* Check the parameters */
// 6422   assert_param(IS_TIM_CCX_INSTANCE(htim->Instance, Channel));
// 6423 
// 6424   channel_state = TIM_CHANNEL_STATE_GET(htim, Channel);
// 6425 
// 6426   return channel_state;
// 6427 }
// 6428 
// 6429 /**
// 6430   * @brief  Return actual state of a DMA burst operation.
// 6431   * @param  htim TIM handle
// 6432   * @retval DMA burst state
// 6433   */
// 6434 HAL_TIM_DMABurstStateTypeDef HAL_TIM_DMABurstState(const TIM_HandleTypeDef *htim)
// 6435 {
// 6436   /* Check the parameters */
// 6437   assert_param(IS_TIM_DMABURST_INSTANCE(htim->Instance));
// 6438 
// 6439   return htim->DMABurstState;
// 6440 }
// 6441 
// 6442 /**
// 6443   * @}
// 6444   */
// 6445 
// 6446 /**
// 6447   * @}
// 6448   */
// 6449 
// 6450 /** @defgroup TIM_Private_Functions TIM Private Functions
// 6451   * @{
// 6452   */
// 6453 
// 6454 /**
// 6455   * @brief  TIM DMA error callback
// 6456   * @param  hdma pointer to DMA handle.
// 6457   * @retval None
// 6458   */
// 6459 void TIM_DMAError(DMA_HandleTypeDef *hdma)
// 6460 {
// 6461   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6462 
// 6463   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 6464   {
// 6465     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 6466     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 6467   }
// 6468   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 6469   {
// 6470     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 6471     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 6472   }
// 6473   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 6474   {
// 6475     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 6476     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_3, HAL_TIM_CHANNEL_STATE_READY);
// 6477   }
// 6478   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 6479   {
// 6480     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 6481     TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_4, HAL_TIM_CHANNEL_STATE_READY);
// 6482   }
// 6483   else
// 6484   {
// 6485     htim->State = HAL_TIM_STATE_READY;
// 6486   }
// 6487 
// 6488 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6489   htim->ErrorCallback(htim);
// 6490 #else
// 6491   HAL_TIM_ErrorCallback(htim);
// 6492 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6493 
// 6494   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 6495 }
// 6496 
// 6497 /**
// 6498   * @brief  TIM DMA Delay Pulse complete callback.
// 6499   * @param  hdma pointer to DMA handle.
// 6500   * @retval None
// 6501   */
// 6502 static void TIM_DMADelayPulseCplt(DMA_HandleTypeDef *hdma)
// 6503 {
// 6504   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6505 
// 6506   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 6507   {
// 6508     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 6509 
// 6510     if (hdma->Init.Mode == DMA_NORMAL)
// 6511     {
// 6512       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 6513     }
// 6514   }
// 6515   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 6516   {
// 6517     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 6518 
// 6519     if (hdma->Init.Mode == DMA_NORMAL)
// 6520     {
// 6521       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 6522     }
// 6523   }
// 6524   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 6525   {
// 6526     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 6527 
// 6528     if (hdma->Init.Mode == DMA_NORMAL)
// 6529     {
// 6530       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_3, HAL_TIM_CHANNEL_STATE_READY);
// 6531     }
// 6532   }
// 6533   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 6534   {
// 6535     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 6536 
// 6537     if (hdma->Init.Mode == DMA_NORMAL)
// 6538     {
// 6539       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_4, HAL_TIM_CHANNEL_STATE_READY);
// 6540     }
// 6541   }
// 6542   else
// 6543   {
// 6544     /* nothing to do */
// 6545   }
// 6546 
// 6547 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6548   htim->PWM_PulseFinishedCallback(htim);
// 6549 #else
// 6550   HAL_TIM_PWM_PulseFinishedCallback(htim);
// 6551 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6552 
// 6553   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 6554 }
// 6555 
// 6556 /**
// 6557   * @brief  TIM DMA Delay Pulse half complete callback.
// 6558   * @param  hdma pointer to DMA handle.
// 6559   * @retval None
// 6560   */
// 6561 void TIM_DMADelayPulseHalfCplt(DMA_HandleTypeDef *hdma)
// 6562 {
// 6563   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6564 
// 6565   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 6566   {
// 6567     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 6568   }
// 6569   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 6570   {
// 6571     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 6572   }
// 6573   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 6574   {
// 6575     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 6576   }
// 6577   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 6578   {
// 6579     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 6580   }
// 6581   else
// 6582   {
// 6583     /* nothing to do */
// 6584   }
// 6585 
// 6586 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6587   htim->PWM_PulseFinishedHalfCpltCallback(htim);
// 6588 #else
// 6589   HAL_TIM_PWM_PulseFinishedHalfCpltCallback(htim);
// 6590 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6591 
// 6592   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 6593 }
// 6594 
// 6595 /**
// 6596   * @brief  TIM DMA Capture complete callback.
// 6597   * @param  hdma pointer to DMA handle.
// 6598   * @retval None
// 6599   */
// 6600 void TIM_DMACaptureCplt(DMA_HandleTypeDef *hdma)
// 6601 {
// 6602   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6603 
// 6604   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 6605   {
// 6606     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 6607 
// 6608     if (hdma->Init.Mode == DMA_NORMAL)
// 6609     {
// 6610       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 6611       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_1, HAL_TIM_CHANNEL_STATE_READY);
// 6612     }
// 6613   }
// 6614   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 6615   {
// 6616     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 6617 
// 6618     if (hdma->Init.Mode == DMA_NORMAL)
// 6619     {
// 6620       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 6621       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_2, HAL_TIM_CHANNEL_STATE_READY);
// 6622     }
// 6623   }
// 6624   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 6625   {
// 6626     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 6627 
// 6628     if (hdma->Init.Mode == DMA_NORMAL)
// 6629     {
// 6630       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_3, HAL_TIM_CHANNEL_STATE_READY);
// 6631       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_3, HAL_TIM_CHANNEL_STATE_READY);
// 6632     }
// 6633   }
// 6634   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 6635   {
// 6636     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 6637 
// 6638     if (hdma->Init.Mode == DMA_NORMAL)
// 6639     {
// 6640       TIM_CHANNEL_STATE_SET(htim, TIM_CHANNEL_4, HAL_TIM_CHANNEL_STATE_READY);
// 6641       TIM_CHANNEL_N_STATE_SET(htim, TIM_CHANNEL_4, HAL_TIM_CHANNEL_STATE_READY);
// 6642     }
// 6643   }
// 6644   else
// 6645   {
// 6646     /* nothing to do */
// 6647   }
// 6648 
// 6649 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6650   htim->IC_CaptureCallback(htim);
// 6651 #else
// 6652   HAL_TIM_IC_CaptureCallback(htim);
// 6653 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6654 
// 6655   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 6656 }
// 6657 
// 6658 /**
// 6659   * @brief  TIM DMA Capture half complete callback.
// 6660   * @param  hdma pointer to DMA handle.
// 6661   * @retval None
// 6662   */
// 6663 void TIM_DMACaptureHalfCplt(DMA_HandleTypeDef *hdma)
// 6664 {
// 6665   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6666 
// 6667   if (hdma == htim->hdma[TIM_DMA_ID_CC1])
// 6668   {
// 6669     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_1;
// 6670   }
// 6671   else if (hdma == htim->hdma[TIM_DMA_ID_CC2])
// 6672   {
// 6673     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_2;
// 6674   }
// 6675   else if (hdma == htim->hdma[TIM_DMA_ID_CC3])
// 6676   {
// 6677     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_3;
// 6678   }
// 6679   else if (hdma == htim->hdma[TIM_DMA_ID_CC4])
// 6680   {
// 6681     htim->Channel = HAL_TIM_ACTIVE_CHANNEL_4;
// 6682   }
// 6683   else
// 6684   {
// 6685     /* nothing to do */
// 6686   }
// 6687 
// 6688 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6689   htim->IC_CaptureHalfCpltCallback(htim);
// 6690 #else
// 6691   HAL_TIM_IC_CaptureHalfCpltCallback(htim);
// 6692 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6693 
// 6694   htim->Channel = HAL_TIM_ACTIVE_CHANNEL_CLEARED;
// 6695 }
// 6696 
// 6697 /**
// 6698   * @brief  TIM DMA Period Elapse complete callback.
// 6699   * @param  hdma pointer to DMA handle.
// 6700   * @retval None
// 6701   */
// 6702 static void TIM_DMAPeriodElapsedCplt(DMA_HandleTypeDef *hdma)
// 6703 {
// 6704   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6705 
// 6706   if (htim->hdma[TIM_DMA_ID_UPDATE]->Init.Mode == DMA_NORMAL)
// 6707   {
// 6708     htim->State = HAL_TIM_STATE_READY;
// 6709   }
// 6710 
// 6711 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6712   htim->PeriodElapsedCallback(htim);
// 6713 #else
// 6714   HAL_TIM_PeriodElapsedCallback(htim);
// 6715 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6716 }
// 6717 
// 6718 /**
// 6719   * @brief  TIM DMA Period Elapse half complete callback.
// 6720   * @param  hdma pointer to DMA handle.
// 6721   * @retval None
// 6722   */
// 6723 static void TIM_DMAPeriodElapsedHalfCplt(DMA_HandleTypeDef *hdma)
// 6724 {
// 6725   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6726 
// 6727 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6728   htim->PeriodElapsedHalfCpltCallback(htim);
// 6729 #else
// 6730   HAL_TIM_PeriodElapsedHalfCpltCallback(htim);
// 6731 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6732 }
// 6733 
// 6734 /**
// 6735   * @brief  TIM DMA Trigger callback.
// 6736   * @param  hdma pointer to DMA handle.
// 6737   * @retval None
// 6738   */
// 6739 static void TIM_DMATriggerCplt(DMA_HandleTypeDef *hdma)
// 6740 {
// 6741   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6742 
// 6743   if (htim->hdma[TIM_DMA_ID_TRIGGER]->Init.Mode == DMA_NORMAL)
// 6744   {
// 6745     htim->State = HAL_TIM_STATE_READY;
// 6746   }
// 6747 
// 6748 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6749   htim->TriggerCallback(htim);
// 6750 #else
// 6751   HAL_TIM_TriggerCallback(htim);
// 6752 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6753 }
// 6754 
// 6755 /**
// 6756   * @brief  TIM DMA Trigger half complete callback.
// 6757   * @param  hdma pointer to DMA handle.
// 6758   * @retval None
// 6759   */
// 6760 static void TIM_DMATriggerHalfCplt(DMA_HandleTypeDef *hdma)
// 6761 {
// 6762   TIM_HandleTypeDef *htim = (TIM_HandleTypeDef *)((DMA_HandleTypeDef *)hdma)->Parent;
// 6763 
// 6764 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 6765   htim->TriggerHalfCpltCallback(htim);
// 6766 #else
// 6767   HAL_TIM_TriggerHalfCpltCallback(htim);
// 6768 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 6769 }
// 6770 
// 6771 /**
// 6772   * @brief  Time Base configuration
// 6773   * @param  TIMx TIM peripheral
// 6774   * @param  Structure TIM Base configuration structure
// 6775   * @retval None
// 6776   */
// 6777 void TIM_Base_SetConfig(TIM_TypeDef *TIMx, const TIM_Base_InitTypeDef *Structure)
// 6778 {
// 6779   uint32_t tmpcr1;
// 6780   tmpcr1 = TIMx->CR1;
// 6781 
// 6782   /* Set TIM Time Base Unit parameters ---------------------------------------*/
// 6783   if (IS_TIM_COUNTER_MODE_SELECT_INSTANCE(TIMx))
// 6784   {
// 6785     /* Select the Counter Mode */
// 6786     tmpcr1 &= ~(TIM_CR1_DIR | TIM_CR1_CMS);
// 6787     tmpcr1 |= Structure->CounterMode;
// 6788   }
// 6789 
// 6790   if (IS_TIM_CLOCK_DIVISION_INSTANCE(TIMx))
// 6791   {
// 6792     /* Set the clock division */
// 6793     tmpcr1 &= ~TIM_CR1_CKD;
// 6794     tmpcr1 |= (uint32_t)Structure->ClockDivision;
// 6795   }
// 6796 
// 6797   /* Set the auto-reload preload */
// 6798   MODIFY_REG(tmpcr1, TIM_CR1_ARPE, Structure->AutoReloadPreload);
// 6799 
// 6800   TIMx->CR1 = tmpcr1;
// 6801 
// 6802   /* Set the Autoreload value */
// 6803   TIMx->ARR = (uint32_t)Structure->Period ;
// 6804 
// 6805   /* Set the Prescaler value */
// 6806   TIMx->PSC = Structure->Prescaler;
// 6807 
// 6808   if (IS_TIM_REPETITION_COUNTER_INSTANCE(TIMx))
// 6809   {
// 6810     /* Set the Repetition Counter value */
// 6811     TIMx->RCR = Structure->RepetitionCounter;
// 6812   }
// 6813 
// 6814   /* Generate an update event to reload the Prescaler
// 6815      and the repetition counter (only for advanced timer) value immediately */
// 6816   TIMx->EGR = TIM_EGR_UG;
// 6817 
// 6818   /* Check if the update flag is set after the Update Generation, if so clear the UIF flag */
// 6819   if (HAL_IS_BIT_SET(TIMx->SR, TIM_FLAG_UPDATE))
// 6820   {
// 6821     /* Clear the update flag */
// 6822     CLEAR_BIT(TIMx->SR, TIM_FLAG_UPDATE);
// 6823   }
// 6824 }
// 6825 
// 6826 /**
// 6827   * @brief  Timer Output Compare 1 configuration
// 6828   * @param  TIMx to select the TIM peripheral
// 6829   * @param  OC_Config The output configuration structure
// 6830   * @retval None
// 6831   */
// 6832 static void TIM_OC1_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config)
// 6833 {
// 6834   uint32_t tmpccmrx;
// 6835   uint32_t tmpccer;
// 6836   uint32_t tmpcr2;
// 6837 
// 6838   /* Get the TIMx CCER register value */
// 6839   tmpccer = TIMx->CCER;
// 6840 
// 6841   /* Disable the Channel 1: Reset the CC1E Bit */
// 6842   TIMx->CCER &= ~TIM_CCER_CC1E;
// 6843 
// 6844   /* Get the TIMx CR2 register value */
// 6845   tmpcr2 =  TIMx->CR2;
// 6846 
// 6847   /* Get the TIMx CCMR1 register value */
// 6848   tmpccmrx = TIMx->CCMR1;
// 6849 
// 6850   /* Reset the Output Compare Mode Bits */
// 6851   tmpccmrx &= ~TIM_CCMR1_OC1M;
// 6852   tmpccmrx &= ~TIM_CCMR1_CC1S;
// 6853   /* Select the Output Compare Mode */
// 6854   tmpccmrx |= OC_Config->OCMode;
// 6855 
// 6856   /* Reset the Output Polarity level */
// 6857   tmpccer &= ~TIM_CCER_CC1P;
// 6858   /* Set the Output Compare Polarity */
// 6859   tmpccer |= OC_Config->OCPolarity;
// 6860 
// 6861   if (IS_TIM_CCXN_INSTANCE(TIMx, TIM_CHANNEL_1))
// 6862   {
// 6863     /* Check parameters */
// 6864     assert_param(IS_TIM_OCN_POLARITY(OC_Config->OCNPolarity));
// 6865 
// 6866     /* Reset the Output N Polarity level */
// 6867     tmpccer &= ~TIM_CCER_CC1NP;
// 6868     /* Set the Output N Polarity */
// 6869     tmpccer |= OC_Config->OCNPolarity;
// 6870     /* Reset the Output N State */
// 6871     tmpccer &= ~TIM_CCER_CC1NE;
// 6872   }
// 6873 
// 6874   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6875   {
// 6876     /* Check parameters */
// 6877     assert_param(IS_TIM_OCNIDLE_STATE(OC_Config->OCNIdleState));
// 6878     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 6879 
// 6880     /* Reset the Output Compare and Output Compare N IDLE State */
// 6881     tmpcr2 &= ~TIM_CR2_OIS1;
// 6882     tmpcr2 &= ~TIM_CR2_OIS1N;
// 6883     /* Set the Output Idle state */
// 6884     tmpcr2 |= OC_Config->OCIdleState;
// 6885     /* Set the Output N Idle state */
// 6886     tmpcr2 |= OC_Config->OCNIdleState;
// 6887   }
// 6888 
// 6889   /* Write to TIMx CR2 */
// 6890   TIMx->CR2 = tmpcr2;
// 6891 
// 6892   /* Write to TIMx CCMR1 */
// 6893   TIMx->CCMR1 = tmpccmrx;
// 6894 
// 6895   /* Set the Capture Compare Register value */
// 6896   TIMx->CCR1 = OC_Config->Pulse;
// 6897 
// 6898   /* Write to TIMx CCER */
// 6899   TIMx->CCER = tmpccer;
// 6900 }
// 6901 
// 6902 /**
// 6903   * @brief  Timer Output Compare 2 configuration
// 6904   * @param  TIMx to select the TIM peripheral
// 6905   * @param  OC_Config The output configuration structure
// 6906   * @retval None
// 6907   */
// 6908 void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config)
// 6909 {
// 6910   uint32_t tmpccmrx;
// 6911   uint32_t tmpccer;
// 6912   uint32_t tmpcr2;
// 6913 
// 6914   /* Get the TIMx CCER register value */
// 6915   tmpccer = TIMx->CCER;
// 6916 
// 6917   /* Disable the Channel 2: Reset the CC2E Bit */
// 6918   TIMx->CCER &= ~TIM_CCER_CC2E;
// 6919 
// 6920   /* Get the TIMx CR2 register value */
// 6921   tmpcr2 =  TIMx->CR2;
// 6922 
// 6923   /* Get the TIMx CCMR1 register value */
// 6924   tmpccmrx = TIMx->CCMR1;
// 6925 
// 6926   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 6927   tmpccmrx &= ~TIM_CCMR1_OC2M;
// 6928   tmpccmrx &= ~TIM_CCMR1_CC2S;
// 6929 
// 6930   /* Select the Output Compare Mode */
// 6931   tmpccmrx |= (OC_Config->OCMode << 8U);
// 6932 
// 6933   /* Reset the Output Polarity level */
// 6934   tmpccer &= ~TIM_CCER_CC2P;
// 6935   /* Set the Output Compare Polarity */
// 6936   tmpccer |= (OC_Config->OCPolarity << 4U);
// 6937 
// 6938   if (IS_TIM_CCXN_INSTANCE(TIMx, TIM_CHANNEL_2))
// 6939   {
// 6940     assert_param(IS_TIM_OCN_POLARITY(OC_Config->OCNPolarity));
// 6941 
// 6942     /* Reset the Output N Polarity level */
// 6943     tmpccer &= ~TIM_CCER_CC2NP;
// 6944     /* Set the Output N Polarity */
// 6945     tmpccer |= (OC_Config->OCNPolarity << 4U);
// 6946     /* Reset the Output N State */
// 6947     tmpccer &= ~TIM_CCER_CC2NE;
// 6948   }
// 6949 
// 6950   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 6951   {
// 6952     /* Check parameters */
// 6953     assert_param(IS_TIM_OCNIDLE_STATE(OC_Config->OCNIdleState));
// 6954     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 6955 
// 6956     /* Reset the Output Compare and Output Compare N IDLE State */
// 6957     tmpcr2 &= ~TIM_CR2_OIS2;
// 6958     tmpcr2 &= ~TIM_CR2_OIS2N;
// 6959     /* Set the Output Idle state */
// 6960     tmpcr2 |= (OC_Config->OCIdleState << 2U);
// 6961     /* Set the Output N Idle state */
// 6962     tmpcr2 |= (OC_Config->OCNIdleState << 2U);
// 6963   }
// 6964 
// 6965   /* Write to TIMx CR2 */
// 6966   TIMx->CR2 = tmpcr2;
// 6967 
// 6968   /* Write to TIMx CCMR1 */
// 6969   TIMx->CCMR1 = tmpccmrx;
// 6970 
// 6971   /* Set the Capture Compare Register value */
// 6972   TIMx->CCR2 = OC_Config->Pulse;
// 6973 
// 6974   /* Write to TIMx CCER */
// 6975   TIMx->CCER = tmpccer;
// 6976 }
// 6977 
// 6978 /**
// 6979   * @brief  Timer Output Compare 3 configuration
// 6980   * @param  TIMx to select the TIM peripheral
// 6981   * @param  OC_Config The output configuration structure
// 6982   * @retval None
// 6983   */
// 6984 static void TIM_OC3_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config)
// 6985 {
// 6986   uint32_t tmpccmrx;
// 6987   uint32_t tmpccer;
// 6988   uint32_t tmpcr2;
// 6989 
// 6990   /* Get the TIMx CCER register value */
// 6991   tmpccer = TIMx->CCER;
// 6992 
// 6993   /* Disable the Channel 3: Reset the CC2E Bit */
// 6994   TIMx->CCER &= ~TIM_CCER_CC3E;
// 6995 
// 6996   /* Get the TIMx CR2 register value */
// 6997   tmpcr2 =  TIMx->CR2;
// 6998 
// 6999   /* Get the TIMx CCMR2 register value */
// 7000   tmpccmrx = TIMx->CCMR2;
// 7001 
// 7002   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 7003   tmpccmrx &= ~TIM_CCMR2_OC3M;
// 7004   tmpccmrx &= ~TIM_CCMR2_CC3S;
// 7005   /* Select the Output Compare Mode */
// 7006   tmpccmrx |= OC_Config->OCMode;
// 7007 
// 7008   /* Reset the Output Polarity level */
// 7009   tmpccer &= ~TIM_CCER_CC3P;
// 7010   /* Set the Output Compare Polarity */
// 7011   tmpccer |= (OC_Config->OCPolarity << 8U);
// 7012 
// 7013   if (IS_TIM_CCXN_INSTANCE(TIMx, TIM_CHANNEL_3))
// 7014   {
// 7015     assert_param(IS_TIM_OCN_POLARITY(OC_Config->OCNPolarity));
// 7016 
// 7017     /* Reset the Output N Polarity level */
// 7018     tmpccer &= ~TIM_CCER_CC3NP;
// 7019     /* Set the Output N Polarity */
// 7020     tmpccer |= (OC_Config->OCNPolarity << 8U);
// 7021     /* Reset the Output N State */
// 7022     tmpccer &= ~TIM_CCER_CC3NE;
// 7023   }
// 7024 
// 7025   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 7026   {
// 7027     /* Check parameters */
// 7028     assert_param(IS_TIM_OCNIDLE_STATE(OC_Config->OCNIdleState));
// 7029     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 7030 
// 7031     /* Reset the Output Compare and Output Compare N IDLE State */
// 7032     tmpcr2 &= ~TIM_CR2_OIS3;
// 7033     tmpcr2 &= ~TIM_CR2_OIS3N;
// 7034     /* Set the Output Idle state */
// 7035     tmpcr2 |= (OC_Config->OCIdleState << 4U);
// 7036     /* Set the Output N Idle state */
// 7037     tmpcr2 |= (OC_Config->OCNIdleState << 4U);
// 7038   }
// 7039 
// 7040   /* Write to TIMx CR2 */
// 7041   TIMx->CR2 = tmpcr2;
// 7042 
// 7043   /* Write to TIMx CCMR2 */
// 7044   TIMx->CCMR2 = tmpccmrx;
// 7045 
// 7046   /* Set the Capture Compare Register value */
// 7047   TIMx->CCR3 = OC_Config->Pulse;
// 7048 
// 7049   /* Write to TIMx CCER */
// 7050   TIMx->CCER = tmpccer;
// 7051 }
// 7052 
// 7053 /**
// 7054   * @brief  Timer Output Compare 4 configuration
// 7055   * @param  TIMx to select the TIM peripheral
// 7056   * @param  OC_Config The output configuration structure
// 7057   * @retval None
// 7058   */
// 7059 static void TIM_OC4_SetConfig(TIM_TypeDef *TIMx, const TIM_OC_InitTypeDef *OC_Config)
// 7060 {
// 7061   uint32_t tmpccmrx;
// 7062   uint32_t tmpccer;
// 7063   uint32_t tmpcr2;
// 7064 
// 7065   /* Get the TIMx CCER register value */
// 7066   tmpccer = TIMx->CCER;
// 7067 
// 7068   /* Disable the Channel 4: Reset the CC4E Bit */
// 7069   TIMx->CCER &= ~TIM_CCER_CC4E;
// 7070 
// 7071   /* Get the TIMx CR2 register value */
// 7072   tmpcr2 =  TIMx->CR2;
// 7073 
// 7074   /* Get the TIMx CCMR2 register value */
// 7075   tmpccmrx = TIMx->CCMR2;
// 7076 
// 7077   /* Reset the Output Compare mode and Capture/Compare selection Bits */
// 7078   tmpccmrx &= ~TIM_CCMR2_OC4M;
// 7079   tmpccmrx &= ~TIM_CCMR2_CC4S;
// 7080 
// 7081   /* Select the Output Compare Mode */
// 7082   tmpccmrx |= (OC_Config->OCMode << 8U);
// 7083 
// 7084   /* Reset the Output Polarity level */
// 7085   tmpccer &= ~TIM_CCER_CC4P;
// 7086   /* Set the Output Compare Polarity */
// 7087   tmpccer |= (OC_Config->OCPolarity << 12U);
// 7088 
// 7089   if (IS_TIM_BREAK_INSTANCE(TIMx))
// 7090   {
// 7091     /* Check parameters */
// 7092     assert_param(IS_TIM_OCIDLE_STATE(OC_Config->OCIdleState));
// 7093 
// 7094     /* Reset the Output Compare IDLE State */
// 7095     tmpcr2 &= ~TIM_CR2_OIS4;
// 7096 
// 7097     /* Set the Output Idle state */
// 7098     tmpcr2 |= (OC_Config->OCIdleState << 6U);
// 7099   }
// 7100 
// 7101   /* Write to TIMx CR2 */
// 7102   TIMx->CR2 = tmpcr2;
// 7103 
// 7104   /* Write to TIMx CCMR2 */
// 7105   TIMx->CCMR2 = tmpccmrx;
// 7106 
// 7107   /* Set the Capture Compare Register value */
// 7108   TIMx->CCR4 = OC_Config->Pulse;
// 7109 
// 7110   /* Write to TIMx CCER */
// 7111   TIMx->CCER = tmpccer;
// 7112 }
// 7113 
// 7114 /**
// 7115   * @brief  Slave Timer configuration function
// 7116   * @param  htim TIM handle
// 7117   * @param  sSlaveConfig Slave timer configuration
// 7118   * @retval None
// 7119   */
// 7120 static HAL_StatusTypeDef TIM_SlaveTimer_SetConfig(TIM_HandleTypeDef *htim,
// 7121                                                   const TIM_SlaveConfigTypeDef *sSlaveConfig)
// 7122 {
// 7123   HAL_StatusTypeDef status = HAL_OK;
// 7124   uint32_t tmpsmcr;
// 7125   uint32_t tmpccmr1;
// 7126   uint32_t tmpccer;
// 7127 
// 7128   /* Get the TIMx SMCR register value */
// 7129   tmpsmcr = htim->Instance->SMCR;
// 7130 
// 7131   /* Reset the Trigger Selection Bits */
// 7132   tmpsmcr &= ~TIM_SMCR_TS;
// 7133   /* Set the Input Trigger source */
// 7134   tmpsmcr |= sSlaveConfig->InputTrigger;
// 7135 
// 7136   /* Reset the slave mode Bits */
// 7137   tmpsmcr &= ~TIM_SMCR_SMS;
// 7138   /* Set the slave mode */
// 7139   tmpsmcr |= sSlaveConfig->SlaveMode;
// 7140 
// 7141   /* Write to TIMx SMCR */
// 7142   htim->Instance->SMCR = tmpsmcr;
// 7143 
// 7144   /* Configure the trigger prescaler, filter, and polarity */
// 7145   switch (sSlaveConfig->InputTrigger)
// 7146   {
// 7147     case TIM_TS_ETRF:
// 7148     {
// 7149       /* Check the parameters */
// 7150       assert_param(IS_TIM_CLOCKSOURCE_ETRMODE1_INSTANCE(htim->Instance));
// 7151       assert_param(IS_TIM_TRIGGERPRESCALER(sSlaveConfig->TriggerPrescaler));
// 7152       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 7153       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 7154       /* Configure the ETR Trigger source */
// 7155       TIM_ETR_SetConfig(htim->Instance,
// 7156                         sSlaveConfig->TriggerPrescaler,
// 7157                         sSlaveConfig->TriggerPolarity,
// 7158                         sSlaveConfig->TriggerFilter);
// 7159       break;
// 7160     }
// 7161 
// 7162     case TIM_TS_TI1F_ED:
// 7163     {
// 7164       /* Check the parameters */
// 7165       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 7166       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 7167 
// 7168       if (sSlaveConfig->SlaveMode == TIM_SLAVEMODE_GATED)
// 7169       {
// 7170         return HAL_ERROR;
// 7171       }
// 7172 
// 7173       /* Disable the Channel 1: Reset the CC1E Bit */
// 7174       tmpccer = htim->Instance->CCER;
// 7175       htim->Instance->CCER &= ~TIM_CCER_CC1E;
// 7176       tmpccmr1 = htim->Instance->CCMR1;
// 7177 
// 7178       /* Set the filter */
// 7179       tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 7180       tmpccmr1 |= ((sSlaveConfig->TriggerFilter) << 4U);
// 7181 
// 7182       /* Write to TIMx CCMR1 and CCER registers */
// 7183       htim->Instance->CCMR1 = tmpccmr1;
// 7184       htim->Instance->CCER = tmpccer;
// 7185       break;
// 7186     }
// 7187 
// 7188     case TIM_TS_TI1FP1:
// 7189     {
// 7190       /* Check the parameters */
// 7191       assert_param(IS_TIM_CC1_INSTANCE(htim->Instance));
// 7192       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 7193       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 7194 
// 7195       /* Configure TI1 Filter and Polarity */
// 7196       TIM_TI1_ConfigInputStage(htim->Instance,
// 7197                                sSlaveConfig->TriggerPolarity,
// 7198                                sSlaveConfig->TriggerFilter);
// 7199       break;
// 7200     }
// 7201 
// 7202     case TIM_TS_TI2FP2:
// 7203     {
// 7204       /* Check the parameters */
// 7205       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 7206       assert_param(IS_TIM_TRIGGERPOLARITY(sSlaveConfig->TriggerPolarity));
// 7207       assert_param(IS_TIM_TRIGGERFILTER(sSlaveConfig->TriggerFilter));
// 7208 
// 7209       /* Configure TI2 Filter and Polarity */
// 7210       TIM_TI2_ConfigInputStage(htim->Instance,
// 7211                                sSlaveConfig->TriggerPolarity,
// 7212                                sSlaveConfig->TriggerFilter);
// 7213       break;
// 7214     }
// 7215 
// 7216     case TIM_TS_ITR0:
// 7217     case TIM_TS_ITR1:
// 7218     case TIM_TS_ITR2:
// 7219     case TIM_TS_ITR3:
// 7220     {
// 7221       /* Check the parameter */
// 7222       assert_param(IS_TIM_CC2_INSTANCE(htim->Instance));
// 7223       break;
// 7224     }
// 7225 
// 7226     default:
// 7227       status = HAL_ERROR;
// 7228       break;
// 7229   }
// 7230 
// 7231   return status;
// 7232 }
// 7233 
// 7234 /**
// 7235   * @brief  Configure the TI1 as Input.
// 7236   * @param  TIMx to select the TIM peripheral.
// 7237   * @param  TIM_ICPolarity The Input Polarity.
// 7238   *          This parameter can be one of the following values:
// 7239   *            @arg TIM_ICPOLARITY_RISING
// 7240   *            @arg TIM_ICPOLARITY_FALLING
// 7241   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 7242   * @param  TIM_ICSelection specifies the input to be used.
// 7243   *          This parameter can be one of the following values:
// 7244   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 1 is selected to be connected to IC1.
// 7245   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 1 is selected to be connected to IC2.
// 7246   *            @arg TIM_ICSELECTION_TRC: TIM Input 1 is selected to be connected to TRC.
// 7247   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 7248   *          This parameter must be a value between 0x00 and 0x0F.
// 7249   * @retval None
// 7250   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI2FP1
// 7251   *       (on channel2 path) is used as the input signal. Therefore CCMR1 must be
// 7252   *        protected against un-initialized filter and polarity values.
// 7253   */
// 7254 void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 7255                        uint32_t TIM_ICFilter)
// 7256 {
// 7257   uint32_t tmpccmr1;
// 7258   uint32_t tmpccer;
// 7259 
// 7260   /* Disable the Channel 1: Reset the CC1E Bit */
// 7261   tmpccer = TIMx->CCER;
// 7262   TIMx->CCER &= ~TIM_CCER_CC1E;
// 7263   tmpccmr1 = TIMx->CCMR1;
// 7264 
// 7265   /* Select the Input */
// 7266   if (IS_TIM_CC2_INSTANCE(TIMx) != RESET)
// 7267   {
// 7268     tmpccmr1 &= ~TIM_CCMR1_CC1S;
// 7269     tmpccmr1 |= TIM_ICSelection;
// 7270   }
// 7271   else
// 7272   {
// 7273     tmpccmr1 |= TIM_CCMR1_CC1S_0;
// 7274   }
// 7275 
// 7276   /* Set the filter */
// 7277   tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 7278   tmpccmr1 |= ((TIM_ICFilter << 4U) & TIM_CCMR1_IC1F);
// 7279 
// 7280   /* Select the Polarity and set the CC1E Bit */
// 7281   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
// 7282   tmpccer |= (TIM_ICPolarity & (TIM_CCER_CC1P | TIM_CCER_CC1NP));
// 7283 
// 7284   /* Write to TIMx CCMR1 and CCER registers */
// 7285   TIMx->CCMR1 = tmpccmr1;
// 7286   TIMx->CCER = tmpccer;
// 7287 }
// 7288 
// 7289 /**
// 7290   * @brief  Configure the Polarity and Filter for TI1.
// 7291   * @param  TIMx to select the TIM peripheral.
// 7292   * @param  TIM_ICPolarity The Input Polarity.
// 7293   *          This parameter can be one of the following values:
// 7294   *            @arg TIM_ICPOLARITY_RISING
// 7295   *            @arg TIM_ICPOLARITY_FALLING
// 7296   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 7297   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 7298   *          This parameter must be a value between 0x00 and 0x0F.
// 7299   * @retval None
// 7300   */
// 7301 static void TIM_TI1_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter)
// 7302 {
// 7303   uint32_t tmpccmr1;
// 7304   uint32_t tmpccer;
// 7305 
// 7306   /* Disable the Channel 1: Reset the CC1E Bit */
// 7307   tmpccer = TIMx->CCER;
// 7308   TIMx->CCER &= ~TIM_CCER_CC1E;
// 7309   tmpccmr1 = TIMx->CCMR1;
// 7310 
// 7311   /* Set the filter */
// 7312   tmpccmr1 &= ~TIM_CCMR1_IC1F;
// 7313   tmpccmr1 |= (TIM_ICFilter << 4U);
// 7314 
// 7315   /* Select the Polarity and set the CC1E Bit */
// 7316   tmpccer &= ~(TIM_CCER_CC1P | TIM_CCER_CC1NP);
// 7317   tmpccer |= TIM_ICPolarity;
// 7318 
// 7319   /* Write to TIMx CCMR1 and CCER registers */
// 7320   TIMx->CCMR1 = tmpccmr1;
// 7321   TIMx->CCER = tmpccer;
// 7322 }
// 7323 
// 7324 /**
// 7325   * @brief  Configure the TI2 as Input.
// 7326   * @param  TIMx to select the TIM peripheral
// 7327   * @param  TIM_ICPolarity The Input Polarity.
// 7328   *          This parameter can be one of the following values:
// 7329   *            @arg TIM_ICPOLARITY_RISING
// 7330   *            @arg TIM_ICPOLARITY_FALLING
// 7331   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 7332   * @param  TIM_ICSelection specifies the input to be used.
// 7333   *          This parameter can be one of the following values:
// 7334   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 2 is selected to be connected to IC2.
// 7335   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 2 is selected to be connected to IC1.
// 7336   *            @arg TIM_ICSELECTION_TRC: TIM Input 2 is selected to be connected to TRC.
// 7337   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 7338   *          This parameter must be a value between 0x00 and 0x0F.
// 7339   * @retval None
// 7340   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI1FP2
// 7341   *       (on channel1 path) is used as the input signal. Therefore CCMR1 must be
// 7342   *        protected against un-initialized filter and polarity values.
// 7343   */
// 7344 static void TIM_TI2_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 7345                               uint32_t TIM_ICFilter)
// 7346 {
// 7347   uint32_t tmpccmr1;
// 7348   uint32_t tmpccer;
// 7349 
// 7350   /* Disable the Channel 2: Reset the CC2E Bit */
// 7351   tmpccer = TIMx->CCER;
// 7352   TIMx->CCER &= ~TIM_CCER_CC2E;
// 7353   tmpccmr1 = TIMx->CCMR1;
// 7354 
// 7355   /* Select the Input */
// 7356   tmpccmr1 &= ~TIM_CCMR1_CC2S;
// 7357   tmpccmr1 |= (TIM_ICSelection << 8U);
// 7358 
// 7359   /* Set the filter */
// 7360   tmpccmr1 &= ~TIM_CCMR1_IC2F;
// 7361   tmpccmr1 |= ((TIM_ICFilter << 12U) & TIM_CCMR1_IC2F);
// 7362 
// 7363   /* Select the Polarity and set the CC2E Bit */
// 7364   tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
// 7365   tmpccer |= ((TIM_ICPolarity << 4U) & (TIM_CCER_CC2P | TIM_CCER_CC2NP));
// 7366 
// 7367   /* Write to TIMx CCMR1 and CCER registers */
// 7368   TIMx->CCMR1 = tmpccmr1 ;
// 7369   TIMx->CCER = tmpccer;
// 7370 }
// 7371 
// 7372 /**
// 7373   * @brief  Configure the Polarity and Filter for TI2.
// 7374   * @param  TIMx to select the TIM peripheral.
// 7375   * @param  TIM_ICPolarity The Input Polarity.
// 7376   *          This parameter can be one of the following values:
// 7377   *            @arg TIM_ICPOLARITY_RISING
// 7378   *            @arg TIM_ICPOLARITY_FALLING
// 7379   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 7380   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 7381   *          This parameter must be a value between 0x00 and 0x0F.
// 7382   * @retval None
// 7383   */
// 7384 static void TIM_TI2_ConfigInputStage(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICFilter)
// 7385 {
// 7386   uint32_t tmpccmr1;
// 7387   uint32_t tmpccer;
// 7388 
// 7389   /* Disable the Channel 2: Reset the CC2E Bit */
// 7390   tmpccer = TIMx->CCER;
// 7391   TIMx->CCER &= ~TIM_CCER_CC2E;
// 7392   tmpccmr1 = TIMx->CCMR1;
// 7393 
// 7394   /* Set the filter */
// 7395   tmpccmr1 &= ~TIM_CCMR1_IC2F;
// 7396   tmpccmr1 |= (TIM_ICFilter << 12U);
// 7397 
// 7398   /* Select the Polarity and set the CC2E Bit */
// 7399   tmpccer &= ~(TIM_CCER_CC2P | TIM_CCER_CC2NP);
// 7400   tmpccer |= (TIM_ICPolarity << 4U);
// 7401 
// 7402   /* Write to TIMx CCMR1 and CCER registers */
// 7403   TIMx->CCMR1 = tmpccmr1 ;
// 7404   TIMx->CCER = tmpccer;
// 7405 }
// 7406 
// 7407 /**
// 7408   * @brief  Configure the TI3 as Input.
// 7409   * @param  TIMx to select the TIM peripheral
// 7410   * @param  TIM_ICPolarity The Input Polarity.
// 7411   *          This parameter can be one of the following values:
// 7412   *            @arg TIM_ICPOLARITY_RISING
// 7413   *            @arg TIM_ICPOLARITY_FALLING
// 7414   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 7415   * @param  TIM_ICSelection specifies the input to be used.
// 7416   *          This parameter can be one of the following values:
// 7417   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 3 is selected to be connected to IC3.
// 7418   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 3 is selected to be connected to IC4.
// 7419   *            @arg TIM_ICSELECTION_TRC: TIM Input 3 is selected to be connected to TRC.
// 7420   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 7421   *          This parameter must be a value between 0x00 and 0x0F.
// 7422   * @retval None
// 7423   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI3FP4
// 7424   *       (on channel1 path) is used as the input signal. Therefore CCMR2 must be
// 7425   *        protected against un-initialized filter and polarity values.
// 7426   */
// 7427 static void TIM_TI3_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 7428                               uint32_t TIM_ICFilter)
// 7429 {
// 7430   uint32_t tmpccmr2;
// 7431   uint32_t tmpccer;
// 7432 
// 7433   /* Disable the Channel 3: Reset the CC3E Bit */
// 7434   tmpccer = TIMx->CCER;
// 7435   TIMx->CCER &= ~TIM_CCER_CC3E;
// 7436   tmpccmr2 = TIMx->CCMR2;
// 7437 
// 7438   /* Select the Input */
// 7439   tmpccmr2 &= ~TIM_CCMR2_CC3S;
// 7440   tmpccmr2 |= TIM_ICSelection;
// 7441 
// 7442   /* Set the filter */
// 7443   tmpccmr2 &= ~TIM_CCMR2_IC3F;
// 7444   tmpccmr2 |= ((TIM_ICFilter << 4U) & TIM_CCMR2_IC3F);
// 7445 
// 7446   /* Select the Polarity and set the CC3E Bit */
// 7447   tmpccer &= ~(TIM_CCER_CC3P | TIM_CCER_CC3NP);
// 7448   tmpccer |= ((TIM_ICPolarity << 8U) & (TIM_CCER_CC3P | TIM_CCER_CC3NP));
// 7449 
// 7450   /* Write to TIMx CCMR2 and CCER registers */
// 7451   TIMx->CCMR2 = tmpccmr2;
// 7452   TIMx->CCER = tmpccer;
// 7453 }
// 7454 
// 7455 /**
// 7456   * @brief  Configure the TI4 as Input.
// 7457   * @param  TIMx to select the TIM peripheral
// 7458   * @param  TIM_ICPolarity The Input Polarity.
// 7459   *          This parameter can be one of the following values:
// 7460   *            @arg TIM_ICPOLARITY_RISING
// 7461   *            @arg TIM_ICPOLARITY_FALLING
// 7462   *            @arg TIM_ICPOLARITY_BOTHEDGE
// 7463   * @param  TIM_ICSelection specifies the input to be used.
// 7464   *          This parameter can be one of the following values:
// 7465   *            @arg TIM_ICSELECTION_DIRECTTI: TIM Input 4 is selected to be connected to IC4.
// 7466   *            @arg TIM_ICSELECTION_INDIRECTTI: TIM Input 4 is selected to be connected to IC3.
// 7467   *            @arg TIM_ICSELECTION_TRC: TIM Input 4 is selected to be connected to TRC.
// 7468   * @param  TIM_ICFilter Specifies the Input Capture Filter.
// 7469   *          This parameter must be a value between 0x00 and 0x0F.
// 7470   * @note TIM_ICFilter and TIM_ICPolarity are not used in INDIRECT mode as TI4FP3
// 7471   *       (on channel1 path) is used as the input signal. Therefore CCMR2 must be
// 7472   *        protected against un-initialized filter and polarity values.
// 7473   * @retval None
// 7474   */
// 7475 static void TIM_TI4_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection,
// 7476                               uint32_t TIM_ICFilter)
// 7477 {
// 7478   uint32_t tmpccmr2;
// 7479   uint32_t tmpccer;
// 7480 
// 7481   /* Disable the Channel 4: Reset the CC4E Bit */
// 7482   tmpccer = TIMx->CCER;
// 7483   TIMx->CCER &= ~TIM_CCER_CC4E;
// 7484   tmpccmr2 = TIMx->CCMR2;
// 7485 
// 7486   /* Select the Input */
// 7487   tmpccmr2 &= ~TIM_CCMR2_CC4S;
// 7488   tmpccmr2 |= (TIM_ICSelection << 8U);
// 7489 
// 7490   /* Set the filter */
// 7491   tmpccmr2 &= ~TIM_CCMR2_IC4F;
// 7492   tmpccmr2 |= ((TIM_ICFilter << 12U) & TIM_CCMR2_IC4F);
// 7493 
// 7494   /* Select the Polarity and set the CC4E Bit */
// 7495   tmpccer &= ~(TIM_CCER_CC4P | TIM_CCER_CC4NP);
// 7496   tmpccer |= ((TIM_ICPolarity << 12U) & (TIM_CCER_CC4P | TIM_CCER_CC4NP));
// 7497 
// 7498   /* Write to TIMx CCMR2 and CCER registers */
// 7499   TIMx->CCMR2 = tmpccmr2;
// 7500   TIMx->CCER = tmpccer ;
// 7501 }
// 7502 
// 7503 /**
// 7504   * @brief  Selects the Input Trigger source
// 7505   * @param  TIMx to select the TIM peripheral
// 7506   * @param  InputTriggerSource The Input Trigger source.
// 7507   *          This parameter can be one of the following values:
// 7508   *            @arg TIM_TS_ITR0: Internal Trigger 0
// 7509   *            @arg TIM_TS_ITR1: Internal Trigger 1
// 7510   *            @arg TIM_TS_ITR2: Internal Trigger 2
// 7511   *            @arg TIM_TS_ITR3: Internal Trigger 3
// 7512   *            @arg TIM_TS_TI1F_ED: TI1 Edge Detector
// 7513   *            @arg TIM_TS_TI1FP1: Filtered Timer Input 1
// 7514   *            @arg TIM_TS_TI2FP2: Filtered Timer Input 2
// 7515   *            @arg TIM_TS_ETRF: External Trigger input
// 7516   * @retval None
// 7517   */
// 7518 static void TIM_ITRx_SetConfig(TIM_TypeDef *TIMx, uint32_t InputTriggerSource)
// 7519 {
// 7520   uint32_t tmpsmcr;
// 7521 
// 7522   /* Get the TIMx SMCR register value */
// 7523   tmpsmcr = TIMx->SMCR;
// 7524   /* Reset the TS Bits */
// 7525   tmpsmcr &= ~TIM_SMCR_TS;
// 7526   /* Set the Input Trigger source and the slave mode*/
// 7527   tmpsmcr |= (InputTriggerSource | TIM_SLAVEMODE_EXTERNAL1);
// 7528   /* Write to TIMx SMCR */
// 7529   TIMx->SMCR = tmpsmcr;
// 7530 }
// 7531 /**
// 7532   * @brief  Configures the TIMx External Trigger (ETR).
// 7533   * @param  TIMx to select the TIM peripheral
// 7534   * @param  TIM_ExtTRGPrescaler The external Trigger Prescaler.
// 7535   *          This parameter can be one of the following values:
// 7536   *            @arg TIM_ETRPRESCALER_DIV1: ETRP Prescaler OFF.
// 7537   *            @arg TIM_ETRPRESCALER_DIV2: ETRP frequency divided by 2.
// 7538   *            @arg TIM_ETRPRESCALER_DIV4: ETRP frequency divided by 4.
// 7539   *            @arg TIM_ETRPRESCALER_DIV8: ETRP frequency divided by 8.
// 7540   * @param  TIM_ExtTRGPolarity The external Trigger Polarity.
// 7541   *          This parameter can be one of the following values:
// 7542   *            @arg TIM_ETRPOLARITY_INVERTED: active low or falling edge active.
// 7543   *            @arg TIM_ETRPOLARITY_NONINVERTED: active high or rising edge active.
// 7544   * @param  ExtTRGFilter External Trigger Filter.
// 7545   *          This parameter must be a value between 0x00 and 0x0F
// 7546   * @retval None
// 7547   */
// 7548 void TIM_ETR_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ExtTRGPrescaler,
// 7549                        uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter)
// 7550 {
// 7551   uint32_t tmpsmcr;
// 7552 
// 7553   tmpsmcr = TIMx->SMCR;
// 7554 
// 7555   /* Reset the ETR Bits */
// 7556   tmpsmcr &= ~(TIM_SMCR_ETF | TIM_SMCR_ETPS | TIM_SMCR_ECE | TIM_SMCR_ETP);
// 7557 
// 7558   /* Set the Prescaler, the Filter value and the Polarity */
// 7559   tmpsmcr |= (uint32_t)(TIM_ExtTRGPrescaler | (TIM_ExtTRGPolarity | (ExtTRGFilter << 8U)));
// 7560 
// 7561   /* Write to TIMx SMCR */
// 7562   TIMx->SMCR = tmpsmcr;
// 7563 }
// 7564 
// 7565 /**
// 7566   * @brief  Enables or disables the TIM Capture Compare Channel x.
// 7567   * @param  TIMx to select the TIM peripheral
// 7568   * @param  Channel specifies the TIM Channel
// 7569   *          This parameter can be one of the following values:
// 7570   *            @arg TIM_CHANNEL_1: TIM Channel 1
// 7571   *            @arg TIM_CHANNEL_2: TIM Channel 2
// 7572   *            @arg TIM_CHANNEL_3: TIM Channel 3
// 7573   *            @arg TIM_CHANNEL_4: TIM Channel 4
// 7574   * @param  ChannelState specifies the TIM Channel CCxE bit new state.
// 7575   *          This parameter can be: TIM_CCx_ENABLE or TIM_CCx_DISABLE.
// 7576   * @retval None
// 7577   */
// 7578 void TIM_CCxChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelState)
// 7579 {
// 7580   uint32_t tmp;
// 7581 
// 7582   /* Check the parameters */
// 7583   assert_param(IS_TIM_CC1_INSTANCE(TIMx));
// 7584   assert_param(IS_TIM_CHANNELS(Channel));
// 7585 
// 7586   tmp = TIM_CCER_CC1E << (Channel & 0x1FU); /* 0x1FU = 31 bits max shift */
// 7587 
// 7588   /* Reset the CCxE Bit */
// 7589   TIMx->CCER &= ~tmp;
// 7590 
// 7591   /* Set or reset the CCxE Bit */
// 7592   TIMx->CCER |= (uint32_t)(ChannelState << (Channel & 0x1FU)); /* 0x1FU = 31 bits max shift */
// 7593 }
// 7594 
// 7595 #if (USE_HAL_TIM_REGISTER_CALLBACKS == 1)
// 7596 /**
// 7597   * @brief  Reset interrupt callbacks to the legacy weak callbacks.
// 7598   * @param  htim pointer to a TIM_HandleTypeDef structure that contains
// 7599   *                the configuration information for TIM module.
// 7600   * @retval None
// 7601   */
// 7602 void TIM_ResetCallback(TIM_HandleTypeDef *htim)
// 7603 {
// 7604   /* Reset the TIM callback to the legacy weak callbacks */
// 7605   htim->PeriodElapsedCallback             = HAL_TIM_PeriodElapsedCallback;
// 7606   htim->PeriodElapsedHalfCpltCallback     = HAL_TIM_PeriodElapsedHalfCpltCallback;
// 7607   htim->TriggerCallback                   = HAL_TIM_TriggerCallback;
// 7608   htim->TriggerHalfCpltCallback           = HAL_TIM_TriggerHalfCpltCallback;
// 7609   htim->IC_CaptureCallback                = HAL_TIM_IC_CaptureCallback;
// 7610   htim->IC_CaptureHalfCpltCallback        = HAL_TIM_IC_CaptureHalfCpltCallback;
// 7611   htim->OC_DelayElapsedCallback           = HAL_TIM_OC_DelayElapsedCallback;
// 7612   htim->PWM_PulseFinishedCallback         = HAL_TIM_PWM_PulseFinishedCallback;
// 7613   htim->PWM_PulseFinishedHalfCpltCallback = HAL_TIM_PWM_PulseFinishedHalfCpltCallback;
// 7614   htim->ErrorCallback                     = HAL_TIM_ErrorCallback;
// 7615   htim->CommutationCallback               = HAL_TIMEx_CommutCallback;
// 7616   htim->CommutationHalfCpltCallback       = HAL_TIMEx_CommutHalfCpltCallback;
// 7617   htim->BreakCallback                     = HAL_TIMEx_BreakCallback;
// 7618 }
// 7619 #endif /* USE_HAL_TIM_REGISTER_CALLBACKS */
// 7620 
// 7621 /**
// 7622   * @}
// 7623   */
// 7624 
// 7625 #endif /* HAL_TIM_MODULE_ENABLED */
// 7626 /**
// 7627   * @}
// 7628   */
// 7629 
// 7630 /**
// 7631   * @}
// 7632   */
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none
