///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.32.1.169/W32 for ARM        19/Jun/2024  10:36:56
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  
//    Endian       =  little
//    Source file  =  
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_dma_ex.c
//    Command line =  
//        -f C:\Users\JASAN1~1\AppData\Local\Temp\EW2DC.tmp
//        (D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_dma_ex.c
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
//        D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\EWARM\LED_blinking\List\stm32f4xx_hal_dma_ex.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK,VFP
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC HAL_DMAEx_ChangeMemory
        PUBLIC HAL_DMAEx_MultiBufferStart
        PUBLIC HAL_DMAEx_MultiBufferStart_IT
        
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
        
// D:\2_Projects\Exam\CubeMx\LED_blingking\LED_blinking\Drivers\STM32F4xx_HAL_Driver\Src\stm32f4xx_hal_dma_ex.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f4xx_hal_dma_ex.c
//    4   * @author  MCD Application Team
//    5   * @brief   DMA Extension HAL module driver
//    6   *         This file provides firmware functions to manage the following 
//    7   *         functionalities of the DMA Extension peripheral:
//    8   *           + Extended features functions
//    9   *
//   10   @verbatim
//   11   ==============================================================================
//   12                         ##### How to use this driver #####
//   13   ==============================================================================
//   14   [..]
//   15   The DMA Extension HAL driver can be used as follows:
//   16    (#) Start a multi buffer transfer using the HAL_DMA_MultiBufferStart() function
//   17        for polling mode or HAL_DMA_MultiBufferStart_IT() for interrupt mode.
//   18                    
//   19      -@-  In Memory-to-Memory transfer mode, Multi (Double) Buffer mode is not allowed.
//   20      -@-  When Multi (Double) Buffer mode is enabled the, transfer is circular by default.
//   21      -@-  In Multi (Double) buffer mode, it is possible to update the base address for 
//   22           the AHB memory port on the fly (DMA_SxM0AR or DMA_SxM1AR) when the stream is enabled. 
//   23   
//   24   @endverbatim
//   25   ******************************************************************************
//   26   * @attention
//   27   *
//   28   * Copyright (c) 2017 STMicroelectronics.
//   29   * All rights reserved.
//   30   *
//   31   * This software is licensed under terms that can be found in the LICENSE file in
//   32   * the root directory of this software component.
//   33   * If no LICENSE file comes with this software, it is provided AS-IS.
//   34   *
//   35   ******************************************************************************
//   36   */
//   37 
//   38 /* Includes ------------------------------------------------------------------*/
//   39 #include "stm32f4xx_hal.h"
//   40 
//   41 /** @addtogroup STM32F4xx_HAL_Driver
//   42   * @{
//   43   */
//   44 
//   45 /** @defgroup DMAEx DMAEx
//   46   * @brief DMA Extended HAL module driver
//   47   * @{
//   48   */
//   49 
//   50 #ifdef HAL_DMA_MODULE_ENABLED
//   51 
//   52 /* Private types -------------------------------------------------------------*/
//   53 /* Private variables ---------------------------------------------------------*/
//   54 /* Private Constants ---------------------------------------------------------*/
//   55 /* Private macros ------------------------------------------------------------*/
//   56 /* Private functions ---------------------------------------------------------*/
//   57 /** @addtogroup DMAEx_Private_Functions
//   58   * @{
//   59   */
//   60 static void DMA_MultiBufferSetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
//   61 /**
//   62   * @}
//   63   */
//   64 
//   65 /* Exported functions ---------------------------------------------------------*/
//   66 
//   67 /** @addtogroup DMAEx_Exported_Functions
//   68   * @{
//   69   */
//   70 
//   71 
//   72 /** @addtogroup DMAEx_Exported_Functions_Group1
//   73   *
//   74 @verbatim   
//   75  ===============================================================================
//   76                 #####  Extended features functions  #####
//   77  ===============================================================================  
//   78     [..]  This section provides functions allowing to:
//   79       (+) Configure the source, destination address and data length and 
//   80           Start MultiBuffer DMA transfer
//   81       (+) Configure the source, destination address and data length and 
//   82           Start MultiBuffer DMA transfer with interrupt
//   83       (+) Change on the fly the memory0 or memory1 address.
//   84       
//   85 @endverbatim
//   86   * @{
//   87   */
//   88 
//   89 
//   90 /**
//   91   * @brief  Starts the multi_buffer DMA Transfer.
//   92   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
//   93   *                     the configuration information for the specified DMA Stream.  
//   94   * @param  SrcAddress The source memory Buffer address
//   95   * @param  DstAddress The destination memory Buffer address
//   96   * @param  SecondMemAddress The second memory Buffer address in case of multi buffer Transfer  
//   97   * @param  DataLength The length of data to be transferred from source to destination
//   98   * @retval HAL status
//   99   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HAL_DMAEx_MultiBufferStart
        THUMB
//  100 HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength)
//  101 {
HAL_DMAEx_MultiBufferStart:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  102   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R5,#+0
//  103   
//  104   /* Check the parameters */
//  105   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
//  106   
//  107   /* Memory-to-memory transfer not supported in double buffering mode */
//  108   if (hdma->Init.Direction == DMA_MEMORY_TO_MEMORY)
        LDR      R0,[R4, #+8]
        CMP      R0,#+128
        BNE.N    ??HAL_DMAEx_MultiBufferStart_0
//  109   {
//  110     hdma->ErrorCode = HAL_DMA_ERROR_NOT_SUPPORTED;
        MOV      R0,#+256
        STR      R0,[R4, #+84]
//  111     status = HAL_ERROR;
        MOVS     R5,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_1
//  112   }
//  113   else
//  114   {
//  115     /* Process Locked */
//  116     __HAL_LOCK(hdma);
??HAL_DMAEx_MultiBufferStart_0:
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_2
        MOVS     R0,#+2
        B.N      ??HAL_DMAEx_MultiBufferStart_3
??HAL_DMAEx_MultiBufferStart_2:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
//  117     
//  118     if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_4
        LDR      R0,[SP, #+24]
//  119     {
//  120       /* Change DMA peripheral state */
//  121       hdma->State = HAL_DMA_STATE_BUSY; 
        MOVS     R6,#+2
        STRB     R6,[R4, #+53]
//  122       
//  123       /* Enable the double buffer mode */
//  124       hdma->Instance->CR |= (uint32_t)DMA_SxCR_DBM;
        LDR      R6,[R4, #+0]
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x40000
        LDR      R7,[R4, #+0]
        STR      R6,[R7, #+0]
//  125       
//  126       /* Configure DMA Stream destination address */
//  127       hdma->Instance->M1AR = SecondMemAddress;
        LDR      R6,[R4, #+0]
        STR      R3,[R6, #+16]
//  128       
//  129       /* Configure the source, destination address and the data length */
//  130       DMA_MultiBufferSetConfig(hdma, SrcAddress, DstAddress, DataLength);
        MOVS     R3,R0
        MOVS     R0,R4
          CFI FunCall DMA_MultiBufferSetConfig
        BL       DMA_MultiBufferSetConfig
//  131       
//  132       /* Enable the peripheral */
//  133       __HAL_DMA_ENABLE(hdma);
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_1
//  134     }
//  135     else
//  136     {
//  137       /* Return error status */
//  138       status = HAL_BUSY;
??HAL_DMAEx_MultiBufferStart_4:
        MOVS     R5,#+2
//  139     }
//  140   }
//  141   return status;
??HAL_DMAEx_MultiBufferStart_1:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMAEx_MultiBufferStart_3:
        POP      {R1,R4-R7,PC}    ;; return
//  142 }
          CFI EndBlock cfiBlock0
//  143 
//  144 /**
//  145   * @brief  Starts the multi_buffer DMA Transfer with interrupt enabled.
//  146   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
//  147   *                     the configuration information for the specified DMA Stream.  
//  148   * @param  SrcAddress The source memory Buffer address
//  149   * @param  DstAddress The destination memory Buffer address
//  150   * @param  SecondMemAddress The second memory Buffer address in case of multi buffer Transfer  
//  151   * @param  DataLength The length of data to be transferred from source to destination
//  152   * @retval HAL status
//  153   */

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HAL_DMAEx_MultiBufferStart_IT
        THUMB
//  154 HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength)
//  155 {
HAL_DMAEx_MultiBufferStart_IT:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//  156   HAL_StatusTypeDef status = HAL_OK;
        MOVS     R5,#+0
//  157   
//  158   /* Check the parameters */
//  159   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
//  160   
//  161   /* Memory-to-memory transfer not supported in double buffering mode */
//  162   if (hdma->Init.Direction == DMA_MEMORY_TO_MEMORY)
        LDR      R0,[R4, #+8]
        CMP      R0,#+128
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_2
//  163   {
//  164     hdma->ErrorCode = HAL_DMA_ERROR_NOT_SUPPORTED;
        MOV      R0,#+256
        STR      R0,[R4, #+84]
//  165     return HAL_ERROR;
        MOVS     R0,#+1
        B.W      ??HAL_DMAEx_MultiBufferStart_IT_3
//  166   }
//  167   
//  168   /* Check callback functions */
//  169   if ((NULL == hdma->XferCpltCallback) || (NULL == hdma->XferM1CpltCallback) || (NULL == hdma->XferErrorCallback))
??HAL_DMAEx_MultiBufferStart_IT_2:
        LDR      R0,[R4, #+60]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMAEx_MultiBufferStart_IT_4
        LDR      R0,[R4, #+68]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMAEx_MultiBufferStart_IT_4
        LDR      R0,[R4, #+76]
        CMP      R0,#+0
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_5
//  170   {
//  171     hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
??HAL_DMAEx_MultiBufferStart_IT_4:
        MOVS     R0,#+64
        STR      R0,[R4, #+84]
//  172     return HAL_ERROR;
        MOVS     R0,#+1
        B.W      ??HAL_DMAEx_MultiBufferStart_IT_3
//  173   }
//  174   
//  175   /* Process locked */
//  176   __HAL_LOCK(hdma);
??HAL_DMAEx_MultiBufferStart_IT_5:
        LDRB     R0,[R4, #+52]
        CMP      R0,#+1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_6
        MOVS     R0,#+2
        B.W      ??HAL_DMAEx_MultiBufferStart_IT_3
??HAL_DMAEx_MultiBufferStart_IT_6:
        MOVS     R0,#+1
        STRB     R0,[R4, #+52]
//  177   
//  178   if(HAL_DMA_STATE_READY == hdma->State)
        LDRB     R0,[R4, #+53]
        CMP      R0,#+1
        BNE.W    ??HAL_DMAEx_MultiBufferStart_IT_7
        LDR      R0,[SP, #+24]
//  179   {
//  180     /* Change DMA peripheral state */
//  181     hdma->State = HAL_DMA_STATE_BUSY;
        MOVS     R6,#+2
        STRB     R6,[R4, #+53]
//  182     
//  183     /* Initialize the error code */
//  184     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
        MOVS     R6,#+0
        STR      R6,[R4, #+84]
//  185     
//  186     /* Enable the Double buffer mode */
//  187     hdma->Instance->CR |= (uint32_t)DMA_SxCR_DBM;
        LDR      R6,[R4, #+0]
        LDR      R6,[R6, #+0]
        ORRS     R6,R6,#0x40000
        LDR      R7,[R4, #+0]
        STR      R6,[R7, #+0]
//  188     
//  189     /* Configure DMA Stream destination address */
//  190     hdma->Instance->M1AR = SecondMemAddress;
        LDR      R6,[R4, #+0]
        STR      R3,[R6, #+16]
//  191     
//  192     /* Configure the source, destination address and the data length */
//  193     DMA_MultiBufferSetConfig(hdma, SrcAddress, DstAddress, DataLength); 
        MOVS     R3,R0
        MOVS     R0,R4
          CFI FunCall DMA_MultiBufferSetConfig
        BL       DMA_MultiBufferSetConfig
//  194     
//  195     /* Clear all flags */
//  196     __HAL_DMA_CLEAR_FLAG (hdma, __HAL_DMA_GET_TC_FLAG_INDEX(hdma));
        LDR.W    R0,??HAL_DMAEx_MultiBufferStart_IT_0  ;; 0x40026459
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_8
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_9
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_9:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_11
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_11:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_12
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_12:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_13
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_13:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_14
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_14:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_15
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_15:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_16
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_16:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_17
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_17:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_18
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_18:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_19
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_19:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_20
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_20:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_21
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_10
??HAL_DMAEx_MultiBufferStart_IT_21:
        MOVS     R1,#+134217728
??HAL_DMAEx_MultiBufferStart_IT_10:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x34  ;; 0x4002640c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_22
??HAL_DMAEx_MultiBufferStart_IT_8:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x38  ;; 0x400260b9
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_23
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_24
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_24:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_26
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_26:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_27
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_27:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_28
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_28:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_29
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_29:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_30
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_30:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_31
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_31:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_32
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_32:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_33
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_33:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_34
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_34:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_35
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_35:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_36
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_25
??HAL_DMAEx_MultiBufferStart_IT_36:
        MOVS     R1,#+134217728
??HAL_DMAEx_MultiBufferStart_IT_25:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x3C  ;; 0x40026408
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_22
??HAL_DMAEx_MultiBufferStart_IT_23:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x40  ;; 0x40026059
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_37
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_38
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_38:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_40
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_40:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_41
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_41:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_42
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_42:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_43
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_43:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_44
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_44:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_45
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_45:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_46
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_46:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_47
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_47:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_48
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_48:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_49
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_49:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_50
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_39
??HAL_DMAEx_MultiBufferStart_IT_50:
        MOVS     R1,#+134217728
??HAL_DMAEx_MultiBufferStart_IT_39:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x44  ;; 0x4002600c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_22
??HAL_DMAEx_MultiBufferStart_IT_37:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_51
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_51:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_53
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_53:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_54
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_54:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_55
        MOVS     R1,#+32
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_55:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_56
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_56:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_57
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_57:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_58
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_58:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_59
        MOV      R1,#+2048
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_59:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_60
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_60:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_61
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_61:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_62
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_62:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_63
        MOVS     R1,#+2097152
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_52
??HAL_DMAEx_MultiBufferStart_IT_63:
        MOVS     R1,#+134217728
??HAL_DMAEx_MultiBufferStart_IT_52:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_1  ;; 0x40026008
        STR      R1,[R2, #+0]
//  197     __HAL_DMA_CLEAR_FLAG (hdma, __HAL_DMA_GET_HT_FLAG_INDEX(hdma));
??HAL_DMAEx_MultiBufferStart_IT_22:
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_64
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_65
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_65:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_67
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_67:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_68
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_68:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_69
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_69:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_70
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_70:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_71
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_71:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_72
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_72:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_73
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_73:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_74
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_74:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_75
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_75:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_76
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_76:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_77
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_66
??HAL_DMAEx_MultiBufferStart_IT_77:
        MOVS     R1,#+67108864
??HAL_DMAEx_MultiBufferStart_IT_66:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x34  ;; 0x4002640c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_78
??HAL_DMAEx_MultiBufferStart_IT_64:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x38  ;; 0x400260b9
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_79
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_80
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_80:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_82
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_82:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_83
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_83:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_84
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_84:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_85
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_85:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_86
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_86:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_87
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_87:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_88
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_88:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_89
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_89:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_90
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_90:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_91
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_91:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_92
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_81
??HAL_DMAEx_MultiBufferStart_IT_92:
        MOVS     R1,#+67108864
??HAL_DMAEx_MultiBufferStart_IT_81:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x3C  ;; 0x40026408
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_78
??HAL_DMAEx_MultiBufferStart_IT_79:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x40  ;; 0x40026059
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_93
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_94
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_94:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_96
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_96:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_97
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_97:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_98
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_98:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_99
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_99:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_100
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_100:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_101
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_101:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_102
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_102:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_103
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_103:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_104
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_104:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_105
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_105:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_106
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_95
??HAL_DMAEx_MultiBufferStart_IT_106:
        MOVS     R1,#+67108864
??HAL_DMAEx_MultiBufferStart_IT_95:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x44  ;; 0x4002600c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_78
??HAL_DMAEx_MultiBufferStart_IT_93:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_107
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_107:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_109
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_109:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_110
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_110:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_111
        MOVS     R1,#+16
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_111:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_112
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_112:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_113
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_113:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_114
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_114:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_115
        MOV      R1,#+1024
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_115:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_116
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_116:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_117
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_117:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_118
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_118:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_119
        MOVS     R1,#+1048576
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_108
??HAL_DMAEx_MultiBufferStart_IT_119:
        MOVS     R1,#+67108864
??HAL_DMAEx_MultiBufferStart_IT_108:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_1  ;; 0x40026008
        STR      R1,[R2, #+0]
//  198     __HAL_DMA_CLEAR_FLAG (hdma, __HAL_DMA_GET_TE_FLAG_INDEX(hdma));
??HAL_DMAEx_MultiBufferStart_IT_78:
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_120
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_121
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_121:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_123
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_123:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_124
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_124:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_125
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_125:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_126
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_126:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_127
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_127:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_128
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_128:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_129
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_129:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_130
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_130:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_131
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_131:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_132
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_132:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_133
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_122
??HAL_DMAEx_MultiBufferStart_IT_133:
        MOVS     R1,#+33554432
??HAL_DMAEx_MultiBufferStart_IT_122:
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x34  ;; 0x4002640c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_134
??HAL_DMAEx_MultiBufferStart_IT_120:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x38  ;; 0x400260b9
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_135
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_136
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_136:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_138
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_138:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_139
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_139:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_140
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_140:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_141
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_141:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_142
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_142:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_143
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_143:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_144
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_144:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_145
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_145:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_146
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_146:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_147
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_147:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_148
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_137
??HAL_DMAEx_MultiBufferStart_IT_148:
        MOVS     R1,#+33554432
??HAL_DMAEx_MultiBufferStart_IT_137:
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x3C  ;; 0x40026408
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_134
??HAL_DMAEx_MultiBufferStart_IT_135:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x40  ;; 0x40026059
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_149
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x4  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_150
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_150:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x8  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_152
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_152:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0xC  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_153
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_153:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x10  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_154
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_154:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x14  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_155
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_155:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x18  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_156
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_156:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x1C  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_157
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_157:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x20  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_158
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_158:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x24  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_159
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_159:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x28  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_160
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_160:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x2C  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_161
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_161:
        LDR      R1,[R4, #+0]
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x30  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_162
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_151
??HAL_DMAEx_MultiBufferStart_IT_162:
        MOVS     R1,#+33554432
??HAL_DMAEx_MultiBufferStart_IT_151:
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_0+0x44  ;; 0x4002600c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_134
        DATA
??HAL_DMAEx_MultiBufferStart_IT_0:
        DATA32
        DC32     0x40026459
        DC32     0x40026010
        DC32     0x40026410
        DC32     0x40026070
        DC32     0x40026470
        DC32     0x40026028
        DC32     0x40026428
        DC32     0x40026088
        DC32     0x40026488
        DC32     0x40026040
        DC32     0x40026440
        DC32     0x400260a0
        DC32     0x400264a0
        DC32     0x4002640c
        DC32     0x400260b9
        DC32     0x40026408
        DC32     0x40026059
        DC32     0x4002600c
        THUMB
??HAL_DMAEx_MultiBufferStart_IT_149:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_163
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_163:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_1  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_165
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_165:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_2  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_166
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_166:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_3  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_167
        MOVS     R1,#+8
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_167:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_4  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_168
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_168:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_5  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_169
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_169:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_6  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_170
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_170:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_7  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_171
        MOV      R1,#+512
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_171:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_8  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_172
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_172:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_9  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_173
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_173:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_10  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_174
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_174:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_11  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_175
        MOVS     R1,#+524288
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_164
??HAL_DMAEx_MultiBufferStart_IT_175:
        MOVS     R1,#+33554432
??HAL_DMAEx_MultiBufferStart_IT_164:
        LDR.W    R2,??HAL_DMAEx_MultiBufferStart_IT_1  ;; 0x40026008
        STR      R1,[R2, #+0]
//  199     __HAL_DMA_CLEAR_FLAG (hdma, __HAL_DMA_GET_DME_FLAG_INDEX(hdma));
??HAL_DMAEx_MultiBufferStart_IT_134:
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_176
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_177
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_177:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_1  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_179
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_179:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_2  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_180
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_180:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_3  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_181
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_181:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_4  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_182
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_182:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_5  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_183
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_183:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_6  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_184
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_184:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_7  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_185
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_185:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_8  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_186
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_186:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_9  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_187
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_187:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_10  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_188
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_188:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_11  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_189
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_178
??HAL_DMAEx_MultiBufferStart_IT_189:
        MOVS     R1,#+16777216
??HAL_DMAEx_MultiBufferStart_IT_178:
        LDR.W    R2,??DataTable1_12  ;; 0x4002640c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_190
??HAL_DMAEx_MultiBufferStart_IT_176:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_13  ;; 0x400260b9
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_191
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_192
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_192:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_1  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_194
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_194:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_2  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_195
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_195:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_3  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_196
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_196:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_4  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_197
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_197:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_5  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_198
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_198:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_6  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_199
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_199:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_7  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_200
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_200:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_8  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_201
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_201:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_9  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_202
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_202:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_10  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_203
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_203:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_11  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_204
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_193
??HAL_DMAEx_MultiBufferStart_IT_204:
        MOVS     R1,#+16777216
??HAL_DMAEx_MultiBufferStart_IT_193:
        LDR.W    R2,??DataTable1_14  ;; 0x40026408
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_190
??HAL_DMAEx_MultiBufferStart_IT_191:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_15  ;; 0x40026059
        CMP      R1,R2
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_205
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_206
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_206:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_1  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_208
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_208:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_2  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_209
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_209:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_3  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_210
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_210:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_4  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_211
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_211:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_5  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_212
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_212:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_6  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_213
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_213:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_7  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_214
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_214:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_8  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_215
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_215:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_9  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_216
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_216:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_10  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_217
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_217:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_11  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_218
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_207
??HAL_DMAEx_MultiBufferStart_IT_218:
        MOVS     R1,#+16777216
??HAL_DMAEx_MultiBufferStart_IT_207:
        LDR.W    R2,??DataTable1_16  ;; 0x4002600c
        STR      R1,[R2, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_190
??HAL_DMAEx_MultiBufferStart_IT_205:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1  ;; 0x40026010
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_219
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_219:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_1  ;; 0x40026410
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_221
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_221:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_2  ;; 0x40026070
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_222
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_222:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_3  ;; 0x40026470
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_223
        MOVS     R1,#+4
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_223:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_4  ;; 0x40026028
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_224
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_224:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_5  ;; 0x40026428
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_225
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_225:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_6  ;; 0x40026088
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_226
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_226:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_7  ;; 0x40026488
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_227
        MOV      R1,#+256
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_227:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_8  ;; 0x40026040
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_228
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_228:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_9  ;; 0x40026440
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_229
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_229:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_10  ;; 0x400260a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_230
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_230:
        LDR      R1,[R4, #+0]
        LDR.W    R2,??DataTable1_11  ;; 0x400264a0
        CMP      R1,R2
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_231
        MOVS     R1,#+262144
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_220
??HAL_DMAEx_MultiBufferStart_IT_231:
        MOVS     R1,#+16777216
??HAL_DMAEx_MultiBufferStart_IT_220:
        LDR.N    R2,??HAL_DMAEx_MultiBufferStart_IT_1  ;; 0x40026008
        STR      R1,[R2, #+0]
//  200     __HAL_DMA_CLEAR_FLAG (hdma, __HAL_DMA_GET_FE_FLAG_INDEX(hdma));
??HAL_DMAEx_MultiBufferStart_IT_190:
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_232
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1  ;; 0x40026010
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_233
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_233:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_1  ;; 0x40026410
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_235
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_235:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_2  ;; 0x40026070
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_236
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_236:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_3  ;; 0x40026470
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_237
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_237:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_4  ;; 0x40026028
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_238
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_238:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_5  ;; 0x40026428
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_239
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_239:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_6  ;; 0x40026088
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_240
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_240:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_7  ;; 0x40026488
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_241
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_241:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_8  ;; 0x40026040
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_242
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_242:
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable1_9  ;; 0x40026440
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_243
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_243:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_10  ;; 0x400260a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_244
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_244:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x400264a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_245
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_234
??HAL_DMAEx_MultiBufferStart_IT_245:
        MOVS     R0,#+4194304
??HAL_DMAEx_MultiBufferStart_IT_234:
        LDR.N    R1,??DataTable1_12  ;; 0x4002640c
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_246
        DATA
??HAL_DMAEx_MultiBufferStart_IT_1:
        DATA32
        DC32     0x40026008
        THUMB
??HAL_DMAEx_MultiBufferStart_IT_232:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_13  ;; 0x400260b9
        CMP      R0,R1
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_247
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1  ;; 0x40026010
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_248
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_248:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_1  ;; 0x40026410
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_250
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_250:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_2  ;; 0x40026070
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_251
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_251:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0x40026470
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_252
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_252:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40026028
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_253
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_253:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_5  ;; 0x40026428
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_254
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_254:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_6  ;; 0x40026088
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_255
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_255:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_7  ;; 0x40026488
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_256
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_256:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_8  ;; 0x40026040
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_257
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_257:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_9  ;; 0x40026440
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_258
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_258:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_10  ;; 0x400260a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_259
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_259:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x400264a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_260
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_249
??HAL_DMAEx_MultiBufferStart_IT_260:
        MOVS     R0,#+4194304
??HAL_DMAEx_MultiBufferStart_IT_249:
        LDR.N    R1,??DataTable1_14  ;; 0x40026408
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_246
??HAL_DMAEx_MultiBufferStart_IT_247:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_15  ;; 0x40026059
        CMP      R0,R1
        BCC.N    ??HAL_DMAEx_MultiBufferStart_IT_261
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1  ;; 0x40026010
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_262
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_262:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_1  ;; 0x40026410
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_264
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_264:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_2  ;; 0x40026070
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_265
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_265:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0x40026470
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_266
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_266:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40026028
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_267
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_267:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_5  ;; 0x40026428
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_268
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_268:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_6  ;; 0x40026088
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_269
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_269:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_7  ;; 0x40026488
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_270
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_270:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_8  ;; 0x40026040
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_271
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_271:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_9  ;; 0x40026440
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_272
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_272:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_10  ;; 0x400260a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_273
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_273:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x400264a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_274
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_263
??HAL_DMAEx_MultiBufferStart_IT_274:
        MOVS     R0,#+4194304
??HAL_DMAEx_MultiBufferStart_IT_263:
        LDR.N    R1,??DataTable1_16  ;; 0x4002600c
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_246
??HAL_DMAEx_MultiBufferStart_IT_261:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1  ;; 0x40026010
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_275
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_275:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_1  ;; 0x40026410
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_277
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_277:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_2  ;; 0x40026070
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_278
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_278:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_3  ;; 0x40026470
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_279
        MOVS     R0,#+1
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_279:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_4  ;; 0x40026028
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_280
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_280:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_5  ;; 0x40026428
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_281
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_281:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_6  ;; 0x40026088
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_282
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_282:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_7  ;; 0x40026488
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_283
        MOVS     R0,#+64
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_283:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_8  ;; 0x40026040
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_284
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_284:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_9  ;; 0x40026440
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_285
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_285:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_10  ;; 0x400260a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_286
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_286:
        LDR      R0,[R4, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x400264a0
        CMP      R0,R1
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_287
        MOVS     R0,#+65536
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_276
??HAL_DMAEx_MultiBufferStart_IT_287:
        MOVS     R0,#+4194304
??HAL_DMAEx_MultiBufferStart_IT_276:
        LDR.N    R1,??DataTable1_17  ;; 0x40026008
        STR      R0,[R1, #+0]
//  201 
//  202     /* Enable Common interrupts*/
//  203     hdma->Instance->CR  |= DMA_IT_TC | DMA_IT_TE | DMA_IT_DME;
??HAL_DMAEx_MultiBufferStart_IT_246:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x16
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  204     hdma->Instance->FCR |= DMA_IT_FE;
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+20]
        ORRS     R0,R0,#0x80
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+20]
//  205     
//  206     if((hdma->XferHalfCpltCallback != NULL) || (hdma->XferM1HalfCpltCallback != NULL))
        LDR      R0,[R4, #+64]
        CMP      R0,#+0
        BNE.N    ??HAL_DMAEx_MultiBufferStart_IT_288
        LDR      R0,[R4, #+72]
        CMP      R0,#+0
        BEQ.N    ??HAL_DMAEx_MultiBufferStart_IT_289
//  207     {
//  208       hdma->Instance->CR  |= DMA_IT_HT;
??HAL_DMAEx_MultiBufferStart_IT_288:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  209     }
//  210     
//  211     /* Enable the peripheral */
//  212     __HAL_DMA_ENABLE(hdma); 
??HAL_DMAEx_MultiBufferStart_IT_289:
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
        B.N      ??HAL_DMAEx_MultiBufferStart_IT_290
//  213   }
//  214   else
//  215   {     
//  216     /* Process unlocked */
//  217     __HAL_UNLOCK(hdma);	  
??HAL_DMAEx_MultiBufferStart_IT_7:
        MOVS     R0,#+0
        STRB     R0,[R4, #+52]
//  218     
//  219     /* Return error status */
//  220     status = HAL_BUSY;
        MOVS     R5,#+2
//  221   }  
//  222   return status; 
??HAL_DMAEx_MultiBufferStart_IT_290:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??HAL_DMAEx_MultiBufferStart_IT_3:
        POP      {R1,R4-R7,PC}    ;; return
//  223 }
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DATA32
        DC32     0x40026010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DATA32
        DC32     0x40026410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DATA32
        DC32     0x40026070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DATA32
        DC32     0x40026470

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DATA32
        DC32     0x40026028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DATA32
        DC32     0x40026428

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DATA32
        DC32     0x40026088

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DATA32
        DC32     0x40026488

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DATA32
        DC32     0x40026040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DATA32
        DC32     0x40026440

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DATA32
        DC32     0x400260a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DATA32
        DC32     0x400264a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DATA32
        DC32     0x4002640c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DATA32
        DC32     0x400260b9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DATA32
        DC32     0x40026408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DATA32
        DC32     0x40026059

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DATA32
        DC32     0x4002600c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DATA32
        DC32     0x40026008
//  224 
//  225 /**
//  226   * @brief  Change the memory0 or memory1 address on the fly.
//  227   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
//  228   *                     the configuration information for the specified DMA Stream.  
//  229   * @param  Address    The new address
//  230   * @param  memory     the memory to be changed, This parameter can be one of 
//  231   *                     the following values:
//  232   *                      MEMORY0 /
//  233   *                      MEMORY1
//  234   * @note   The MEMORY0 address can be changed only when the current transfer use
//  235   *         MEMORY1 and the MEMORY1 address can be changed only when the current 
//  236   *         transfer use MEMORY0.
//  237   * @retval HAL status
//  238   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HAL_DMAEx_ChangeMemory
          CFI NoCalls
        THUMB
//  239 HAL_StatusTypeDef HAL_DMAEx_ChangeMemory(DMA_HandleTypeDef *hdma, uint32_t Address, HAL_DMA_MemoryTypeDef memory)
//  240 {
//  241   if(memory == MEMORY0)
HAL_DMAEx_ChangeMemory:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BNE.N    ??HAL_DMAEx_ChangeMemory_0
//  242   {
//  243     /* change the memory0 address */
//  244     hdma->Instance->M0AR = Address;
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+12]
        B.N      ??HAL_DMAEx_ChangeMemory_1
//  245   }
//  246   else
//  247   {
//  248     /* change the memory1 address */
//  249     hdma->Instance->M1AR = Address;
??HAL_DMAEx_ChangeMemory_0:
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+16]
//  250   }
//  251 
//  252   return HAL_OK;
??HAL_DMAEx_ChangeMemory_1:
        MOVS     R0,#+0
        BX       LR               ;; return
//  253 }
          CFI EndBlock cfiBlock2
//  254 
//  255 /**
//  256   * @}
//  257   */
//  258 
//  259 /**
//  260   * @}
//  261   */
//  262 
//  263 /** @addtogroup DMAEx_Private_Functions
//  264   * @{
//  265   */
//  266 
//  267 /**
//  268   * @brief  Set the DMA Transfer parameter.
//  269   * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
//  270   *                     the configuration information for the specified DMA Stream.  
//  271   * @param  SrcAddress The source memory Buffer address
//  272   * @param  DstAddress The destination memory Buffer address
//  273   * @param  DataLength The length of data to be transferred from source to destination
//  274   * @retval HAL status
//  275   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function DMA_MultiBufferSetConfig
          CFI NoCalls
        THUMB
//  276 static void DMA_MultiBufferSetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
//  277 {  
DMA_MultiBufferSetConfig:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  278   /* Configure DMA Stream data length */
//  279   hdma->Instance->NDTR = DataLength;
        LDR      R4,[R0, #+0]
        STR      R3,[R4, #+4]
//  280   
//  281   /* Peripheral to Memory */
//  282   if((hdma->Init.Direction) == DMA_MEMORY_TO_PERIPH)
        LDR      R3,[R0, #+8]
        CMP      R3,#+64
        BNE.N    ??DMA_MultiBufferSetConfig_0
//  283   {   
//  284     /* Configure DMA Stream destination address */
//  285     hdma->Instance->PAR = DstAddress;
        LDR      R3,[R0, #+0]
        STR      R2,[R3, #+8]
//  286     
//  287     /* Configure DMA Stream source address */
//  288     hdma->Instance->M0AR = SrcAddress;
        LDR      R0,[R0, #+0]
        STR      R1,[R0, #+12]
        B.N      ??DMA_MultiBufferSetConfig_1
//  289   }
//  290   /* Memory to Peripheral */
//  291   else
//  292   {
//  293     /* Configure DMA Stream source address */
//  294     hdma->Instance->PAR = SrcAddress;
??DMA_MultiBufferSetConfig_0:
        LDR      R3,[R0, #+0]
        STR      R1,[R3, #+8]
//  295     
//  296     /* Configure DMA Stream destination address */
//  297     hdma->Instance->M0AR = DstAddress;
        LDR      R0,[R0, #+0]
        STR      R2,[R0, #+12]
//  298   }
//  299 }
??DMA_MultiBufferSetConfig_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  300 
//  301 /**
//  302   * @}
//  303   */
//  304 
//  305 #endif /* HAL_DMA_MODULE_ENABLED */
//  306 /**
//  307   * @}
//  308   */
//  309 
//  310 /**
//  311   * @}
//  312   */
//  313 
// 
// 4 328 bytes in section .text
// 
// 4 328 bytes of CODE memory
//
//Errors: none
//Warnings: none
