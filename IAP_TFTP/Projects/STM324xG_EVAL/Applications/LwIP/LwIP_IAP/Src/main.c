  /**
  ******************************************************************************
  * @file    LwIP/LwIP_IAP/Src/main.c
  * @author  MCD Application Team
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2017 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include <stdbool.h>

#include "main.h"
#include "lwip/opt.h"
#include "lwip/init.h"
#include "lwip/netif.h"
#include "lwip/timeouts.h"
#include "netif/etharp.h"
#include "ethernetif.h"
#include "app_ethernet.h"
#include "tftpserver.h"
#include "httpserver.h"
#ifdef USE_LCD
#include "lcd_log.h"
#endif

/* Private typedef -----------------------------------------------------------*/
typedef  void (*pFunction)(void);

/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
pFunction Jump_To_Application;
uint32_t JumpAddress;
struct netif gnetif;

UART_HandleTypeDef huart1;


/* Private function prototypes -----------------------------------------------*/
static void BSP_Config(void);
static void Netif_Config(void);
static void SystemClock_Config(void);

static void SysDeinit(void);
static void MX_USART1_UART_Init(void);
static void USART1_Deinit(void);

void Error_Handler(void);

/* Private functions ---------------------------------------------------------*/
int fputc(int ch, FILE *f)
{
    /* Place your implementation of fputc here */
    /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
    if( ch == '\n' ){
        ch = '\r';
        HAL_UART_Transmit( &huart1, (uint8_t *)&ch, 1, 0xFFFF );
        ch = '\n';
    }
	
    HAL_UART_Transmit( &huart1, (uint8_t *)&ch, 1, 0xFFFF );
	
    return ch;
}
#if 0   //******************************************************

int main(void)
{
  /* Configure Key Button */      
  BSP_PB_Init(BUTTON_KEY, BUTTON_MODE_GPIO);  
  
  /* Test if Key push-button is not pressed */
  if (BSP_PB_GetState(BUTTON_KEY) != 0x00)
  { /* Key push-button not pressed: jump to user application */
    
    /* Check if valid stack address (RAM address) then jump to user application */
    if (((*(__IO uint32_t*)USER_FLASH_FIRST_PAGE_ADDRESS) & 0x2FFE0000 ) == 0x20000000)
    {
      /* Jump to user application */
      JumpAddress = *(__IO uint32_t*) (USER_FLASH_FIRST_PAGE_ADDRESS + 4);
      Jump_To_Application = (pFunction) JumpAddress;
      /* Initialize user application's Stack Pointer */
      __set_MSP(*(__IO uint32_t*) USER_FLASH_FIRST_PAGE_ADDRESS);
      Jump_To_Application();
      /* do nothing */
      while(1);
    }
    else
    {/* Otherwise, do nothing */
      /* LED3 (RED) ON to indicate bad software (when not valid stack address) */
      BSP_LED_Init(LED3);
      BSP_LED_On(LED3);
      /* do nothing */
      while(1);
    }
  }
  /* Enter in IAP mode */
  else
  {
    /* STM32F4xx HAL library initialization:
       - Configure the Flash prefetch, instruction and Data caches
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Global MSP (MCU Support Package) initialization
     */
    HAL_Init();  
    
    /* Configure the system clock to 168 MHz */
    SystemClock_Config();
    
    /* Configure the BSP */
    BSP_Config();
    
    /* Initialize the LwIP stack */
    lwip_init();
    
    /* Configure the Network interface */
    Netif_Config();
    
#ifdef USE_IAP_HTTP
    /* Initialize the webserver module */
    IAP_httpd_init();
#endif
    
#ifdef USE_IAP_TFTP    
    /* Initialize the TFTP server */
    IAP_tftpd_init();
#endif  
    
    
    /* Infinite loop */
    while (1)
    {
      /* Read a received packet from the Ethernet buffers and send it 
         to the lwIP for handling */
      ethernetif_input(&gnetif);

      sys_check_timeouts();

#if LWIP_NETIF_LINK_CALLBACK
      Ethernet_Link_Periodic_Handle(&gnetif);
#endif

#if LWIP_DHCP
      DHCP_Periodic_Handle(&gnetif);
#endif
    }//end while
  }//else
}// end main


#endif  //*****************************************************

//================================================================
static void CPU_CACHE_Disable(void)
{
  /* Disable I-Cache */
  //SCB_DisableICache();

  /* Disable D-Cache */
  //SCB_DisableDCache();
}

bool gApp_mode = false;

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  if( GPIO_Pin == GPIO_PIN_0)
  {
      HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_14);
      //HAL_Delay(100);
      gApp_mode = true;
  }
}

int main(void)
{
  HAL_Init();  

  SystemClock_Config();

  //BSP_Config();
  GPIO_Init();  
  MX_USART1_UART_Init();
  
  printf("******************************\r\n\r\n");
  
  //if( gApp_mode == true )    //App mode
  if( HAL_GPIO_ReadPin(GPIOE, GPIO_PIN_0) == 0x00 )
  {
    printf("\r\n[ App mode ... ]\r\n");
    
      /* Check if valid stack address (RAM address) then jump to user application */
    if (((*(__IO uint32_t*)USER_FLASH_FIRST_PAGE_ADDRESS) & 0x2FFE0000 ) == 0x20000000)
    { 
        SysDeinit();
        
        HAL_Delay(5);
        __disable_irq();
        CPU_CACHE_Disable();
         
        
        /* Jump to user application */
        JumpAddress = *(__IO uint32_t*) (USER_FLASH_FIRST_PAGE_ADDRESS + 4);
        Jump_To_Application = (pFunction) JumpAddress;
        /* Initialize user application's Stack Pointer */
        __set_MSP(*(__IO uint32_t*) USER_FLASH_FIRST_PAGE_ADDRESS);
        Jump_To_Application();
        /* do nothing */
        while(1);
    }
    else
    {
        printf("\r\n Nothing App F/W ...\r\n");
        while(1);
    }
  }//end App mode
  
  HAL_Delay(1000);
  /* Initialize the LwIP stack */
  lwip_init();
    
  /* Configure the Network interface */
  Netif_Config();

  /* Initialize the TFTP server */
  HAL_Delay(1000);
  IAP_tftpd_init();
  printf("================ TFTP Init done ================r\n\r\n");  
  
  while (1)
  {
      /* Read a received packet from the Ethernet buffers and send it 
         to the lwIP for handling */
      ethernetif_input(&gnetif);

      sys_check_timeouts();
      
#if LWIP_NETIF_LINK_CALLBACK
      Ethernet_Link_Periodic_Handle(&gnetif);
#endif      
      
      
      //HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_12);
      HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_13);
      //HAL_GPIO_TogglePin(GPIOG, GPIO_PIN_14);
      HAL_Delay(300);
  }//end while
}//end main


static void MX_USART1_UART_Init(void)
{
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 921600;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
}

static void USART1_Deinit(void)
{
    HAL_UART_DeInit(&huart1);
}


static void SysDeinit(void)
{
  GPIO_Deinit();
  USART1_Deinit();
}




/**
  * @brief  Initializes the STM324xG-EVAL's LCD and LEDs resources.
  * @param  None
  * @retval None
  */
static void BSP_Config(void)
{
  /* Configure LED1, LED2, LED3 and LED4 */
  BSP_LED_Init(LED1);
  BSP_LED_Init(LED2);
  BSP_LED_Init(LED3);
  BSP_LED_Init(LED4);

  /* Set Systick Interrupt to the highest priority */
  HAL_NVIC_SetPriority(SysTick_IRQn, 0x0, 0x0);
 
#ifdef USE_LCD    
  /* Initialize the STM324xG-EVAL's LCD */
  BSP_LCD_Init();

  /* Initialize LCD Log module */
  LCD_LOG_Init();  

  /* Show Header and Footer texts */
  LCD_LOG_SetHeader((uint8_t *)"Ethernet IAP Application");
  LCD_LOG_SetFooter((uint8_t *)"STM324xG-EVAL board");
  
  LCD_UsrLog("  State: Ethernet Initialization ...\n");  
#endif
}

/**
  * @brief  Configurates the network interface
  * @param  None
  * @retval None
  */
static void Netif_Config(void)
{
  ip_addr_t ipaddr;
  ip_addr_t netmask;
  ip_addr_t gw;
  
#if LWIP_DHCP 
  ip_addr_set_zero_ip4(&ipaddr);
  ip_addr_set_zero_ip4(&netmask);
  ip_addr_set_zero_ip4(&gw);
#else

  /* IP address default setting */
  IP4_ADDR(&ipaddr, IP_ADDR0, IP_ADDR1, IP_ADDR2, IP_ADDR3);
  IP4_ADDR(&netmask, NETMASK_ADDR0, NETMASK_ADDR1 , NETMASK_ADDR2, NETMASK_ADDR3);
  IP4_ADDR(&gw, GW_ADDR0, GW_ADDR1, GW_ADDR2, GW_ADDR3);
  
#endif
  
  /* Add the network interface */    
  netif_add(&gnetif, &ipaddr, &netmask, &gw, NULL, &ethernetif_init, &ethernet_input);
  
  /*  Registers the default network interface */
  netif_set_default(&gnetif);
  
  ethernet_link_status_updated(&gnetif);
  
#if LWIP_NETIF_LINK_CALLBACK
  netif_set_link_callback(&gnetif, ethernet_link_status_updated);
#endif
}


/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSE)
  *            SYSCLK(Hz)                     = 168000000
  *            HCLK(Hz)                       = 168000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 4
  *            APB2 Prescaler                 = 2
  *            HSE Frequency(Hz)              = 25000000
  *            PLL_M                          = 25
  *            PLL_N                          = 336
  *            PLL_P                          = 2
  *            PLL_Q                          = 7
  *            VDD(V)                         = 3.3
  *            Main regulator output voltage  = Scale1 mode
  *            Flash Latency(WS)              = 5
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();

  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /* Enable HSE Oscillator and activate PLL with HSE as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 25;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  HAL_RCC_OscConfig(&RCC_OscInitStruct);

  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;  
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;  
  HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5);

  /* STM32F405x/407x/415x/417x Revision Z and upper devices: prefetch is supported  */
  if (HAL_GetREVID() >= 0x1001)
  {
    /* Enable the Flash prefetch */
    __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
  }
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

