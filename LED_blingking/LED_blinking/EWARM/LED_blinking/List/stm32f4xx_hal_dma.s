///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_dma.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW2DB.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_dma.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_dma.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN HAL_GetTick
        EXTERN SystemCoreClock

        PUBLIC HAL_DMA_Abort
        PUBLIC HAL_DMA_Abort_IT
        PUBLIC HAL_DMA_DeInit
        PUBLIC HAL_DMA_GetError
        PUBLIC HAL_DMA_GetState
        PUBLIC HAL_DMA_IRQHandler
        PUBLIC HAL_DMA_Init
        PUBLIC HAL_DMA_PollForTransfer
        PUBLIC HAL_DMA_RegisterCallback
        PUBLIC HAL_DMA_Start
        PUBLIC HAL_DMA_Start_IT
        PUBLIC HAL_DMA_UnRegisterCallback
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_dma.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_dma.c
//    4   * @author  MCD Application Team
//    5   * @brief   DMA HAL module driver.
//    6   *    
//    7   *          This file provides firmware functions to manage the following 
//    8   *          functionalities of the Direct Memory Access (DMA) peripheral:
//    9   *           + Initialization and de-initialization functions
//   10   *           + IO operation functions
//   11   *           + Peripheral State and errors functions
//   12   @verbatim     
//   13   ==============================================================================
//   14                         ##### How to use this driver #####
//   15   ==============================================================================
//   16   [..]
//   17    (#) Enable and configure the peripheral to be connected to the DMA Stream
//   18        (except for internal SRAM/FLASH memories: no initialization is 
//   19        necessary) please refer to Reference manual for connection between peripherals
//   20        and DMA requests.
//   21 
//   22    (#) For a given Stream, program the required configuration through the following parameters:
//   23        Transfer Direction, Source and Destination data formats, 
//   24        Circular, Normal or peripheral flow control mode, Stream Priority level, 
//   25        Source and Destination Increment mode, FIFO mode and its Threshold (if needed), 
//   26        Burst mode for Source and/or Destination (if needed) using HAL_DMA_Init() function.
//   27 
//   28    -@-   Prior to HAL_DMA_Init() the clock must be enabled for DMA through the following macros:
//   29          __HAL_RCC_DMA1_CLK_ENABLE() or __HAL_RCC_DMA2_CLK_ENABLE().
//   30 
//   31      *** Polling mode IO operation ***
//   32      =================================
//   33     [..]
//   34           (+) Use HAL_DMA_Start() to start DMA transfer after the configuration of Source 
//   35               address and destination address and the Length of data to be transferred.
//   36           (+) Use HAL_DMA_PollForTransfer() to poll for the end of current transfer, in this  
//   37               case a fixed Timeout can be configured by User depending from his application.
//   38           (+) Use HAL_DMA_Abort() function to abort the current transfer.
//   39 
//   40      *** Interrupt mode IO operation ***
//   41      ===================================
//   42     [..]
//   43           (+) Configure the DMA interrupt priority using HAL_NVIC_SetPriority()
//   44           (+) Enable the DMA IRQ handler using HAL_NVIC_EnableIRQ() 
//   45           (+) Use HAL_DMA_Start_IT() to start DMA transfer after the configuration of  
//   46               Source address and destination address and the Length of data to be transferred. In this 
//   47               case the DMA interrupt is configured 
//   48           (+) Use HAL_DMA_IRQHandler() called under DMA_IRQHandler() Interrupt subroutine
//   49           (+) At the end of data transfer HAL_DMA_IRQHandler() function is executed and user can 
//   50               add his own function by customization of function pointer XferCpltCallback and 
//   51               XferErrorCallback (i.e a member of DMA handle structure).
//   52     [..]
//   53      (#) Use HAL_DMA_GetState() function to return the DMA state and HAL_DMA_GetError() in case of error 
//   54          detection.
//   55 
//   56      (#) Use HAL_DMA_Abort_IT() function to abort the current transfer
//   57 
//   58      -@-   In Memory-to-Memory transfer mode, Circular mode is not allowed.
//   59 
//   60      -@-   The FIFO is used mainly to reduce bus usage and to allow data packing/unpacking: it is
//   61            possible to set different Data Sizes for the Peripheral and the Memory (ie. you can set
//   62            Half-Word data size for the peripheral to access its data register and set Word data size
//   63            for the Memory to gain in access time. Each two half words will be packed and written in
//   64            a single access to a Word in the Memory).
//   65 
//   66      -@-   When FIFO is disabled, it is not allowed to configure different Data Sizes for Source
//   67            and Destination. In this case the Peripheral Data Size will be applied to both Source
//   68            and Destination.
//   69 
//   70      *** DMA HAL driver macros list ***
//   71      =============================================
//   72      [..]
//   73        Below the list of most used macros in DMA HAL driver.
//   74        
//   75       (+) __HAL_DMA_ENABLE: Enable the specified DMA Stream.
//   76       (+) __HAL_DMA_DISABLE: Disable the specified DMA Stream.
//   77       (+) __HAL_DMA_GET_IT_SOURCE: Check whether the specified DMA Stream interrupt has occurred or not. 
//   78 
//   79      [..]
//   80       (@) You can refer to the DMA HAL driver header file for more useful macros
//   81 
//   82   @endverbatim
//   83   ******************************************************************************
//   84   * @attention
//   85   *
//   86   * Copyright (c) 2017 STMicroelectronics.
//   87   * All rights reserved.
//   88   *
//   89   * This software is licensed under terms that can be found in the LICENSE file in
//   90   * the root directory of this software component.
//   91   * If no LICENSE file comes with this software, it is provided AS-IS.
//   92   *
//   93   ******************************************************************************
//   94   */ 
//   95 
//   96 /* Includes ------------------------------------------------------------------*/
//   97 #include "stm32f4xx_hal.h"
//   98 
//   99 /** @addtogroup STM32F4xx_HAL_Driver
//  100   * @{
//  101   */
//  102 
//  103 /** @defgroup DMA DMA
//  104   * @brief DMA HAL module driver
//  105   * @{
//  106   */
//  107 
//  108 #ifdef HAL_DMA_MODULE_ENABLED
//  109 
//  110 /* Private types -------------------------------------------------------------*/
//  111 typedef struct
//  112 {
//  113   __IO uint32_t ISR;   /*!< DMA interrupt status register */
//  114   __IO uint32_t Reserved0;
//  115   __IO uint32_t IFCR;  /*!< DMA interrupt flag clear register */
//  116 } DMA_Base_Registers;
//  117 
//  118 /* Private variables ---------------------------------------------------------*/
//  119 /* Private constants ---------------------------------------------------------*/
//  120 /** @addtogroup DMA_Private_Constants
//  121  * @{
//  122  */
//  123  #define HAL_TIMEOUT_DMA_ABORT    5U  /* 5 ms */
//  124 /**
//  125   * @}
//  126   */
//  127 /* Private macros ------------------------------------------------------------*/
//  128 /* Private functions ---------------------------------------------------------*/
//  129 /** @addtogroup DMA_Private_Functions
//  130   * @{
//  131   */
//  132 static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
//  133 static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma);
//  134 static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma);
//  135 
//  136 /**
//  137   * @}
//  138   */  
//  139 
//  140 /* Exported functions ---------------------------------------------------------*/
//  141 /** @addtogroup DMA_Exported_Functions
//  142   * @{
//  143   */
//  144 
//  145 /** @addtogroup DMA_Exported_Functions_Group1
//  146   *
//  147 @verbatim
//  148  ===============================================================================
//  149              ##### Initialization and de-initialization functions  #####
//  150  ===============================================================================
//  151     [..]
//  152     This section provides functions allowing to initialize the DMA Stream source
//  153     and destination addresses, incrementation and data sizes, transfer direction, 
//  154     circular/normal mode selection, memory-to-memory mode selection and Stream priority value.
//  155     [..]
//  156     The HAL_DMA_Init() function follows the DMA configuration procedures as described in
//  157     reference manual.
//  158 
//  159 @endverbatim
//  160   * @{
//  161   */
//  162   
//  163 /**
//  164   * @brief  Initialize the DMA according to the specified
//  165   *         parameters in the DMA_InitTypeDef and create the associated handle.
//  166   * @param  hdma Pointer to a DMA_HandleTypeDef structure that contains
//  167   *               the configuration information for the specified DMA Stream.  
//  168   * @retval HAL status
//  169   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_DMA_Init
        THUMB
//  170 HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
//  171 {
HAL_DMA_Init:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  172   uint32_t tmp = 0U;
        MOVS     R0,#+0
//  173   uint32_t tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R5,R0
//  174   DMA_Base_Registers *regs;
//  175 
//  176   /* Check the DMA peripheral state */
//  177   if(hdma == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_DMA_Init_0
//  178   {
//  179     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_Init_1
//  180   }
//  181 
//  182   /* Check the parameters */
//  183   assert_param(IS_DMA_STREAM_ALL_INSTANCE(hdma->Instance));
//  184   assert_param(IS_DMA_CHANNEL(hdma->Init.Channel));
//  185   assert_param(IS_DMA_DIRECTION(hdma->Init.Direction));
//  186   assert_param(IS_DMA_PERIPHERAL_INC_STATE(hdma->Init.PeriphInc));
//  187   assert_param(IS_DMA_MEMORY_INC_STATE(hdma->Init.MemInc));
//  188   assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(hdma->Init.PeriphDataAlignment));
//  189   assert_param(IS_DMA_MEMORY_DATA_SIZE(hdma->Init.MemDataAlignment));
//  190   assert_param(IS_DMA_MODE(hdma->Init.Mode));
//  191   assert_param(IS_DMA_PRIORITY(hdma->Init.Priority));
//  192   assert_param(IS_DMA_FIFO_MODE_STATE(hdma->Init.FIFOMode));
//  193   /* Check the memory burst, peripheral burst and FIFO threshold parameters only
//  194      when FIFO mode is enabled */
//  195   if(hdma->Init.FIFOMode != DMA_FIFOMODE_DISABLE)
??HAL_DMA_Init_0:
        LDR      R0,[R4, #+36]
        CMP      R0,#+0
//  196   {
//  197     assert_param(IS_DMA_FIFO_THRESHOLD(hdma->Init.FIFOThreshold));
//  198     assert_param(IS_DMA_MEMORY_BURST(hdma->Init.MemBurst));
//  199     assert_param(IS_DMA_PERIPHERAL_BURST(hdma->Init.PeriphBurst));
//  200   }
//  201 
//  202   /* Change DMA peripheral state */
//  203   hdma->State = HAL_DMA_STATE_BUSY;
??HAL_DMA_Init_2:
        MOVS     R0,#+2
        STRB     R0,[R4, #+53]
//  204 
//  205   /* Allocate lock resource */
//  206   __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  207   
//  208   /* Disable the peripheral */
//  209   __HAL_DMA_DISABLE(hdma);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  210   
//  211   /* Check if the DMA Stream is effectively disabled */
//  212   while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
??HAL_DMA_Init_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_DMA_Init_4
//  213   {
//  214     /* Check for the Timeout */
//  215     if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R5
        CMP      R0,#+6
        BCC.N    ??HAL_DMA_Init_3
//  216     {
//  217       /* Update error code */
//  218       hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
        MOVS     R0,#+32
        STR      R0,[R4, #+84]
//  219       
//  220       /* Change the DMA state */
//  221       hdma->State = HAL_DMA_STATE_TIMEOUT;
        MOVS     R0,#+3
        STRB     R0,[R4, #+53]
//  222       
//  223       return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_DMA_Init_1
//  224     }
//  225   }
//  226   
//  227   /* Get the CR register value */
//  228   tmp = hdma->Instance->CR;
??HAL_DMA_Init_4:
        LDR      R0,[R4, #+0]
        LDR      R1,[R0, #+0]
//  229 
//  230   /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR, CT and DBM bits */
//  231   tmp &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \ 
//  232                       DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \ 
//  233                       DMA_SxCR_MINC  | DMA_SxCR_PINC   | DMA_SxCR_CIRC   | \ 
//  234                       DMA_SxCR_DIR   | DMA_SxCR_CT     | DMA_SxCR_DBM));
        LDR.W    R0,??DataTable2  ;; 0xf010803f
        ANDS     R1,R0,R1
//  235 
//  236   /* Prepare the DMA Stream configuration */
//  237   tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
//  238           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
//  239           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
//  240           hdma->Init.Mode                | hdma->Init.Priority;
        LDR      R2,[R4, #+4]
        LDR      R0,[R4, #+8]
        ORRS     R2,R0,R2
        LDR      R0,[R4, #+12]
        ORRS     R2,R0,R2
        LDR      R0,[R4, #+16]
        ORRS     R2,R0,R2
        LDR      R0,[R4, #+20]
        ORRS     R2,R0,R2
        LDR      R0,[R4, #+24]
        ORRS     R2,R0,R2
        LDR      R0,[R4, #+28]
        ORRS     R2,R0,R2
        LDR      R0,[R4, #+32]
        ORRS     R2,R0,R2
        ORRS     R1,R2,R1
//  241 
//  242   /* the Memory burst and peripheral burst are not used when the FIFO is disabled */
//  243   if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
        LDR      R0,[R4, #+36]
        CMP      R0,#+4
        BNE.N    ??HAL_DMA_Init_5
//  244   {
//  245     /* Get memory burst and peripheral burst */
//  246     tmp |=  hdma->Init.MemBurst | hdma->Init.PeriphBurst;
        LDR      R2,[R4, #+44]
        LDR      R0,[R4, #+48]
        ORRS     R2,R0,R2
        ORRS     R1,R2,R1
//  247   }
//  248   
//  249   /* Write to DMA Stream CR register */
//  250   hdma->Instance->CR = tmp;  
??HAL_DMA_Init_5:
        LDR      R0,[R4, #+0]
        STR      R1,[R0, #+0]
//  251 
//  252   /* Get the FCR register value */
//  253   tmp = hdma->Instance->FCR;
        LDR      R0,[R4, #+0]
        LDR      R5,[R0, #+20]
//  254 
//  255   /* Clear Direct mode and FIFO threshold bits */
//  256   tmp &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
        LSRS     R5,R5,#+3
        LSLS     R5,R5,#+3
//  257 
//  258   /* Prepare the DMA Stream FIFO configuration */
//  259   tmp |= hdma->Init.FIFOMode;
        LDR      R0,[R4, #+36]
        ORRS     R5,R0,R5
//  260 
//  261   /* The FIFO threshold is not used when the FIFO mode is disabled */
//  262   if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
        LDR      R0,[R4, #+36]
        CMP      R0,#+4
        BNE.N    ??HAL_DMA_Init_6
//  263   {
//  264     /* Get the FIFO threshold */
//  265     tmp |= hdma->Init.FIFOThreshold;
        LDR      R0,[R4, #+40]
        ORRS     R5,R0,R5
//  266     
//  267     /* Check compatibility between FIFO threshold level and size of the memory burst */
//  268     /* for INCR4, INCR8, INCR16 bursts */
//  269     if (hdma->Init.MemBurst != DMA_MBURST_SINGLE)
        LDR      R0,[R4, #+44]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_Init_6
//  270     {
//  271       if (DMA_CheckFifoParam(hdma) != HAL_OK)
        MOVS     R0,R4
          CFI FunCall DMA_CheckFifoParam
        BL       DMA_CheckFifoParam
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_Init_6
//  272       {
//  273         /* Update error code */
//  274         hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
        MOVS     R0,#+64
        STR      R0,[R4, #+84]
//  275         
//  276         /* Change the DMA state */
//  277         hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
//  278         
//  279         return HAL_ERROR; 
        MOVS     R0,#+1
        B.N      ??HAL_DMA_Init_1
//  280       }
//  281     }
//  282   }
//  283   
//  284   /* Write to DMA Stream FCR */
//  285   hdma->Instance->FCR = tmp;
??HAL_DMA_Init_6:
        LDR      R0,[R4, #+0]
        STR      R5,[R0, #+20]
//  286 
//  287   /* Initialize StreamBaseAddress and StreamIndex parameters to be used to calculate
//  288      DMA steam Base Address needed by HAL_DMA_IRQHandler() and HAL_DMA_PollForTransfer() */
//  289   regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
        MOVS     R0,R4
          CFI FunCall DMA_CalcBaseAndBitshift
        BL       DMA_CalcBaseAndBitshift
//  290   
//  291   /* Clear all interrupt flags */
//  292   regs->IFCR = 0x3FU << hdma->StreamIndex;
        MOVS     R2,#+63
        LDR      R1,[R4, #+92]
        LSLS     R2,R2,R1
        STR      R2,[R0, #+8]
//  293 
//  294   /* Initialize the error code */
//  295   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+84]
//  296                                                                                      
//  297   /* Initialize the DMA state */
//  298   hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
//  299 
//  300   return HAL_OK;
        MOVS     R0,#+0
??HAL_DMA_Init_1:
        POP      {R1,R4,R5,PC}    ;; return
//  301 }
          CFI EndBlock cfiBlock0
//  302 
//  303 /**
//  304   * @brief  DeInitializes the DMA peripheral 
//  305   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
//  306   *               the configuration information for the specified DMA Stream.  
//  307   * @retval HAL status
//  308   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_DMA_DeInit
        THUMB
//  309 HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma)
//  310 {
HAL_DMA_DeInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  311   DMA_Base_Registers *regs;
//  312 
//  313   /* Check the DMA peripheral state */
//  314   if(hdma == NULL)
        CMP      R4,#+0
        BNE.N    ??HAL_DMA_DeInit_0
//  315   {
//  316     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_DeInit_1
//  317   }
//  318   
//  319   /* Check the DMA peripheral state */
//  320   if(hdma->State == HAL_DMA_STATE_BUSY)
??HAL_DMA_DeInit_0:
        LDRB     R0,[R4, #+53]
        CMP      R0,#+2
        BNE.N    ??HAL_DMA_DeInit_2
//  321   {
//  322     /* Return error status */
//  323     return HAL_BUSY;
        MOVS     R0,#+2
        B.N      ??HAL_DMA_DeInit_1
//  324   }
//  325 
//  326   /* Check the parameters */
//  327   assert_param(IS_DMA_STREAM_ALL_INSTANCE(hdma->Instance));
//  328 
//  329   /* Disable the selected DMA Streamx */
//  330   __HAL_DMA_DISABLE(hdma);
??HAL_DMA_DeInit_2:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  331 
//  332   /* Reset DMA Streamx control register */
//  333   hdma->Instance->CR   = 0U;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  334 
//  335   /* Reset DMA Streamx number of data to transfer register */
//  336   hdma->Instance->NDTR = 0U;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+4]
//  337 
//  338   /* Reset DMA Streamx peripheral address register */
//  339   hdma->Instance->PAR  = 0U;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+8]
//  340 
//  341   /* Reset DMA Streamx memory 0 address register */
//  342   hdma->Instance->M0AR = 0U;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+12]
//  343   
//  344   /* Reset DMA Streamx memory 1 address register */
//  345   hdma->Instance->M1AR = 0U;
        MOVS     R0,#+0
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+16]
//  346   
//  347   /* Reset DMA Streamx FIFO control register */
//  348   hdma->Instance->FCR  = 0x00000021U;
        MOVS     R0,#+33
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  349   
//  350   /* Get DMA steam Base Address */  
//  351   regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
        MOVS     R0,R4
          CFI FunCall DMA_CalcBaseAndBitshift
        BL       DMA_CalcBaseAndBitshift
//  352   
//  353   /* Clean all callbacks */
//  354   hdma->XferCpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R4, #+60]
//  355   hdma->XferHalfCpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R4, #+64]
//  356   hdma->XferM1CpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R4, #+68]
//  357   hdma->XferM1HalfCpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R4, #+72]
//  358   hdma->XferErrorCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R4, #+76]
//  359   hdma->XferAbortCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R4, #+80]
//  360 
//  361   /* Clear all interrupt flags at correct offset within the register */
//  362   regs->IFCR = 0x3FU << hdma->StreamIndex;
        MOVS     R2,#+63
        LDR      R1,[R4, #+92]
        LSLS     R2,R2,R1
        STR      R2,[R0, #+8]
//  363 
//  364   /* Reset the error code */
//  365   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+84]
//  366 
//  367   /* Reset the DMA state */
//  368   hdma->State = HAL_DMA_STATE_RESET;
        MOVS     R0,#+0
        STRB     R0,[R4, #+53]
//  369 
//  370   /* Release Lock */
//  371   __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  372 
//  373   return HAL_OK;
        MOVS     R0,#+0
??HAL_DMA_DeInit_1:
        POP      {R4,PC}          ;; return
//  374 }
          CFI EndBlock cfiBlock1
//  375 
//  376 /**
//  377   * @}
//  378   */
//  379 
//  380 /** @addtogroup DMA_Exported_Functions_Group2
//  381   *
//  382 @verbatim   
//  383  ===============================================================================
//  384                       #####  IO operation functions  #####
//  385  ===============================================================================
//  386     [..]  This section provides functions allowing to:
//  387       (+) Configure the source, destination address and data length and Start DMA transfer
//  388       (+) Configure the source, destination address and data length and 
//  389           Start DMA transfer with interrupt
//  390       (+) Abort DMA transfer
//  391       (+) Poll for transfer complete
//  392       (+) Handle DMA interrupt request  
//  393 
//  394 @endverbatim
//  395   * @{
//  396   */
//  397 
//  398 /**
//  399   * @brief  Starts the DMA Transfer.
//  400   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
//  401   *                     the configuration information for the specified DMA Stream.
//  402   * @param  SrcAddress The source memory Buffer address
//  403   * @param  DstAddress The destination memory Buffer address
//  404   * @param  DataLength The length of data to be transferred from source to destination
//  405   * @retval HAL status
//  406   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_DMA_Start
        THUMB
//  407 HAL_StatusTypeDef HAL_DMA_Start(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
//  408 {
HAL_DMA_Start:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  409   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R5,#+0
//  410   
//  411   /* Check the parameters */
//  412   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
//  413 
//  414   /* Process locked */
//  415   __HAL_LOCK(hdma);
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_Start_1
??HAL_DMA_Start_0:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
//  416 
//  417   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_2
//  418   {
//  419     /* Change DMA peripheral state */
//  420     hdma->State = HAL_DMA_STATE_BUSY;
        MOVS     R0,#+2
        STRB     R0,[R4, #+53]
//  421     
//  422     /* Initialize the error code */
//  423     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+84]
//  424     
//  425     /* Configure the source, destination address and the data length */
//  426     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
        MOVS     R0,R4
          CFI FunCall DMA_SetConfig
        BL       DMA_SetConfig
//  427 
//  428     /* Enable the Peripheral */
//  429     __HAL_DMA_ENABLE(hdma);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMA_Start_3
//  430   }
//  431   else
//  432   {
//  433     /* Process unlocked */
//  434     __HAL_UNLOCK(hdma);
??HAL_DMA_Start_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  435     
//  436     /* Return error status */
//  437     status = HAL_BUSY;
        MOVS     R5,#+2
//  438   } 
//  439   return status; 
??HAL_DMA_Start_3:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_Start_1:
        POP      {R1,R4,R5,PC}    ;; return
//  440 }
          CFI EndBlock cfiBlock2
//  441 
//  442 /**
//  443   * @brief  Start the DMA Transfer with interrupt enabled.
//  444   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
//  445   *                     the configuration information for the specified DMA Stream.  
//  446   * @param  SrcAddress The source memory Buffer address
//  447   * @param  DstAddress The destination memory Buffer address
//  448   * @param  DataLength The length of data to be transferred from source to destination
//  449   * @retval HAL status
//  450   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HAL_DMA_Start_IT
        THUMB
//  451 HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
//  452 {
HAL_DMA_Start_IT:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  453   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R5,#+0
//  454 
//  455   /* calculate DMA base and stream number */
//  456   DMA_Base_Registers *regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
        LDR      R6,[R4, #+88]
//  457   
//  458   /* Check the parameters */
//  459   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
//  460  
//  461   /* Process locked */
//  462   __HAL_LOCK(hdma);
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_IT_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_Start_IT_1
??HAL_DMA_Start_IT_0:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
//  463   
//  464   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BNE.N    ??HAL_DMA_Start_IT_2
//  465   {
//  466     /* Change DMA peripheral state */
//  467     hdma->State = HAL_DMA_STATE_BUSY;
        MOVS     R0,#+2
        STRB     R0,[R4, #+53]
//  468     
//  469     /* Initialize the error code */
//  470     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R0,#+0
        STR      R0,[R4, #+84]
//  471     
//  472     /* Configure the source, destination address and the data length */
//  473     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
        MOVS     R0,R4
          CFI FunCall DMA_SetConfig
        BL       DMA_SetConfig
//  474     
//  475     /* Clear all interrupt flags at correct offset within the register */
//  476     regs->IFCR = 0x3FU << hdma->StreamIndex;
        MOVS     R1,#+63
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R6, #+8]
//  477     
//  478     /* Enable Common interrupts*/
//  479     hdma->Instance->CR  |= DMA_IT_TC | DMA_IT_TE | DMA_IT_DME;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  480     
//  481     if(hdma->XferHalfCpltCallback != NULL)
        LDR      R0,[R4, #+64]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_Start_IT_3
//  482     {
//  483       hdma->Instance->CR  |= DMA_IT_HT;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  484     }
//  485     
//  486     /* Enable the Peripheral */
//  487     __HAL_DMA_ENABLE(hdma);
??HAL_DMA_Start_IT_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMA_Start_IT_4
//  488   }
//  489   else
//  490   {
//  491     /* Process unlocked */
//  492     __HAL_UNLOCK(hdma);	  
??HAL_DMA_Start_IT_2:
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  493     
//  494     /* Return error status */
//  495     status = HAL_BUSY;
        MOVS     R5,#+2
//  496   }
//  497   
//  498   return status;
??HAL_DMA_Start_IT_4:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_Start_IT_1:
        POP      {R4-R6,PC}       ;; return
//  499 }
          CFI EndBlock cfiBlock3
//  500 
//  501 /**
//  502   * @brief  Aborts the DMA Transfer.
//  503   * @param  hdma   pointer to a DMA_HandleTypeDef structure that contains
//  504   *                 the configuration information for the specified DMA Stream.
//  505   *                   
//  506   * @note  After disabling a DMA Stream, a check for wait until the DMA Stream is 
//  507   *        effectively disabled is added. If a Stream is disabled 
//  508   *        while a data transfer is ongoing, the current data will be transferred
//  509   *        and the Stream will be effectively disabled only after the transfer of
//  510   *        this single data is finished.  
//  511   * @retval HAL status
//  512   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HAL_DMA_Abort
        THUMB
//  513 HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma)
//  514 {
HAL_DMA_Abort:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  515   /* calculate DMA base and stream number */
//  516   DMA_Base_Registers *regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
        LDR      R5,[R4, #+88]
//  517   
//  518   uint32_t tickstart = HAL_GetTick();
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOVS     R6,R0
//  519   
//  520   if(hdma->State != HAL_DMA_STATE_BUSY)
        LDRB     R0,[R4, #+53]
        CMP      R0,#+2
        BEQ.N    ??HAL_DMA_Abort_0
//  521   {
//  522     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
        MOVS     R0,#+128
        STR      R0,[R4, #+84]
//  523     
//  524     /* Process Unlocked */
//  525     __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  526     
//  527     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_Abort_1
//  528   }
//  529   else
//  530   {
//  531     /* Disable all the transfer interrupts */
//  532     hdma->Instance->CR  &= ~(DMA_IT_TC | DMA_IT_TE | DMA_IT_DME);
??HAL_DMA_Abort_0:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  533     hdma->Instance->FCR &= ~(DMA_IT_FE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  534     
//  535     if((hdma->XferHalfCpltCallback != NULL) || (hdma->XferM1HalfCpltCallback != NULL))
        LDR      R0,[R4, #+64]
        CMP      R0,#+0
        BNE.N    ??HAL_DMA_Abort_2
        LDR      R0,[R4, #+72]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_Abort_3
//  536     {
//  537       hdma->Instance->CR  &= ~(DMA_IT_HT);
??HAL_DMA_Abort_2:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  538     }
//  539     
//  540     /* Disable the stream */
//  541     __HAL_DMA_DISABLE(hdma);
??HAL_DMA_Abort_3:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  542     
//  543     /* Check if the DMA Stream is effectively disabled */
//  544     while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
??HAL_DMA_Abort_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_DMA_Abort_5
//  545     {
//  546       /* Check for the Timeout */
//  547       if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R6
        CMP      R0,#+6
        BCC.N    ??HAL_DMA_Abort_4
//  548       {
//  549         /* Update error code */
//  550         hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
        MOVS     R0,#+32
        STR      R0,[R4, #+84]
//  551         
//  552         /* Change the DMA state */
//  553         hdma->State = HAL_DMA_STATE_TIMEOUT;
        MOVS     R0,#+3
        STRB     R0,[R4, #+53]
//  554         
//  555         /* Process Unlocked */
//  556         __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  557         
//  558         return HAL_TIMEOUT;
        MOVS     R0,#+3
        B.N      ??HAL_DMA_Abort_1
//  559       }
//  560     }
//  561     
//  562     /* Clear all interrupt flags at correct offset within the register */
//  563     regs->IFCR = 0x3FU << hdma->StreamIndex;
??HAL_DMA_Abort_5:
        MOVS     R1,#+63
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R5, #+8]
//  564     
//  565     /* Change the DMA state*/
//  566     hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
//  567     
//  568     /* Process Unlocked */
//  569     __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  570   }
//  571   return HAL_OK;
        MOVS     R0,#+0
??HAL_DMA_Abort_1:
        POP      {R4-R6,PC}       ;; return
//  572 }
          CFI EndBlock cfiBlock4
//  573 
//  574 /**
//  575   * @brief  Aborts the DMA Transfer in Interrupt mode.
//  576   * @param  hdma   pointer to a DMA_HandleTypeDef structure that contains
//  577   *                 the configuration information for the specified DMA Stream.
//  578   * @retval HAL status
//  579   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HAL_DMA_Abort_IT
          CFI NoCalls
        THUMB
//  580 HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma)
//  581 {
//  582   if(hdma->State != HAL_DMA_STATE_BUSY)
HAL_DMA_Abort_IT:
        LDRB     R1,[R0, #+53]
        CMP      R1,#+2
        BEQ.N    ??HAL_DMA_Abort_IT_0
//  583   {
//  584     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
        MOVS     R1,#+128
        STR      R1,[R0, #+84]
//  585     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_Abort_IT_1
//  586   }
//  587   else
//  588   {
//  589     /* Set Abort State  */
//  590     hdma->State = HAL_DMA_STATE_ABORT;
??HAL_DMA_Abort_IT_0:
        MOVS     R1,#+5
        STRB     R1,[R0, #+53]
//  591     
//  592     /* Disable the stream */
//  593     __HAL_DMA_DISABLE(hdma);
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+1
        LSLS     R1,R1,#+1
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+0]
//  594   }
//  595 
//  596   return HAL_OK;
        MOVS     R0,#+0
??HAL_DMA_Abort_IT_1:
        BX       LR               ;; return
//  597 }
          CFI EndBlock cfiBlock5
//  598 
//  599 /**
//  600   * @brief  Polling for transfer complete.
//  601   * @param  hdma          pointer to a DMA_HandleTypeDef structure that contains
//  602   *                        the configuration information for the specified DMA Stream.
//  603   * @param  CompleteLevel Specifies the DMA level complete.
//  604   * @note   The polling mode is kept in this version for legacy. it is recommended to use the IT model instead.
//  605   *         This model could be used for debug purpose.
//  606   * @note   The HAL_DMA_PollForTransfer API cannot be used in circular and double buffering mode (automatic circular mode). 
//  607   * @param  Timeout       Timeout duration.
//  608   * @retval HAL status
//  609   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HAL_DMA_PollForTransfer
        THUMB
//  610 HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout)
//  611 {
HAL_DMA_PollForTransfer:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  612   HAL_StatusTypeDef status = HAL_OK; 
        MOVS     R7,#+0
//  613   uint32_t mask_cpltlevel;
//  614   uint32_t tickstart = HAL_GetTick(); 
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        MOV      R8,R0
//  615   uint32_t tmpisr;
//  616   
//  617   /* calculate DMA base and stream number */
//  618   DMA_Base_Registers *regs;
//  619 
//  620   if(HAL_DMA_STATE_BUSY != hdma->State)
        LDRB     R0,[R6, #+53]
        CMP      R0,#+2
        BEQ.N    ??HAL_DMA_PollForTransfer_0
//  621   {
//  622     /* No transfer ongoing */
//  623     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
        MOVS     R0,#+128
        STR      R0,[R6, #+84]
//  624     __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R6, #+52]
//  625     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_PollForTransfer_1
//  626   }
//  627 
//  628   /* Polling mode not supported in circular mode and double buffering mode */
//  629   if ((hdma->Instance->CR & DMA_SxCR_CIRC) != RESET)
??HAL_DMA_PollForTransfer_0:
        LDR      R0,[R6, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BPL.N    ??HAL_DMA_PollForTransfer_2
//  630   {
//  631     hdma->ErrorCode = HAL_DMA_ERROR_NOT_SUPPORTED;
        MOV      R0,#+256
        STR      R0,[R6, #+84]
//  632     return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_PollForTransfer_1
//  633   }
//  634   
//  635   /* Get the level transfer complete flag */
//  636   if(CompleteLevel == HAL_DMA_FULL_TRANSFER)
??HAL_DMA_PollForTransfer_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??HAL_DMA_PollForTransfer_3
//  637   {
//  638     /* Transfer Complete flag */
//  639     mask_cpltlevel = DMA_FLAG_TCIF0_4 << hdma->StreamIndex;
        MOVS     R0,#+32
        LDR      R10,[R6, #+92]
        LSLS     R10,R0,R10
        B.N      ??HAL_DMA_PollForTransfer_4
//  640   }
//  641   else
//  642   {
//  643     /* Half Transfer Complete flag */
//  644     mask_cpltlevel = DMA_FLAG_HTIF0_4 << hdma->StreamIndex;
??HAL_DMA_PollForTransfer_3:
        MOVS     R0,#+16
        LDR      R10,[R6, #+92]
        LSLS     R10,R0,R10
//  645   }
//  646   
//  647   regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
??HAL_DMA_PollForTransfer_4:
        LDR      R9,[R6, #+88]
//  648   tmpisr = regs->ISR;
        LDR      R1,[R9, #+0]
        B.N      ??HAL_DMA_PollForTransfer_5
//  649   
//  650   while(((tmpisr & mask_cpltlevel) == RESET) && ((hdma->ErrorCode & HAL_DMA_ERROR_TE) == RESET))
//  651   {
//  652     /* Check for the Timeout (Not applicable in circular mode)*/
//  653     if(Timeout != HAL_MAX_DELAY)
//  654     {
//  655       if((Timeout == 0U)||((HAL_GetTick() - tickstart ) > Timeout))
//  656       {
//  657         /* Update error code */
//  658         hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
//  659         
//  660         /* Change the DMA state */
//  661         hdma->State = HAL_DMA_STATE_READY;
//  662         
//  663         /* Process Unlocked */
//  664         __HAL_UNLOCK(hdma);
//  665         
//  666         return HAL_TIMEOUT;
//  667       }
//  668     }
//  669 
//  670     /* Get the ISR register value */
//  671     tmpisr = regs->ISR;
??HAL_DMA_PollForTransfer_6:
        LDR      R1,[R9, #+0]
//  672 
//  673     if((tmpisr & (DMA_FLAG_TEIF0_4 << hdma->StreamIndex)) != RESET)
        MOVS     R2,#+8
        LDR      R0,[R6, #+92]
        LSLS     R0,R2,R0
        TST      R1,R0
        BEQ.N    ??HAL_DMA_PollForTransfer_7
//  674     {
//  675       /* Update error code */
//  676       hdma->ErrorCode |= HAL_DMA_ERROR_TE;
        LDR      R0,[R6, #+84]
        ORRS     R0,R0,#0x1
        STR      R0,[R6, #+84]
//  677       
//  678       /* Clear the transfer error flag */
//  679       regs->IFCR = DMA_FLAG_TEIF0_4 << hdma->StreamIndex;
        LDR      R0,[R6, #+92]
        LSLS     R2,R2,R0
        STR      R2,[R9, #+8]
//  680     }
//  681     
//  682     if((tmpisr & (DMA_FLAG_FEIF0_4 << hdma->StreamIndex)) != RESET)
??HAL_DMA_PollForTransfer_7:
        LDR      R0,[R6, #+92]
        MOVS     R2,R1
        LSRS     R2,R2,R0
        LSLS     R0,R2,#+31
        BPL.N    ??HAL_DMA_PollForTransfer_8
//  683     {
//  684       /* Update error code */
//  685       hdma->ErrorCode |= HAL_DMA_ERROR_FE;
        LDR      R0,[R6, #+84]
        ORRS     R0,R0,#0x2
        STR      R0,[R6, #+84]
//  686       
//  687       /* Clear the FIFO error flag */
//  688       regs->IFCR = DMA_FLAG_FEIF0_4 << hdma->StreamIndex;
        MOVS     R2,#+1
        LDR      R0,[R6, #+92]
        LSLS     R2,R2,R0
        STR      R2,[R9, #+8]
//  689     }
//  690     
//  691     if((tmpisr & (DMA_FLAG_DMEIF0_4 << hdma->StreamIndex)) != RESET)
??HAL_DMA_PollForTransfer_8:
        MOVS     R2,#+4
        LDR      R0,[R6, #+92]
        LSLS     R0,R2,R0
        TST      R1,R0
        BEQ.N    ??HAL_DMA_PollForTransfer_5
//  692     {
//  693       /* Update error code */
//  694       hdma->ErrorCode |= HAL_DMA_ERROR_DME;
        LDR      R0,[R6, #+84]
        ORRS     R0,R0,#0x4
        STR      R0,[R6, #+84]
//  695       
//  696       /* Clear the Direct Mode error flag */
//  697       regs->IFCR = DMA_FLAG_DMEIF0_4 << hdma->StreamIndex;
        LDR      R0,[R6, #+92]
        LSLS     R2,R2,R0
        STR      R2,[R9, #+8]
//  698     }
??HAL_DMA_PollForTransfer_5:
        TST      R1,R10
        BNE.N    ??HAL_DMA_PollForTransfer_9
        LDR      R0,[R6, #+84]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_DMA_PollForTransfer_9
        CMN      R4,#+1
        BEQ.N    ??HAL_DMA_PollForTransfer_6
        CMP      R4,#+0
        BEQ.N    ??HAL_DMA_PollForTransfer_10
          CFI FunCall HAL_GetTick
        BL       HAL_GetTick
        SUBS     R0,R0,R8
        CMP      R4,R0
        BCS.N    ??HAL_DMA_PollForTransfer_6
??HAL_DMA_PollForTransfer_10:
        MOVS     R0,#+32
        STR      R0,[R6, #+84]
        MOVS     R0,#+1
        STRB     R0,[R6, #+53]
        MOVS     R0,#+0
        STRB     R0,[R6, #+52]
        MOVS     R0,#+3
        B.N      ??HAL_DMA_PollForTransfer_1
//  699   }
//  700   
//  701   if(hdma->ErrorCode != HAL_DMA_ERROR_NONE)
??HAL_DMA_PollForTransfer_9:
        LDR      R0,[R6, #+84]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_PollForTransfer_11
//  702   {
//  703     if((hdma->ErrorCode & HAL_DMA_ERROR_TE) != RESET)
        LDR      R0,[R6, #+84]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_DMA_PollForTransfer_11
//  704     {
//  705       HAL_DMA_Abort(hdma);
        MOVS     R0,R6
          CFI FunCall HAL_DMA_Abort
        BL       HAL_DMA_Abort
//  706     
//  707       /* Clear the half transfer and transfer complete flags */
//  708       regs->IFCR = (DMA_FLAG_HTIF0_4 | DMA_FLAG_TCIF0_4) << hdma->StreamIndex;
        MOVS     R1,#+48
        LDR      R0,[R6, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R9, #+8]
//  709     
//  710       /* Change the DMA state */
//  711       hdma->State= HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R6, #+53]
//  712 
//  713       /* Process Unlocked */
//  714       __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R6, #+52]
//  715 
//  716       return HAL_ERROR;
        MOVS     R0,#+1
        B.N      ??HAL_DMA_PollForTransfer_1
//  717    }
//  718   }
//  719   
//  720   /* Get the level transfer complete flag */
//  721   if(CompleteLevel == HAL_DMA_FULL_TRANSFER)
??HAL_DMA_PollForTransfer_11:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??HAL_DMA_PollForTransfer_12
//  722   {
//  723     /* Clear the half transfer and transfer complete flags */
//  724     regs->IFCR = (DMA_FLAG_HTIF0_4 | DMA_FLAG_TCIF0_4) << hdma->StreamIndex;
        MOVS     R1,#+48
        LDR      R0,[R6, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R9, #+8]
//  725     
//  726     hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R6, #+53]
//  727     
//  728     /* Process Unlocked */
//  729     __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R6, #+52]
        B.N      ??HAL_DMA_PollForTransfer_13
//  730   }
//  731   else
//  732   {
//  733     /* Clear the half transfer and transfer complete flags */
//  734     regs->IFCR = (DMA_FLAG_HTIF0_4) << hdma->StreamIndex;
??HAL_DMA_PollForTransfer_12:
        MOVS     R1,#+16
        LDR      R0,[R6, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R9, #+8]
//  735   }
//  736   
//  737   return status;
??HAL_DMA_PollForTransfer_13:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_PollForTransfer_1:
        POP      {R4-R10,PC}      ;; return
//  738 }
          CFI EndBlock cfiBlock6
//  739 
//  740 /**
//  741   * @brief  Handles DMA interrupt request.
//  742   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
//  743   *               the configuration information for the specified DMA Stream.  
//  744   * @retval None
//  745   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HAL_DMA_IRQHandler
        THUMB
//  746 void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma)
//  747 {
HAL_DMA_IRQHandler:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  748   uint32_t tmpisr;
//  749   __IO uint32_t count = 0U;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  750   uint32_t timeout = SystemCoreClock / 9600U;
        LDR.W    R0,??DataTable2_1
        LDR      R0,[R0, #+0]
        MOV      R1,#+9600
        UDIV     R5,R0,R1
//  751 
//  752   /* calculate DMA base and stream number */
//  753   DMA_Base_Registers *regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
        LDR      R6,[R4, #+88]
//  754 
//  755   tmpisr = regs->ISR;
        LDR      R7,[R6, #+0]
//  756 
//  757   /* Transfer Error Interrupt management ***************************************/
//  758   if ((tmpisr & (DMA_FLAG_TEIF0_4 << hdma->StreamIndex)) != RESET)
        MOVS     R1,#+8
        LDR      R0,[R4, #+92]
        LSLS     R0,R1,R0
        TST      R7,R0
        BEQ.N    ??HAL_DMA_IRQHandler_0
//  759   {
//  760     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_TE) != RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??HAL_DMA_IRQHandler_0
//  761     {
//  762       /* Disable the transfer error interrupt */
//  763       hdma->Instance->CR  &= ~(DMA_IT_TE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR      R2,[R4, #+0]
        STR      R0,[R2, #+0]
//  764       
//  765       /* Clear the transfer error flag */
//  766       regs->IFCR = DMA_FLAG_TEIF0_4 << hdma->StreamIndex;
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R6, #+8]
//  767       
//  768       /* Update error code */
//  769       hdma->ErrorCode |= HAL_DMA_ERROR_TE;
        LDR      R0,[R4, #+84]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+84]
//  770     }
//  771   }
//  772   /* FIFO Error Interrupt management ******************************************/
//  773   if ((tmpisr & (DMA_FLAG_FEIF0_4 << hdma->StreamIndex)) != RESET)
??HAL_DMA_IRQHandler_0:
        LDR      R0,[R4, #+92]
        MOVS     R1,R7
        LSRS     R1,R1,R0
        LSLS     R0,R1,#+31
        BPL.N    ??HAL_DMA_IRQHandler_1
//  774   {
//  775     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_FE) != RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        LSLS     R0,R0,#+24
        BPL.N    ??HAL_DMA_IRQHandler_1
//  776     {
//  777       /* Clear the FIFO error flag */
//  778       regs->IFCR = DMA_FLAG_FEIF0_4 << hdma->StreamIndex;
        MOVS     R1,#+1
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R6, #+8]
//  779 
//  780       /* Update error code */
//  781       hdma->ErrorCode |= HAL_DMA_ERROR_FE;
        LDR      R0,[R4, #+84]
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+84]
//  782     }
//  783   }
//  784   /* Direct Mode Error Interrupt management ***********************************/
//  785   if ((tmpisr & (DMA_FLAG_DMEIF0_4 << hdma->StreamIndex)) != RESET)
??HAL_DMA_IRQHandler_1:
        MOVS     R1,#+4
        LDR      R0,[R4, #+92]
        LSLS     R0,R1,R0
        TST      R7,R0
        BEQ.N    ??HAL_DMA_IRQHandler_2
//  786   {
//  787     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_DME) != RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??HAL_DMA_IRQHandler_2
//  788     {
//  789       /* Clear the direct mode error flag */
//  790       regs->IFCR = DMA_FLAG_DMEIF0_4 << hdma->StreamIndex;
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R6, #+8]
//  791 
//  792       /* Update error code */
//  793       hdma->ErrorCode |= HAL_DMA_ERROR_DME;
        LDR      R0,[R4, #+84]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+84]
//  794     }
//  795   }
//  796   /* Half Transfer Complete Interrupt management ******************************/
//  797   if ((tmpisr & (DMA_FLAG_HTIF0_4 << hdma->StreamIndex)) != RESET)
??HAL_DMA_IRQHandler_2:
        MOVS     R1,#+16
        LDR      R0,[R4, #+92]
        LSLS     R0,R1,R0
        TST      R7,R0
        BEQ.N    ??HAL_DMA_IRQHandler_3
//  798   {
//  799     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_HT) != RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??HAL_DMA_IRQHandler_3
//  800     {
//  801       /* Clear the half transfer complete flag */
//  802       regs->IFCR = DMA_FLAG_HTIF0_4 << hdma->StreamIndex;
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R6, #+8]
//  803       
//  804       /* Multi_Buffering mode enabled */
//  805       if(((hdma->Instance->CR) & (uint32_t)(DMA_SxCR_DBM)) != RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+13
        BPL.N    ??HAL_DMA_IRQHandler_4
//  806       {
//  807         /* Current memory buffer used is Memory 0 */
//  808         if((hdma->Instance->CR & DMA_SxCR_CT) == RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BMI.N    ??HAL_DMA_IRQHandler_5
//  809         {
//  810           if(hdma->XferHalfCpltCallback != NULL)
        LDR      R0,[R4, #+64]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_3
//  811           {
//  812             /* Half transfer callback */
//  813             hdma->XferHalfCpltCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+64]
          CFI FunCall
        BLX      R1
        B.N      ??HAL_DMA_IRQHandler_3
//  814           }
//  815         }
//  816         /* Current memory buffer used is Memory 1 */
//  817         else
//  818         {
//  819           if(hdma->XferM1HalfCpltCallback != NULL)
??HAL_DMA_IRQHandler_5:
        LDR      R0,[R4, #+72]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_3
//  820           {
//  821             /* Half transfer callback */
//  822             hdma->XferM1HalfCpltCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+72]
          CFI FunCall
        BLX      R1
        B.N      ??HAL_DMA_IRQHandler_3
//  823           }
//  824         }
//  825       }
//  826       else
//  827       {
//  828         /* Disable the half transfer interrupt if the DMA mode is not CIRCULAR */
//  829         if((hdma->Instance->CR & DMA_SxCR_CIRC) == RESET)
??HAL_DMA_IRQHandler_4:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_DMA_IRQHandler_6
//  830         {
//  831           /* Disable the half transfer interrupt */
//  832           hdma->Instance->CR  &= ~(DMA_IT_HT);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  833         }
//  834         
//  835         if(hdma->XferHalfCpltCallback != NULL)
??HAL_DMA_IRQHandler_6:
        LDR      R0,[R4, #+64]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_3
//  836         {
//  837           /* Half transfer callback */
//  838           hdma->XferHalfCpltCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+64]
          CFI FunCall
        BLX      R1
//  839         }
//  840       }
//  841     }
//  842   }
//  843   /* Transfer Complete Interrupt management ***********************************/
//  844   if ((tmpisr & (DMA_FLAG_TCIF0_4 << hdma->StreamIndex)) != RESET)
??HAL_DMA_IRQHandler_3:
        MOVS     R1,#+32
        LDR      R0,[R4, #+92]
        LSLS     R0,R1,R0
        TST      R7,R0
        BEQ.N    ??HAL_DMA_IRQHandler_7
//  845   {
//  846     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_TC) != RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??HAL_DMA_IRQHandler_7
//  847     {
//  848       /* Clear the transfer complete flag */
//  849       regs->IFCR = DMA_FLAG_TCIF0_4 << hdma->StreamIndex;
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R6, #+8]
//  850       
//  851       if(HAL_DMA_STATE_ABORT == hdma->State)
        LDRB     R0,[R4, #+53]
        CMP      R0,#+5
        BNE.N    ??HAL_DMA_IRQHandler_8
//  852       {
//  853         /* Disable all the transfer interrupts */
//  854         hdma->Instance->CR  &= ~(DMA_IT_TC | DMA_IT_TE | DMA_IT_DME);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  855         hdma->Instance->FCR &= ~(DMA_IT_FE);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        BICS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  856         
//  857         if((hdma->XferHalfCpltCallback != NULL) || (hdma->XferM1HalfCpltCallback != NULL))
        LDR      R0,[R4, #+64]
        CMP      R0,#+0
        BNE.N    ??HAL_DMA_IRQHandler_9
        LDR      R0,[R4, #+72]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_10
//  858         {
//  859           hdma->Instance->CR  &= ~(DMA_IT_HT);
??HAL_DMA_IRQHandler_9:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  860         }
//  861 
//  862         /* Clear all interrupt flags at correct offset within the register */
//  863         regs->IFCR = 0x3FU << hdma->StreamIndex;
??HAL_DMA_IRQHandler_10:
        MOVS     R1,#+63
        LDR      R0,[R4, #+92]
        LSLS     R1,R1,R0
        STR      R1,[R6, #+8]
//  864 
//  865         /* Change the DMA state */
//  866         hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
//  867 
//  868         /* Process Unlocked */
//  869         __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  870 
//  871         if(hdma->XferAbortCallback != NULL)
        LDR      R0,[R4, #+80]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_11
//  872         {
//  873           hdma->XferAbortCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+80]
          CFI FunCall
        BLX      R1
//  874         }
//  875         return;
??HAL_DMA_IRQHandler_11:
        B.N      ??HAL_DMA_IRQHandler_12
//  876       }
//  877 
//  878       if(((hdma->Instance->CR) & (uint32_t)(DMA_SxCR_DBM)) != RESET)
??HAL_DMA_IRQHandler_8:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+13
        BPL.N    ??HAL_DMA_IRQHandler_13
//  879       {
//  880         /* Current memory buffer used is Memory 0 */
//  881         if((hdma->Instance->CR & DMA_SxCR_CT) == RESET)
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BMI.N    ??HAL_DMA_IRQHandler_14
//  882         {
//  883           if(hdma->XferM1CpltCallback != NULL)
        LDR      R0,[R4, #+68]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_7
//  884           {
//  885             /* Transfer complete Callback for memory1 */
//  886             hdma->XferM1CpltCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+68]
          CFI FunCall
        BLX      R1
        B.N      ??HAL_DMA_IRQHandler_7
//  887           }
//  888         }
//  889         /* Current memory buffer used is Memory 1 */
//  890         else
//  891         {
//  892           if(hdma->XferCpltCallback != NULL)
??HAL_DMA_IRQHandler_14:
        LDR      R0,[R4, #+60]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_7
//  893           {
//  894             /* Transfer complete Callback for memory0 */
//  895             hdma->XferCpltCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+60]
          CFI FunCall
        BLX      R1
        B.N      ??HAL_DMA_IRQHandler_7
//  896           }
//  897         }
//  898       }
//  899       /* Disable the transfer complete interrupt if the DMA mode is not CIRCULAR */
//  900       else
//  901       {
//  902         if((hdma->Instance->CR & DMA_SxCR_CIRC) == RESET)
??HAL_DMA_IRQHandler_13:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BMI.N    ??HAL_DMA_IRQHandler_15
//  903         {
//  904           /* Disable the transfer complete interrupt */
//  905           hdma->Instance->CR  &= ~(DMA_IT_TC);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  906 
//  907           /* Change the DMA state */
//  908           hdma->State = HAL_DMA_STATE_READY;
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
//  909 
//  910           /* Process Unlocked */
//  911           __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  912         }
//  913 
//  914         if(hdma->XferCpltCallback != NULL)
??HAL_DMA_IRQHandler_15:
        LDR      R0,[R4, #+60]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_7
//  915         {
//  916           /* Transfer complete callback */
//  917           hdma->XferCpltCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+60]
          CFI FunCall
        BLX      R1
//  918         }
//  919       }
//  920     }
//  921   }
//  922   
//  923   /* manage error case */
//  924   if(hdma->ErrorCode != HAL_DMA_ERROR_NONE)
??HAL_DMA_IRQHandler_7:
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_16
//  925   {
//  926     if((hdma->ErrorCode & HAL_DMA_ERROR_TE) != RESET)
        LDR      R0,[R4, #+84]
        LSLS     R0,R0,#+31
        BPL.N    ??HAL_DMA_IRQHandler_17
//  927     {
//  928       hdma->State = HAL_DMA_STATE_ABORT;
        MOVS     R0,#+5
        STRB     R0,[R4, #+53]
//  929 
//  930       /* Disable the stream */
//  931       __HAL_DMA_DISABLE(hdma);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  932 
//  933       do
//  934       {
//  935         if (++count > timeout)
??HAL_DMA_IRQHandler_18:
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+0]
        CMP      R5,R0
        BCC.N    ??HAL_DMA_IRQHandler_19
//  936         {
//  937           break;
//  938         }
//  939       }
//  940       while((hdma->Instance->CR & DMA_SxCR_EN) != RESET);
??HAL_DMA_IRQHandler_20:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??HAL_DMA_IRQHandler_18
        B.N      ??HAL_DMA_IRQHandler_21
//  941 
//  942       /* Change the DMA state */
//  943       hdma->State = HAL_DMA_STATE_READY;
??HAL_DMA_IRQHandler_19:
??HAL_DMA_IRQHandler_21:
        MOVS     R0,#+1
        STRB     R0,[R4, #+53]
//  944 
//  945       /* Process Unlocked */
//  946       __HAL_UNLOCK(hdma);
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  947     }
//  948 
//  949     if(hdma->XferErrorCallback != NULL)
??HAL_DMA_IRQHandler_17:
        LDR      R0,[R4, #+76]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMA_IRQHandler_16
//  950     {
//  951       /* Transfer error callback */
//  952       hdma->XferErrorCallback(hdma);
        MOVS     R0,R4
        LDR      R1,[R4, #+76]
          CFI FunCall
        BLX      R1
//  953     }
//  954   }
//  955 }
??HAL_DMA_IRQHandler_16:
??HAL_DMA_IRQHandler_12:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock7
//  956 
//  957 /**
//  958   * @brief  Register callbacks
//  959   * @param  hdma                 pointer to a DMA_HandleTypeDef structure that contains
//  960   *                               the configuration information for the specified DMA Stream.
//  961   * @param  CallbackID           User Callback identifier
//  962   *                               a DMA_HandleTypeDef structure as parameter.
//  963   * @param  pCallback            pointer to private callback function which has pointer to 
//  964   *                               a DMA_HandleTypeDef structure as parameter.
//  965   * @retval HAL status
//  966   */                      

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function HAL_DMA_RegisterCallback
          CFI NoCalls
        THUMB
//  967 HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)(DMA_HandleTypeDef *_hdma))
//  968 {
HAL_DMA_RegisterCallback:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R3,R0
//  969 
//  970   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
//  971 
//  972   /* Process locked */
//  973   __HAL_LOCK(hdma);
        LDRB     R4,[R3, #+52]
        CMP      R4,#+1
        BNE.N    ??HAL_DMA_RegisterCallback_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_RegisterCallback_1
??HAL_DMA_RegisterCallback_0:
        MOVS     R4,#+1
        STRB     R4,[R3, #+52]
//  974 
//  975   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R4,[R3, #+53]
        CMP      R4,#+1
        BNE.N    ??HAL_DMA_RegisterCallback_2
//  976   {
//  977     switch (CallbackID)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??HAL_DMA_RegisterCallback_3
        CMP      R1,#+2
        BEQ.N    ??HAL_DMA_RegisterCallback_4
        BCC.N    ??HAL_DMA_RegisterCallback_5
        CMP      R1,#+4
        BEQ.N    ??HAL_DMA_RegisterCallback_6
        BCC.N    ??HAL_DMA_RegisterCallback_7
        CMP      R1,#+5
        BEQ.N    ??HAL_DMA_RegisterCallback_8
        B.N      ??HAL_DMA_RegisterCallback_9
//  978     {
//  979     case  HAL_DMA_XFER_CPLT_CB_ID:
//  980       hdma->XferCpltCallback = pCallback;
??HAL_DMA_RegisterCallback_3:
        STR      R2,[R3, #+60]
//  981       break;
        B.N      ??HAL_DMA_RegisterCallback_10
//  982 
//  983     case  HAL_DMA_XFER_HALFCPLT_CB_ID:
//  984       hdma->XferHalfCpltCallback = pCallback;
??HAL_DMA_RegisterCallback_5:
        STR      R2,[R3, #+64]
//  985       break;
        B.N      ??HAL_DMA_RegisterCallback_10
//  986 
//  987     case  HAL_DMA_XFER_M1CPLT_CB_ID:
//  988       hdma->XferM1CpltCallback = pCallback;
??HAL_DMA_RegisterCallback_4:
        STR      R2,[R3, #+68]
//  989       break;
        B.N      ??HAL_DMA_RegisterCallback_10
//  990 
//  991     case  HAL_DMA_XFER_M1HALFCPLT_CB_ID:
//  992       hdma->XferM1HalfCpltCallback = pCallback;
??HAL_DMA_RegisterCallback_7:
        STR      R2,[R3, #+72]
//  993       break;
        B.N      ??HAL_DMA_RegisterCallback_10
//  994 
//  995     case  HAL_DMA_XFER_ERROR_CB_ID:
//  996       hdma->XferErrorCallback = pCallback;
??HAL_DMA_RegisterCallback_6:
        STR      R2,[R3, #+76]
//  997       break;
        B.N      ??HAL_DMA_RegisterCallback_10
//  998 
//  999     case  HAL_DMA_XFER_ABORT_CB_ID:
// 1000       hdma->XferAbortCallback = pCallback;
??HAL_DMA_RegisterCallback_8:
        STR      R2,[R3, #+80]
// 1001       break;
        B.N      ??HAL_DMA_RegisterCallback_10
// 1002 
// 1003     default:
// 1004       /* Return error status */
// 1005       status =  HAL_ERROR;
??HAL_DMA_RegisterCallback_9:
        MOVS     R0,#+1
// 1006       break;
        B.N      ??HAL_DMA_RegisterCallback_10
// 1007     }
// 1008   }
// 1009   else
// 1010   {
// 1011     /* Return error status */
// 1012     status =  HAL_ERROR;
??HAL_DMA_RegisterCallback_2:
        MOVS     R0,#+1
// 1013   }
// 1014 
// 1015   /* Release Lock */
// 1016   __HAL_UNLOCK(hdma);
??HAL_DMA_RegisterCallback_10:
        MOVS     R1,#+0
        STRB     R1,[R3, #+52]
// 1017   
// 1018   return status;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_RegisterCallback_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
// 1019 }
          CFI EndBlock cfiBlock8
// 1020 
// 1021 /**
// 1022   * @brief  UnRegister callbacks
// 1023   * @param  hdma                 pointer to a DMA_HandleTypeDef structure that contains
// 1024   *                               the configuration information for the specified DMA Stream.
// 1025   * @param  CallbackID           User Callback identifier
// 1026   *                               a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
// 1027   * @retval HAL status
// 1028   */              

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function HAL_DMA_UnRegisterCallback
          CFI NoCalls
        THUMB
// 1029 HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID)
// 1030 {
// 1031   HAL_StatusTypeDef status = HAL_OK;
HAL_DMA_UnRegisterCallback:
        MOVS     R2,#+0
// 1032   
// 1033   /* Process locked */
// 1034   __HAL_LOCK(hdma);
        LDRB     R3,[R0, #+52]
        CMP      R3,#+1
        BNE.N    ??HAL_DMA_UnRegisterCallback_0
        MOVS     R0,#+2
        B.N      ??HAL_DMA_UnRegisterCallback_1
??HAL_DMA_UnRegisterCallback_0:
        MOVS     R3,#+1
        STRB     R3,[R0, #+52]
// 1035   
// 1036   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R3,[R0, #+53]
        CMP      R3,#+1
        BNE.N    ??HAL_DMA_UnRegisterCallback_2
// 1037   {
// 1038     switch (CallbackID)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??HAL_DMA_UnRegisterCallback_3
        CMP      R1,#+2
        BEQ.N    ??HAL_DMA_UnRegisterCallback_4
        BCC.N    ??HAL_DMA_UnRegisterCallback_5
        CMP      R1,#+4
        BEQ.N    ??HAL_DMA_UnRegisterCallback_6
        BCC.N    ??HAL_DMA_UnRegisterCallback_7
        CMP      R1,#+6
        BEQ.N    ??HAL_DMA_UnRegisterCallback_8
        BCC.N    ??HAL_DMA_UnRegisterCallback_9
        B.N      ??HAL_DMA_UnRegisterCallback_10
// 1039     {
// 1040     case  HAL_DMA_XFER_CPLT_CB_ID:
// 1041       hdma->XferCpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_3:
        MOVS     R1,#+0
        STR      R1,[R0, #+60]
// 1042       break;
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1043       
// 1044     case  HAL_DMA_XFER_HALFCPLT_CB_ID:
// 1045       hdma->XferHalfCpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_5:
        MOVS     R1,#+0
        STR      R1,[R0, #+64]
// 1046       break;
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1047       
// 1048     case  HAL_DMA_XFER_M1CPLT_CB_ID:
// 1049       hdma->XferM1CpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_4:
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
// 1050       break;
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1051       
// 1052     case  HAL_DMA_XFER_M1HALFCPLT_CB_ID:
// 1053       hdma->XferM1HalfCpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_7:
        MOVS     R1,#+0
        STR      R1,[R0, #+72]
// 1054       break;
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1055       
// 1056     case  HAL_DMA_XFER_ERROR_CB_ID:
// 1057       hdma->XferErrorCallback = NULL;
??HAL_DMA_UnRegisterCallback_6:
        MOVS     R1,#+0
        STR      R1,[R0, #+76]
// 1058       break;
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1059       
// 1060     case  HAL_DMA_XFER_ABORT_CB_ID:
// 1061       hdma->XferAbortCallback = NULL;
??HAL_DMA_UnRegisterCallback_9:
        MOVS     R1,#+0
        STR      R1,[R0, #+80]
// 1062       break; 
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1063       
// 1064     case   HAL_DMA_XFER_ALL_CB_ID:
// 1065       hdma->XferCpltCallback = NULL;
??HAL_DMA_UnRegisterCallback_8:
        MOVS     R1,#+0
        STR      R1,[R0, #+60]
// 1066       hdma->XferHalfCpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+64]
// 1067       hdma->XferM1CpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+68]
// 1068       hdma->XferM1HalfCpltCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+72]
// 1069       hdma->XferErrorCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+76]
// 1070       hdma->XferAbortCallback = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+80]
// 1071       break; 
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1072       
// 1073     default:
// 1074       status = HAL_ERROR;
??HAL_DMA_UnRegisterCallback_10:
        MOVS     R2,#+1
// 1075       break;
        B.N      ??HAL_DMA_UnRegisterCallback_11
// 1076     }
// 1077   }
// 1078   else
// 1079   {
// 1080     status = HAL_ERROR;
??HAL_DMA_UnRegisterCallback_2:
        MOVS     R2,#+1
// 1081   }
// 1082   
// 1083   /* Release Lock */
// 1084   __HAL_UNLOCK(hdma);
??HAL_DMA_UnRegisterCallback_11:
        MOVS     R1,#+0
        STRB     R1,[R0, #+52]
// 1085   
// 1086   return status;
        MOVS     R0,R2
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMA_UnRegisterCallback_1:
        BX       LR               ;; return
// 1087 }
          CFI EndBlock cfiBlock9
// 1088 
// 1089 /**
// 1090   * @}
// 1091   */
// 1092 
// 1093 /** @addtogroup DMA_Exported_Functions_Group3
// 1094   *
// 1095 @verbatim
// 1096  ===============================================================================
// 1097                     ##### State and Errors functions #####
// 1098  ===============================================================================
// 1099     [..]
// 1100     This subsection provides functions allowing to
// 1101       (+) Check the DMA state
// 1102       (+) Get error code
// 1103 
// 1104 @endverbatim
// 1105   * @{
// 1106   */
// 1107 
// 1108 /**
// 1109   * @brief  Returns the DMA state.
// 1110   * @param  hdma pointer to a DMA_HandleTypeDef structure that contains
// 1111   *               the configuration information for the specified DMA Stream.
// 1112   * @retval HAL state
// 1113   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function HAL_DMA_GetState
          CFI NoCalls
        THUMB
// 1114 HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma)
// 1115 {
// 1116   return hdma->State;
HAL_DMA_GetState:
        LDRB     R0,[R0, #+53]
        BX       LR               ;; return
// 1117 }
          CFI EndBlock cfiBlock10
// 1118 
// 1119 /**
// 1120   * @brief  Return the DMA error code
// 1121   * @param  hdma  pointer to a DMA_HandleTypeDef structure that contains
// 1122   *              the configuration information for the specified DMA Stream.
// 1123   * @retval DMA Error Code
// 1124   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function HAL_DMA_GetError
          CFI NoCalls
        THUMB
// 1125 uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma)
// 1126 {
// 1127   return hdma->ErrorCode;
HAL_DMA_GetError:
        LDR      R0,[R0, #+84]
        BX       LR               ;; return
// 1128 }
          CFI EndBlock cfiBlock11
// 1129 
// 1130 /**
// 1131   * @}
// 1132   */
// 1133 
// 1134 /**
// 1135   * @}
// 1136   */
// 1137 
// 1138 /** @addtogroup DMA_Private_Functions
// 1139   * @{
// 1140   */
// 1141 
// 1142 /**
// 1143   * @brief  Sets the DMA Transfer parameter.
// 1144   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
// 1145   *                     the configuration information for the specified DMA Stream.
// 1146   * @param  SrcAddress The source memory Buffer address
// 1147   * @param  DstAddress The destination memory Buffer address
// 1148   * @param  DataLength The length of data to be transferred from source to destination
// 1149   * @retval HAL status
// 1150   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function DMA_SetConfig
          CFI NoCalls
        THUMB
// 1151 static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
// 1152 {
DMA_SetConfig:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1153   /* Clear DBM bit */
// 1154   hdma->Instance->CR &= (uint32_t)(~DMA_SxCR_DBM);
        LDR      R4,[R0, #+0]
        LDR      R4,[R4, #+0]
        BICS     R4,R4,#0x40000
        LDR      R5,[R0, #+0]
        STR      R4,[R5, #+0]
// 1155 
// 1156   /* Configure DMA Stream data length */
// 1157   hdma->Instance->NDTR = DataLength;
        LDR      R4,[R0, #+0]
        STR      R3,[R4, #+4]
// 1158 
// 1159   /* Memory to Peripheral */
// 1160   if((hdma->Init.Direction) == DMA_MEMORY_TO_PERIPH)
        LDR      R3,[R0, #+8]
        CMP      R3,#+64
        BNE.N    ??DMA_SetConfig_0
// 1161   {
// 1162     /* Configure DMA Stream destination address */
// 1163     hdma->Instance->PAR = DstAddress;
        LDR      R3,[R0, #+0]
        STR      R2,[R3, #+8]
// 1164 
// 1165     /* Configure DMA Stream source address */
// 1166     hdma->Instance->M0AR = SrcAddress;
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+12]
        B.N      ??DMA_SetConfig_1
// 1167   }
// 1168   /* Peripheral to Memory */
// 1169   else
// 1170   {
// 1171     /* Configure DMA Stream source address */
// 1172     hdma->Instance->PAR = SrcAddress;
??DMA_SetConfig_0:
        LDR      R3,[R0, #+0]
        STR      R1,[R3, #+8]
// 1173 
// 1174     /* Configure DMA Stream destination address */
// 1175     hdma->Instance->M0AR = DstAddress;
        LDR      R0,[R0, #+0]
        STR      R2,[R0, #+12]
// 1176   }
// 1177 }
??DMA_SetConfig_1:
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
// 1178 
// 1179 /**
// 1180   * @brief  Returns the DMA Stream base address depending on stream number
// 1181   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
// 1182   *                     the configuration information for the specified DMA Stream. 
// 1183   * @retval Stream base address
// 1184   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function DMA_CalcBaseAndBitshift
          CFI NoCalls
        THUMB
// 1185 static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma)
// 1186 {
// 1187   uint32_t stream_number = (((uint32_t)hdma->Instance & 0xFFU) - 16U) / 24U;
DMA_CalcBaseAndBitshift:
        LDRB     R1,[R0, #+0]
        AND      R1,R1,#0xFF
        SUBS     R1,R1,#+16
        MOVS     R2,#+24
        UDIV     R1,R1,R2
// 1188   
// 1189   /* lookup table for necessary bitshift of flags within status registers */
// 1190   static const uint8_t flagBitshiftOffset[8U] = {0U, 6U, 16U, 22U, 0U, 6U, 16U, 22U};
// 1191   hdma->StreamIndex = flagBitshiftOffset[stream_number];
        LDR.N    R2,??DataTable2_2
        LDRB     R2,[R2, R1]
        STR      R2,[R0, #+92]
// 1192   
// 1193   if (stream_number > 3U)
        CMP      R1,#+4
        BCC.N    ??DMA_CalcBaseAndBitshift_0
// 1194   {
// 1195     /* return pointer to HISR and HIFCR */
// 1196     hdma->StreamBaseAddress = (((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU)) + 4U);
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+10
        LSLS     R1,R1,#+10
        ADDS     R1,R1,#+4
        STR      R1,[R0, #+88]
        B.N      ??DMA_CalcBaseAndBitshift_1
// 1197   }
// 1198   else
// 1199   {
// 1200     /* return pointer to LISR and LIFCR */
// 1201     hdma->StreamBaseAddress = ((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU));
??DMA_CalcBaseAndBitshift_0:
        LDR      R1,[R0, #+0]
        LSRS     R1,R1,#+10
        LSLS     R1,R1,#+10
        STR      R1,[R0, #+88]
// 1202   }
// 1203   
// 1204   return hdma->StreamBaseAddress;
??DMA_CalcBaseAndBitshift_1:
        LDR      R0,[R0, #+88]
        BX       LR               ;; return
// 1205 }
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DATA32
        DC32     0xf010803f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DATA32
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DATA32
        DC32     `DMA_CalcBaseAndBitshift::flagBitshiftOffset`

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
`DMA_CalcBaseAndBitshift::flagBitshiftOffset`:
        DATA8
        DC8 0, 6, 16, 22, 0, 6, 16, 22
// 1206 
// 1207 /**
// 1208   * @brief  Check compatibility between FIFO threshold level and size of the memory burst
// 1209   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
// 1210   *                     the configuration information for the specified DMA Stream. 
// 1211   * @retval HAL status
// 1212   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function DMA_CheckFifoParam
          CFI NoCalls
        THUMB
// 1213 static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma)
// 1214 {
DMA_CheckFifoParam:
        MOVS     R2,R0
// 1215   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R0,#+0
// 1216   uint32_t tmp = hdma->Init.FIFOThreshold;
        LDR      R3,[R2, #+40]
// 1217   
// 1218   /* Memory Data size equal to Byte */
// 1219   if(hdma->Init.MemDataAlignment == DMA_MDATAALIGN_BYTE)
        LDR      R1,[R2, #+24]
        CMP      R1,#+0
        BNE.N    ??DMA_CheckFifoParam_0
// 1220   {
// 1221     switch (tmp)
        CMP      R3,#+0
        BEQ.N    ??DMA_CheckFifoParam_1
        CMP      R3,#+2
        BEQ.N    ??DMA_CheckFifoParam_1
        BCC.N    ??DMA_CheckFifoParam_2
        CMP      R3,#+3
        BEQ.N    ??DMA_CheckFifoParam_3
        B.N      ??DMA_CheckFifoParam_4
// 1222     {
// 1223     case DMA_FIFO_THRESHOLD_1QUARTERFULL:
// 1224     case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
// 1225       if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
??DMA_CheckFifoParam_1:
        LDR      R1,[R2, #+44]
        LSLS     R1,R1,#+7
        BPL.N    ??DMA_CheckFifoParam_5
// 1226       {
// 1227         status = HAL_ERROR;
        MOVS     R0,#+1
// 1228       }
// 1229       break;
??DMA_CheckFifoParam_5:
        B.N      ??DMA_CheckFifoParam_6
// 1230     case DMA_FIFO_THRESHOLD_HALFFULL:
// 1231       if (hdma->Init.MemBurst == DMA_MBURST_INC16)
??DMA_CheckFifoParam_2:
        LDR      R1,[R2, #+44]
        CMP      R1,#+25165824
        BNE.N    ??DMA_CheckFifoParam_7
// 1232       {
// 1233         status = HAL_ERROR;
        MOVS     R0,#+1
// 1234       }
// 1235       break;
??DMA_CheckFifoParam_7:
        B.N      ??DMA_CheckFifoParam_6
// 1236     case DMA_FIFO_THRESHOLD_FULL:
// 1237       break;
??DMA_CheckFifoParam_3:
        B.N      ??DMA_CheckFifoParam_6
// 1238     default:
// 1239       break;
??DMA_CheckFifoParam_4:
        B.N      ??DMA_CheckFifoParam_6
// 1240     }
// 1241   }
// 1242   
// 1243   /* Memory Data size equal to Half-Word */
// 1244   else if (hdma->Init.MemDataAlignment == DMA_MDATAALIGN_HALFWORD)
??DMA_CheckFifoParam_0:
        LDR      R1,[R2, #+24]
        CMP      R1,#+8192
        BNE.N    ??DMA_CheckFifoParam_8
// 1245   {
// 1246     switch (tmp)
        CMP      R3,#+0
        BEQ.N    ??DMA_CheckFifoParam_9
        CMP      R3,#+2
        BEQ.N    ??DMA_CheckFifoParam_9
        BCC.N    ??DMA_CheckFifoParam_10
        CMP      R3,#+3
        BEQ.N    ??DMA_CheckFifoParam_11
        B.N      ??DMA_CheckFifoParam_12
// 1247     {
// 1248     case DMA_FIFO_THRESHOLD_1QUARTERFULL:
// 1249     case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
// 1250       status = HAL_ERROR;
??DMA_CheckFifoParam_9:
        MOVS     R0,#+1
// 1251       break;
        B.N      ??DMA_CheckFifoParam_6
// 1252     case DMA_FIFO_THRESHOLD_HALFFULL:
// 1253       if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
??DMA_CheckFifoParam_10:
        LDR      R1,[R2, #+44]
        LSLS     R1,R1,#+7
        BPL.N    ??DMA_CheckFifoParam_13
// 1254       {
// 1255         status = HAL_ERROR;
        MOVS     R0,#+1
// 1256       }
// 1257       break;
??DMA_CheckFifoParam_13:
        B.N      ??DMA_CheckFifoParam_6
// 1258     case DMA_FIFO_THRESHOLD_FULL:
// 1259       if (hdma->Init.MemBurst == DMA_MBURST_INC16)
??DMA_CheckFifoParam_11:
        LDR      R1,[R2, #+44]
        CMP      R1,#+25165824
        BNE.N    ??DMA_CheckFifoParam_14
// 1260       {
// 1261         status = HAL_ERROR;
        MOVS     R0,#+1
// 1262       }
// 1263       break;   
??DMA_CheckFifoParam_14:
        B.N      ??DMA_CheckFifoParam_6
// 1264     default:
// 1265       break;
??DMA_CheckFifoParam_12:
        B.N      ??DMA_CheckFifoParam_6
// 1266     }
// 1267   }
// 1268   
// 1269   /* Memory Data size equal to Word */
// 1270   else
// 1271   {
// 1272     switch (tmp)
??DMA_CheckFifoParam_8:
        CMP      R3,#+0
        CMP      R3,#+2
        BLS.N    ??DMA_CheckFifoParam_15
        SUBS     R3,R3,#+3
        BEQ.N    ??DMA_CheckFifoParam_16
        B.N      ??DMA_CheckFifoParam_17
// 1273     {
// 1274     case DMA_FIFO_THRESHOLD_1QUARTERFULL:
// 1275     case DMA_FIFO_THRESHOLD_HALFFULL:
// 1276     case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
// 1277       status = HAL_ERROR;
??DMA_CheckFifoParam_15:
        MOVS     R0,#+1
// 1278       break;
        B.N      ??DMA_CheckFifoParam_6
// 1279     case DMA_FIFO_THRESHOLD_FULL:
// 1280       if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
??DMA_CheckFifoParam_16:
        LDR      R1,[R2, #+44]
        LSLS     R1,R1,#+7
        BPL.N    ??DMA_CheckFifoParam_18
// 1281       {
// 1282         status = HAL_ERROR;
        MOVS     R0,#+1
// 1283       }
// 1284       break;
??DMA_CheckFifoParam_18:
        B.N      ??DMA_CheckFifoParam_6
// 1285     default:
// 1286       break;
// 1287     }
// 1288   } 
// 1289   
// 1290   return status; 
??DMA_CheckFifoParam_17:
??DMA_CheckFifoParam_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
// 1291 }
          CFI EndBlock cfiBlock14

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 1292 
// 1293 /**
// 1294   * @}
// 1295   */
// 1296 
// 1297 #endif /* HAL_DMA_MODULE_ENABLED */
// 1298 /**
// 1299   * @}
// 1300   */
// 1301 
// 1302 /**
// 1303   * @}
// 1304   */
// 1305 
// 
//     8 bytes in section .rodata
// 2 078 bytes in section .text
// 
// 2 078 bytes of CODE  memory
//     8 bytes of CONST memory
//
//Errors: none
//Warnings: none
