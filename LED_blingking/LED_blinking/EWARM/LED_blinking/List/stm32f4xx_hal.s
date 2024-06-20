///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW2D9.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_NVIC_SetPriority
        EXTERN HAL_NVIC_SetPriorityGrouping
        EXTERN HAL_SYSTICK_Config
        EXTERN SystemCoreClock

        PUBLIC HAL_DBGMCU_DisableDBGSleepMode
        PUBLIC HAL_DBGMCU_DisableDBGStandbyMode
        PUBLIC HAL_DBGMCU_DisableDBGStopMode
        PUBLIC HAL_DBGMCU_EnableDBGSleepMode
        PUBLIC HAL_DBGMCU_EnableDBGStandbyMode
        PUBLIC HAL_DBGMCU_EnableDBGStopMode
        PUBLIC HAL_DeInit
        PUBWEAK HAL_Delay
        PUBLIC HAL_DisableCompensationCell
        PUBLIC HAL_EnableCompensationCell
        PUBLIC HAL_GetDEVID
        PUBLIC HAL_GetHalVersion
        PUBLIC HAL_GetREVID
        PUBWEAK HAL_GetTick
        PUBLIC HAL_GetTickFreq
        PUBLIC HAL_GetTickPrio
        PUBLIC HAL_GetUIDw0
        PUBLIC HAL_GetUIDw1
        PUBLIC HAL_GetUIDw2
        PUBWEAK HAL_IncTick
        PUBLIC HAL_Init
        PUBWEAK HAL_InitTick
        PUBWEAK HAL_MspDeInit
        PUBWEAK HAL_MspInit
        PUBWEAK HAL_ResumeTick
        PUBLIC HAL_SetTickFreq
        PUBWEAK HAL_SuspendTick
        PUBLIC uwTick
        PUBLIC uwTickFreq
        PUBLIC uwTickPrio
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal.c
//    4   * @author  MCD Application Team
//    5   * @brief   HAL module driver.
//    6   *          This is the common part of the HAL initialization
//    7   *
//    8   ******************************************************************************
//    9   * @attention
//   10   *
//   11   * Copyright (c) 2017 STMicroelectronics.
//   12   * All rights reserved.
//   13   *
//   14   * This software is licensed under terms that can be found in the LICENSE file
//   15   * in the root directory of this software component.
//   16   * If no LICENSE file comes with this software, it is provided AS-IS.
//   17   *
//   18   ******************************************************************************
//   19   @verbatim
//   20   ==============================================================================
//   21                      ##### How to use this driver #####
//   22   ==============================================================================
//   23     [..]
//   24     The common HAL driver contains a set of generic and common APIs that can be
//   25     used by the PPP peripheral drivers and the user to start using the HAL. 
//   26     [..]
//   27     The HAL contains two APIs' categories: 
//   28          (+) Common HAL APIs
//   29          (+) Services HAL APIs
//   30 
//   31   @endverbatim
//   32   ******************************************************************************
//   33   */ 
//   34 
//   35 /* Includes ------------------------------------------------------------------*/
//   36 #include "stm32f4xx_hal.h"
//   37 
//   38 /** @addtogroup STM32F4xx_HAL_Driver
//   39   * @{
//   40   */
//   41 
//   42 /** @defgroup HAL HAL
//   43   * @brief HAL module driver.
//   44   * @{
//   45   */
//   46 
//   47 /* Private typedef -----------------------------------------------------------*/
//   48 /* Private define ------------------------------------------------------------*/
//   49 /** @addtogroup HAL_Private_Constants
//   50   * @{
//   51   */
//   52 /**
//   53   * @brief STM32F4xx HAL Driver version number V1.8.2
//   54   */
//   55 #define __STM32F4xx_HAL_VERSION_MAIN   (0x01U) /*!< [31:24] main version */
//   56 #define __STM32F4xx_HAL_VERSION_SUB1   (0x08U) /*!< [23:16] sub1 version */
//   57 #define __STM32F4xx_HAL_VERSION_SUB2   (0x02U) /*!< [15:8]  sub2 version */
//   58 #define __STM32F4xx_HAL_VERSION_RC     (0x00U) /*!< [7:0]  release candidate */ 
//   59 #define __STM32F4xx_HAL_VERSION         ((__STM32F4xx_HAL_VERSION_MAIN << 24U)\ 
//   60                                         |(__STM32F4xx_HAL_VERSION_SUB1 << 16U)\ 
//   61                                         |(__STM32F4xx_HAL_VERSION_SUB2 << 8U )\ 
//   62                                         |(__STM32F4xx_HAL_VERSION_RC))
//   63                                         
//   64 #define IDCODE_DEVID_MASK    0x00000FFFU
//   65 
//   66 /* ------------ RCC registers bit address in the alias region ----------- */
//   67 #define SYSCFG_OFFSET             (SYSCFG_BASE - PERIPH_BASE)
//   68 /* ---  MEMRMP Register ---*/ 
//   69 /* Alias word address of UFB_MODE bit */ 
//   70 #define MEMRMP_OFFSET             SYSCFG_OFFSET 
//   71 #define UFB_MODE_BIT_NUMBER       SYSCFG_MEMRMP_UFB_MODE_Pos
//   72 #define UFB_MODE_BB               (uint32_t)(PERIPH_BB_BASE + (MEMRMP_OFFSET * 32U) + (UFB_MODE_BIT_NUMBER * 4U)) 
//   73 
//   74 /* ---  CMPCR Register ---*/ 
//   75 /* Alias word address of CMP_PD bit */ 
//   76 #define CMPCR_OFFSET              (SYSCFG_OFFSET + 0x20U) 
//   77 #define CMP_PD_BIT_NUMBER         SYSCFG_CMPCR_CMP_PD_Pos
//   78 #define CMPCR_CMP_PD_BB           (uint32_t)(PERIPH_BB_BASE + (CMPCR_OFFSET * 32U) + (CMP_PD_BIT_NUMBER * 4U))
//   79 
//   80 /* ---  MCHDLYCR Register ---*/ 
//   81 /* Alias word address of BSCKSEL bit */ 
//   82 #define MCHDLYCR_OFFSET            (SYSCFG_OFFSET + 0x30U) 
//   83 #define BSCKSEL_BIT_NUMBER         SYSCFG_MCHDLYCR_BSCKSEL_Pos
//   84 #define MCHDLYCR_BSCKSEL_BB        (uint32_t)(PERIPH_BB_BASE + (MCHDLYCR_OFFSET * 32U) + (BSCKSEL_BIT_NUMBER * 4U))
//   85 /**
//   86   * @}
//   87   */
//   88 
//   89 /* Private macro -------------------------------------------------------------*/
//   90 /* Private variables ---------------------------------------------------------*/
//   91 /** @addtogroup HAL_Private_Variables
//   92   * @{
//   93   */

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   94 __IO uint32_t uwTick;
uwTick:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   95 uint32_t uwTickPrio   = (1UL << __NVIC_PRIO_BITS); /* Invalid PRIO */
uwTickPrio:
        DATA32
        DC32 16

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//   96 HAL_TickFreqTypeDef uwTickFreq = HAL_TICK_FREQ_DEFAULT;  /* 1KHz */
uwTickFreq:
        DATA8
        DC8 1
//   97 /**
//   98   * @}
//   99   */
//  100 /* Private function prototypes -----------------------------------------------*/
//  101 /* Private functions ---------------------------------------------------------*/
//  102 
//  103 /** @defgroup HAL_Exported_Functions HAL Exported Functions
//  104   * @{
//  105   */
//  106 
//  107 /** @defgroup HAL_Exported_Functions_Group1 Initialization and de-initialization Functions 
//  108  *  @brief    Initialization and de-initialization functions
//  109  *
//  110 @verbatim    
//  111  ===============================================================================
//  112               ##### Initialization and Configuration functions #####
//  113  ===============================================================================
//  114     [..]  This section provides functions allowing to:
//  115       (+) Initializes the Flash interface the NVIC allocation and initial clock 
//  116           configuration. It initializes the systick also when timeout is needed 
//  117           and the backup domain when enabled.
//  118       (+) De-Initializes common part of the HAL.
//  119       (+) Configure the time base source to have 1ms time base with a dedicated 
//  120           Tick interrupt priority. 
//  121         (++) SysTick timer is used by default as source of time base, but user
//  122              can eventually implement his proper time base source (a general purpose 
//  123              timer for example or other time source), keeping in mind that Time base 
//  124              duration should be kept 1ms since PPP_TIMEOUT_VALUEs are defined and 
//  125              handled in milliseconds basis.
//  126         (++) Time base configuration function (HAL_InitTick ()) is called automatically 
//  127              at the beginning of the program after reset by HAL_Init() or at any time 
//  128              when clock is configured, by HAL_RCC_ClockConfig(). 
//  129         (++) Source of time base is configured  to generate interrupts at regular 
//  130              time intervals. Care must be taken if HAL_Delay() is called from a 
//  131              peripheral ISR process, the Tick interrupt line must have higher priority 
//  132             (numerically lower) than the peripheral interrupt. Otherwise the caller 
//  133             ISR process will be blocked. 
//  134        (++) functions affecting time base configurations are declared as __weak  
//  135              to make  override possible  in case of other  implementations in user file.
//  136 @endverbatim
//  137   * @{
//  138   */
//  139 
//  140 /**
//  141   * @brief  This function is used to initialize the HAL Library; it must be the first 
//  142   *         instruction to be executed in the main program (before to call any other
//  143   *         HAL function), it performs the following:
//  144   *           Configure the Flash prefetch, instruction and Data caches.
//  145   *           Configures the SysTick to generate an interrupt each 1 millisecond,
//  146   *           which is clocked by the HSI (at this stage, the clock is not yet
//  147   *           configured and thus the system is running from the internal HSI at 16 MHz).
//  148   *           Set NVIC Group Priority to 4.
//  149   *           Calls the HAL_MspInit() callback function defined in user file 
//  150   *           "stm32f4xx_hal_msp.c" to do the global low level hardware initialization 
//  151   *            
//  152   * @note   SysTick is used as time base for the HAL_Delay() function, the application
//  153   *         need to ensure that the SysTick time base is always set to 1 millisecond
//  154   *         to have correct HAL operation.
//  155   * @retval HAL status
//  156   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_Init
        THUMB
//  157 HAL_StatusTypeDef HAL_Init(void)
//  158 {
HAL_Init:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  159   /* Configure Flash prefetch, Instruction cache, Data cache */ 
//  160 #if (INSTRUCTION_CACHE_ENABLE != 0U)
//  161   __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
        LDR.N    R0,??DataTable18  ;; 0x40023c00
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x200
        STR      R1,[R0, #+0]
//  162 #endif /* INSTRUCTION_CACHE_ENABLE */
//  163 
//  164 #if (DATA_CACHE_ENABLE != 0U)
//  165   __HAL_FLASH_DATA_CACHE_ENABLE();
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x400
        STR      R1,[R0, #+0]
//  166 #endif /* DATA_CACHE_ENABLE */
//  167 
//  168 #if (PREFETCH_ENABLE != 0U)
//  169   __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x100
        STR      R1,[R0, #+0]
//  170 #endif /* PREFETCH_ENABLE */
//  171 
//  172   /* Set Interrupt Group Priority */
//  173   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
        MOVS     R0,#+3
          CFI FunCall HAL_NVIC_SetPriorityGrouping
        BL       HAL_NVIC_SetPriorityGrouping
//  174 
//  175   /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
//  176   HAL_InitTick(TICK_INT_PRIORITY);
        MOVS     R0,#+15
          CFI FunCall HAL_InitTick
        BL       HAL_InitTick
//  177 
//  178   /* Init the low level hardware */
//  179   HAL_MspInit();
          CFI FunCall HAL_MspInit
        BL       HAL_MspInit
//  180 
//  181   /* Return function status */
//  182   return HAL_OK;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  183 }
          CFI EndBlock cfiBlock0
//  184 
//  185 /**
//  186   * @brief  This function de-Initializes common part of the HAL and stops the systick.
//  187   *         This function is optional.   
//  188   * @retval HAL status
//  189   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_DeInit
        THUMB
//  190 HAL_StatusTypeDef HAL_DeInit(void)
//  191 {
HAL_DeInit:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//  192   /* Reset of all peripherals */
//  193   __HAL_RCC_APB1_FORCE_RESET();
        LDR.N    R0,??DataTable18_1  ;; 0x40023820
        LDR.N    R1,??DataTable18_2  ;; 0xf6fec9ff
        STR      R1,[R0, #+0]
//  194   __HAL_RCC_APB1_RELEASE_RESET();
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  195 
//  196   __HAL_RCC_APB2_FORCE_RESET();
        LDR.N    R0,??DataTable18_3  ;; 0x40023824
        LDR.N    R1,??DataTable18_4  ;; 0x4777933
        STR      R1,[R0, #+0]
//  197   __HAL_RCC_APB2_RELEASE_RESET();
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  198 
//  199   __HAL_RCC_AHB1_FORCE_RESET();
        LDR.N    R0,??DataTable18_5  ;; 0x40023810
        LDR.N    R1,??DataTable18_6  ;; 0x226011ff
        STR      R1,[R0, #+0]
//  200   __HAL_RCC_AHB1_RELEASE_RESET();
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  201 
//  202   __HAL_RCC_AHB2_FORCE_RESET();
        LDR.N    R0,??DataTable18_7  ;; 0x40023814
        MOVS     R1,#+193
        STR      R1,[R0, #+0]
//  203   __HAL_RCC_AHB2_RELEASE_RESET();
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  204 
//  205   __HAL_RCC_AHB3_FORCE_RESET();
        LDR.N    R0,??DataTable18_8  ;; 0x40023818
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//  206   __HAL_RCC_AHB3_RELEASE_RESET();
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  207 
//  208   /* De-Init the low level hardware */
//  209   HAL_MspDeInit();
          CFI FunCall HAL_MspDeInit
        BL       HAL_MspDeInit
//  210     
//  211   /* Return function status */
//  212   return HAL_OK;
        MOVS     R0,#+0
        POP      {R1,PC}          ;; return
//  213 }
          CFI EndBlock cfiBlock1
//  214 
//  215 /**
//  216   * @brief  Initialize the MSP.
//  217   * @retval None
//  218   */
//  219 __weak void HAL_MspInit(void)
//  220 {
//  221   /* NOTE : This function should not be modified, when the callback is needed,
//  222             the HAL_MspInit could be implemented in the user file
//  223    */
//  224 }
//  225 
//  226 /**
//  227   * @brief  DeInitializes the MSP.
//  228   * @retval None
//  229   */
//  230 __weak void HAL_MspDeInit(void)
//  231 {
//  232   /* NOTE : This function should not be modified, when the callback is needed,
//  233             the HAL_MspDeInit could be implemented in the user file
//  234    */ 
//  235 }
//  236 
//  237 /**
//  238   * @brief This function configures the source of the time base.
//  239   *        The time source is configured  to have 1ms time base with a dedicated 
//  240   *        Tick interrupt priority.
//  241   * @note This function is called  automatically at the beginning of program after
//  242   *       reset by HAL_Init() or at any time when clock is reconfigured  by HAL_RCC_ClockConfig().
//  243   * @note In the default implementation, SysTick timer is the source of time base. 
//  244   *       It is used to generate interrupts at regular time intervals. 
//  245   *       Care must be taken if HAL_Delay() is called from a peripheral ISR process, 
//  246   *       The SysTick interrupt must have higher priority (numerically lower)
//  247   *       than the peripheral interrupt. Otherwise the caller ISR process will be blocked.
//  248   *       The function is declared as __weak  to be overwritten  in case of other
//  249   *       implementation  in user file.
//  250   * @param TickPriority Tick interrupt priority.
//  251   * @retval HAL status
//  252   */
//  253 __weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
//  254 {
//  255   /* Configure the SysTick to have interrupt in 1ms time basis*/
//  256   if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
//  257   {
//  258     return HAL_ERROR;
//  259   }
//  260 
//  261   /* Configure the SysTick IRQ priority */
//  262   if (TickPriority < (1UL << __NVIC_PRIO_BITS))
//  263   {
//  264     HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
//  265     uwTickPrio = TickPriority;
//  266   }
//  267   else
//  268   {
//  269     return HAL_ERROR;
//  270   }
//  271 
//  272   /* Return function status */
//  273   return HAL_OK;
//  274 }
//  275 
//  276 /**
//  277   * @}
//  278   */
//  279 
//  280 /** @defgroup HAL_Exported_Functions_Group2 HAL Control functions 
//  281  *  @brief    HAL Control functions
//  282  *
//  283 @verbatim
//  284  ===============================================================================
//  285                       ##### HAL Control functions #####
//  286  ===============================================================================
//  287     [..]  This section provides functions allowing to:
//  288       (+) Provide a tick value in millisecond
//  289       (+) Provide a blocking delay in millisecond
//  290       (+) Suspend the time base source interrupt
//  291       (+) Resume the time base source interrupt
//  292       (+) Get the HAL API driver version
//  293       (+) Get the device identifier
//  294       (+) Get the device revision identifier
//  295       (+) Enable/Disable Debug module during SLEEP mode
//  296       (+) Enable/Disable Debug module during STOP mode
//  297       (+) Enable/Disable Debug module during STANDBY mode
//  298 
//  299 @endverbatim
//  300   * @{
//  301   */
//  302 
//  303 /**
//  304   * @brief This function is called to increment  a global variable "uwTick"
//  305   *        used as application time base.
//  306   * @note In the default implementation, this variable is incremented each 1ms
//  307   *       in SysTick ISR.
//  308  * @note This function is declared as __weak to be overwritten in case of other 
//  309   *      implementations in user file.
//  310   * @retval None
//  311   */
//  312 __weak void HAL_IncTick(void)
//  313 {
//  314   uwTick += uwTickFreq;
//  315 }
//  316 
//  317 /**
//  318   * @brief Provides a tick value in millisecond.
//  319   * @note This function is declared as __weak to be overwritten in case of other 
//  320   *       implementations in user file.
//  321   * @retval tick value
//  322   */
//  323 __weak uint32_t HAL_GetTick(void)
//  324 {
//  325   return uwTick;
//  326 }
//  327 
//  328 /**
//  329   * @brief This function returns a tick priority.
//  330   * @retval tick priority
//  331   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_GetTickPrio
          CFI NoCalls
        THUMB
//  332 uint32_t HAL_GetTickPrio(void)
//  333 {
//  334   return uwTickPrio;
HAL_GetTickPrio:
        LDR.N    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  335 }
          CFI EndBlock cfiBlock2
//  336 
//  337 /**
//  338   * @brief Set new tick Freq.
//  339   * @retval Status
//  340   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_SetTickFreq
        THUMB
//  341 HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq)
//  342 {
HAL_SetTickFreq:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R1,R0
//  343   HAL_StatusTypeDef status  = HAL_OK;
        MOVS     R0,#+0
//  344   HAL_TickFreqTypeDef prevTickFreq;
//  345 
//  346   assert_param(IS_TICKFREQ(Freq));
//  347 
//  348   if (uwTickFreq != Freq)
        LDR.N    R5,??DataTable18_10
        LDRB     R2,[R5, #+0]
        MOVS     R3,R1
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R2,R3
        BEQ.N    ??HAL_SetTickFreq_0
//  349   {
//  350     /* Back up uwTickFreq frequency */
//  351     prevTickFreq = uwTickFreq;
        LDRB     R4,[R5, #+0]
//  352 
//  353     /* Update uwTickFreq global variable used by HAL_InitTick() */
//  354     uwTickFreq = Freq;
        STRB     R1,[R5, #+0]
//  355 
//  356     /* Apply the new tick Freq  */
//  357     status = HAL_InitTick(uwTickPrio);
        LDR.N    R0,??DataTable18_9
        LDR      R0,[R0, #+0]
          CFI FunCall HAL_InitTick
        BL       HAL_InitTick
//  358 
//  359     if (status != HAL_OK)
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??HAL_SetTickFreq_0
//  360     {
//  361       /* Restore previous tick frequency */
//  362       uwTickFreq = prevTickFreq;
        STRB     R4,[R5, #+0]
//  363     }
//  364   }
//  365 
//  366   return status;
??HAL_SetTickFreq_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  367 }
          CFI EndBlock cfiBlock3
//  368 
//  369 /**
//  370   * @brief Return tick frequency.
//  371   * @retval Tick frequency.
//  372   *         Value of @ref HAL_TickFreqTypeDef.
//  373   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_GetTickFreq
          CFI NoCalls
        THUMB
//  374 HAL_TickFreqTypeDef HAL_GetTickFreq(void)
//  375 {
//  376   return uwTickFreq;
HAL_GetTickFreq:
        LDR.N    R0,??DataTable18_10
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
//  377 }
          CFI EndBlock cfiBlock4
//  378 
//  379 /**
//  380   * @brief This function provides minimum delay (in milliseconds) based 
//  381   *        on variable incremented.
//  382   * @note In the default implementation , SysTick timer is the source of time base.
//  383   *       It is used to generate interrupts at regular time intervals where uwTick
//  384   *       is incremented.
//  385   * @note This function is declared as __weak to be overwritten in case of other
//  386   *       implementations in user file.
//  387   * @param Delay specifies the delay time length, in milliseconds.
//  388   * @retval None
//  389   */
//  390 __weak void HAL_Delay(uint32_t Delay)
//  391 {
//  392   uint32_t tickstart = HAL_GetTick();
//  393   uint32_t wait = Delay;
//  394 
//  395   /* Add a freq to guarantee minimum wait */
//  396   if (wait < HAL_MAX_DELAY)
//  397   {
//  398     wait += (uint32_t)(uwTickFreq);
//  399   }
//  400 
//  401   while((HAL_GetTick() - tickstart) < wait)
//  402   {
//  403   }
//  404 }
//  405 
//  406 /**
//  407   * @brief Suspend Tick increment.
//  408   * @note In the default implementation , SysTick timer is the source of time base. It is
//  409   *       used to generate interrupts at regular time intervals. Once HAL_SuspendTick()
//  410   *       is called, the SysTick interrupt will be disabled and so Tick increment 
//  411   *       is suspended.
//  412   * @note This function is declared as __weak to be overwritten in case of other
//  413   *       implementations in user file.
//  414   * @retval None
//  415   */
//  416 __weak void HAL_SuspendTick(void)
//  417 {
//  418   /* Disable SysTick Interrupt */
//  419   SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk;
//  420 }
//  421 
//  422 /**
//  423   * @brief Resume Tick increment.
//  424   * @note In the default implementation , SysTick timer is the source of time base. It is
//  425   *       used to generate interrupts at regular time intervals. Once HAL_ResumeTick()
//  426   *       is called, the SysTick interrupt will be enabled and so Tick increment 
//  427   *       is resumed.
//  428   * @note This function is declared as __weak to be overwritten in case of other
//  429   *       implementations in user file.
//  430   * @retval None
//  431   */
//  432 __weak void HAL_ResumeTick(void)
//  433 {
//  434   /* Enable SysTick Interrupt */
//  435   SysTick->CTRL  |= SysTick_CTRL_TICKINT_Msk;
//  436 }
//  437 
//  438 /**
//  439   * @brief  Returns the HAL revision
//  440   * @retval version : 0xXYZR (8bits for each decimal, R for RC)
//  441   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_GetHalVersion
          CFI NoCalls
        THUMB
//  442 uint32_t HAL_GetHalVersion(void)
//  443 {
//  444   return __STM32F4xx_HAL_VERSION;
HAL_GetHalVersion:
        LDR.N    R0,??DataTable18_11  ;; 0x1080200
        BX       LR               ;; return
//  445 }
          CFI EndBlock cfiBlock5
//  446 
//  447 /**
//  448   * @brief  Returns the device revision identifier.
//  449   * @retval Device revision identifier
//  450   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_GetREVID
          CFI NoCalls
        THUMB
//  451 uint32_t HAL_GetREVID(void)
//  452 {
//  453   return((DBGMCU->IDCODE) >> 16U);
HAL_GetREVID:
        LDR.N    R0,??DataTable18_12  ;; 0xe0042000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        BX       LR               ;; return
//  454 }
          CFI EndBlock cfiBlock6
//  455 
//  456 /**
//  457   * @brief  Returns the device identifier.
//  458   * @retval Device identifier
//  459   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_GetDEVID
          CFI NoCalls
        THUMB
//  460 uint32_t HAL_GetDEVID(void)
//  461 {
//  462   return((DBGMCU->IDCODE) & IDCODE_DEVID_MASK);
HAL_GetDEVID:
        LDR.N    R0,??DataTable18_12  ;; 0xe0042000
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20       ;; ZeroExtS R0,R0,#+20,#+20
        LSRS     R0,R0,#+20
        BX       LR               ;; return
//  463 }
          CFI EndBlock cfiBlock7
//  464 
//  465 /**
//  466   * @brief  Enable the Debug Module during SLEEP mode
//  467   * @retval None
//  468   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_DBGMCU_EnableDBGSleepMode
          CFI NoCalls
        THUMB
//  469 void HAL_DBGMCU_EnableDBGSleepMode(void)
//  470 {
//  471   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
HAL_DBGMCU_EnableDBGSleepMode:
        LDR.N    R0,??DataTable18_13  ;; 0xe0042004
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STR      R1,[R0, #+0]
//  472 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  473 
//  474 /**
//  475   * @brief  Disable the Debug Module during SLEEP mode
//  476   * @retval None
//  477   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_DBGMCU_DisableDBGSleepMode
          CFI NoCalls
        THUMB
//  478 void HAL_DBGMCU_DisableDBGSleepMode(void)
//  479 {
//  480   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
HAL_DBGMCU_DisableDBGSleepMode:
        LDR.N    R0,??DataTable18_13  ;; 0xe0042004
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        STR      R1,[R0, #+0]
//  481 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  482 
//  483 /**
//  484   * @brief  Enable the Debug Module during STOP mode
//  485   * @retval None
//  486   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_DBGMCU_EnableDBGStopMode
          CFI NoCalls
        THUMB
//  487 void HAL_DBGMCU_EnableDBGStopMode(void)
//  488 {
//  489   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
HAL_DBGMCU_EnableDBGStopMode:
        LDR.N    R0,??DataTable18_13  ;; 0xe0042004
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//  490 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  491 
//  492 /**
//  493   * @brief  Disable the Debug Module during STOP mode
//  494   * @retval None
//  495   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_DBGMCU_DisableDBGStopMode
          CFI NoCalls
        THUMB
//  496 void HAL_DBGMCU_DisableDBGStopMode(void)
//  497 {
//  498   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
HAL_DBGMCU_DisableDBGStopMode:
        LDR.N    R0,??DataTable18_13  ;; 0xe0042004
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x2
        STR      R1,[R0, #+0]
//  499 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  500 
//  501 /**
//  502   * @brief  Enable the Debug Module during STANDBY mode
//  503   * @retval None
//  504   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function HAL_DBGMCU_EnableDBGStandbyMode
          CFI NoCalls
        THUMB
//  505 void HAL_DBGMCU_EnableDBGStandbyMode(void)
//  506 {
//  507   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
HAL_DBGMCU_EnableDBGStandbyMode:
        LDR.N    R0,??DataTable18_13  ;; 0xe0042004
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//  508 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  509 
//  510 /**
//  511   * @brief  Disable the Debug Module during STANDBY mode
//  512   * @retval None
//  513   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function HAL_DBGMCU_DisableDBGStandbyMode
          CFI NoCalls
        THUMB
//  514 void HAL_DBGMCU_DisableDBGStandbyMode(void)
//  515 {
//  516   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
HAL_DBGMCU_DisableDBGStandbyMode:
        LDR.N    R0,??DataTable18_13  ;; 0xe0042004
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x4
        STR      R1,[R0, #+0]
//  517 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  518 
//  519 /**
//  520   * @brief  Enables the I/O Compensation Cell.
//  521   * @note   The I/O compensation cell can be used only when the device supply
//  522   *         voltage ranges from 2.4 to 3.6 V.  
//  523   * @retval None
//  524   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function HAL_EnableCompensationCell
          CFI NoCalls
        THUMB
//  525 void HAL_EnableCompensationCell(void)
//  526 {
//  527   *(__IO uint32_t *)CMPCR_CMP_PD_BB = (uint32_t)ENABLE;
HAL_EnableCompensationCell:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable18_14  ;; 0x42270400
        STR      R0,[R1, #+0]
//  528 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  529 
//  530 /**
//  531   * @brief  Power-down the I/O Compensation Cell.
//  532   * @note   The I/O compensation cell can be used only when the device supply
//  533   *         voltage ranges from 2.4 to 3.6 V.  
//  534   * @retval None
//  535   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function HAL_DisableCompensationCell
          CFI NoCalls
        THUMB
//  536 void HAL_DisableCompensationCell(void)
//  537 {
//  538   *(__IO uint32_t *)CMPCR_CMP_PD_BB = (uint32_t)DISABLE;
HAL_DisableCompensationCell:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable18_14  ;; 0x42270400
        STR      R0,[R1, #+0]
//  539 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  540 
//  541 /**
//  542   * @brief  Returns first word of the unique device identifier (UID based on 96 bits)
//  543   * @retval Device identifier
//  544   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function HAL_GetUIDw0
          CFI NoCalls
        THUMB
//  545 uint32_t HAL_GetUIDw0(void)
//  546 {
//  547   return (READ_REG(*((uint32_t *)UID_BASE)));
HAL_GetUIDw0:
        LDR.N    R0,??DataTable18_15  ;; 0x1fff7a10
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  548 }
          CFI EndBlock cfiBlock16
//  549 
//  550 /**
//  551   * @brief  Returns second word of the unique device identifier (UID based on 96 bits)
//  552   * @retval Device identifier
//  553   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function HAL_GetUIDw1
          CFI NoCalls
        THUMB
//  554 uint32_t HAL_GetUIDw1(void)
//  555 {
//  556   return (READ_REG(*((uint32_t *)(UID_BASE + 4U))));
HAL_GetUIDw1:
        LDR.N    R0,??DataTable18_16  ;; 0x1fff7a14
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//  557 }
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function HAL_GetUIDw2
          CFI NoCalls
        THUMB
HAL_GetUIDw2:
        LDR.N    R0,??DataTable18_17  ;; 0x1fff7a18
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DATA32
        DC32     0x40023c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DATA32
        DC32     0x40023820

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DATA32
        DC32     0xf6fec9ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DATA32
        DC32     0x40023824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DATA32
        DC32     0x4777933

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DATA32
        DC32     0x40023810

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DATA32
        DC32     0x226011ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DATA32
        DC32     0x40023814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DATA32
        DC32     0x40023818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DATA32
        DC32     uwTickPrio

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DATA32
        DC32     uwTickFreq

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DATA32
        DC32     0x1080200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_12:
        DATA32
        DC32     0xe0042000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_13:
        DATA32
        DC32     0xe0042004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_14:
        DATA32
        DC32     0x42270400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_15:
        DATA32
        DC32     0x1fff7a10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_16:
        DATA32
        DC32     0x1fff7a14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_17:
        DATA32
        DC32     0x1fff7a18

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function HAL_MspInit
          CFI NoCalls
        THUMB
HAL_MspInit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock19

        SECTION `.text`:CODE:REORDER:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function HAL_MspDeInit
          CFI NoCalls
        THUMB
HAL_MspDeInit:
        BX       LR               ;; return
          CFI EndBlock cfiBlock20

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function HAL_InitTick
        THUMB
HAL_InitTick:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOV      R0,#+1000
        LDR.N    R1,??HAL_InitTick_0
        LDRB     R1,[R1, #+0]
        UDIV     R0,R0,R1
        LDR.N    R1,??HAL_InitTick_0+0x4
        LDR      R1,[R1, #+0]
        UDIV     R0,R1,R0
          CFI FunCall HAL_SYSTICK_Config
        BL       HAL_SYSTICK_Config
        CMP      R0,#+0
        BEQ.N    ??HAL_InitTick_1
        MOVS     R0,#+1
        B.N      ??HAL_InitTick_2
??HAL_InitTick_1:
        CMP      R4,#+16
        BCS.N    ??HAL_InitTick_3
        MOVS     R2,#+0
        MOVS     R1,R4
        MOVS     R0,#-1
          CFI FunCall HAL_NVIC_SetPriority
        BL       HAL_NVIC_SetPriority
        LDR.N    R0,??HAL_InitTick_0+0x8
        STR      R4,[R0, #+0]
        MOVS     R0,#+0
        B.N      ??HAL_InitTick_2
??HAL_InitTick_3:
        MOVS     R0,#+1
??HAL_InitTick_2:
        POP      {R4,PC}          ;; return
        DATA
??HAL_InitTick_0:
        DATA32
        DC32     uwTickFreq
        DC32     SystemCoreClock
        DC32     uwTickPrio
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function HAL_IncTick
          CFI NoCalls
        THUMB
HAL_IncTick:
        LDR.N    R0,??HAL_IncTick_0
        LDR      R1,[R0, #+0]
        LDR.N    R2,??HAL_IncTick_0+0x4
        LDRB     R2,[R2, #+0]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
        BX       LR               ;; return
        Nop      
        DATA
??HAL_IncTick_0:
        DATA32
        DC32     uwTick
        DC32     uwTickFreq
          CFI EndBlock cfiBlock22

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function HAL_GetTick
          CFI NoCalls
        THUMB
HAL_GetTick:
        LDR.N    R0,??HAL_GetTick_0
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
        Nop      
        DATA
??HAL_GetTick_0:
        DATA32
        DC32     uwTick
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function HAL_Delay
        THUMB
HAL_Delay:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
        CMN      R4,#+1
        BEQ.N    ??HAL_Delay_1
        LDR.N    R0,??HAL_Delay_0
        LDRB     R0,[R0, #+0]
        ADDS     R4,R4,R0
??HAL_Delay_1:
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,R4
        BCC.N    ??HAL_Delay_1
        POP      {R0,R4,R5,PC}    ;; return
        Nop      
        DATA
??HAL_Delay_0:
        DATA32
        DC32     uwTickFreq
          CFI EndBlock cfiBlock24

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function HAL_SuspendTick
          CFI NoCalls
        THUMB
HAL_SuspendTick:
        LDR.N    R0,??HAL_SuspendTick_0  ;; 0xe000e010
        LDR      R1,[R0, #+0]
        BICS     R1,R1,#0x2
        STR      R1,[R0, #+0]
        BX       LR               ;; return
        DATA
??HAL_SuspendTick_0:
        DATA32
        DC32     0xe000e010
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:REORDER:NOROOT(2)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function HAL_ResumeTick
          CFI NoCalls
        THUMB
HAL_ResumeTick:
        LDR.N    R0,??HAL_ResumeTick_0  ;; 0xe000e010
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STR      R1,[R0, #+0]
        BX       LR               ;; return
        DATA
??HAL_ResumeTick_0:
        DATA32
        DC32     0xe000e010
          CFI EndBlock cfiBlock26

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  558 
//  559 /**
//  560   * @brief  Returns third word of the unique device identifier (UID based on 96 bits)
//  561   * @retval Device identifier
//  562   */
//  563 uint32_t HAL_GetUIDw2(void)
//  564 {
//  565   return (READ_REG(*((uint32_t *)(UID_BASE + 8U))));
//  566 }
//  567 
//  568 #if defined(STM32F427xx) || defined(STM32F437xx) || defined(STM32F429xx)|| defined(STM32F439xx) ||\ 
//  569     defined(STM32F469xx) || defined(STM32F479xx)
//  570 /**
//  571   * @brief  Enables the Internal FLASH Bank Swapping.
//  572   *   
//  573   * @note   This function can be used only for STM32F42xxx/43xxx/469xx/479xx devices. 
//  574   *
//  575   * @note   Flash Bank2 mapped at 0x08000000 (and aliased @0x00000000) 
//  576   *         and Flash Bank1 mapped at 0x08100000 (and aliased at 0x00100000)   
//  577   *
//  578   * @retval None
//  579   */
//  580 void HAL_EnableMemorySwappingBank(void)
//  581 {
//  582   *(__IO uint32_t *)UFB_MODE_BB = (uint32_t)ENABLE;
//  583 }
//  584 
//  585 /**
//  586   * @brief  Disables the Internal FLASH Bank Swapping.
//  587   *   
//  588   * @note   This function can be used only for STM32F42xxx/43xxx/469xx/479xx devices. 
//  589   *
//  590   * @note   The default state : Flash Bank1 mapped at 0x08000000 (and aliased @0x00000000) 
//  591   *         and Flash Bank2 mapped at 0x08100000 (and aliased at 0x00100000) 
//  592   *           
//  593   * @retval None
//  594   */
//  595 void HAL_DisableMemorySwappingBank(void)
//  596 {
//  597   *(__IO uint32_t *)UFB_MODE_BB = (uint32_t)DISABLE;
//  598 }
//  599 #endif /* STM32F427xx || STM32F437xx || STM32F429xx || STM32F439xx || STM32F469xx || STM32F479xx */
//  600 /**
//  601   * @}
//  602   */
//  603 
//  604 /**
//  605   * @}
//  606   */
//  607 
//  608 /**
//  609   * @}
//  610   */
//  611 
//  612 /**
//  613   * @}
//  614   */
//  615 
//  616 
// 
//   4 bytes in section .bss
//   5 bytes in section .data
// 552 bytes in section .text
// 
// 364 bytes of CODE memory (+ 188 bytes shared)
//   9 bytes of DATA memory
//
//Errors: none
//Warnings: none
