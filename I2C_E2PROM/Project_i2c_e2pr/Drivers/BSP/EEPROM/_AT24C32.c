 /* USER CODE BEGIN 1 */

#include <stdint.h>
#include <stdbool.h>

#include "main.h"
#include "_AT24C32.h"


/**
  * @brief  Write an amount of data in blocking mode to a specific memory address
  * @param  address Internal memory address
  * @param  data Pointer to data buffer
  * @param  len Amount of data to be sent
  * @param  timeout Timeout duration
  * @retval bool status
  */

bool at24_write(I2C_HandleTypeDef *hi2c1, uint16_t address, uint8_t *data, uint16_t len, uint32_t timeout) 
{		
    //WP_PIN OFF
    HAL_GPIO_WritePin(EEP_WP_ON_OFF_GPIO_Port, EEP_WP_ON_OFF_Pin, GPIO_PIN_RESET);
 
    if (HAL_I2C_Mem_Write(hi2c1, _EEPROM_ADDRESS, address, I2C_MEMADD_SIZE_16BIT, data, len, 100) == HAL_OK)   
    {
      HAL_Delay(100);
      HAL_GPIO_WritePin(EEP_WP_ON_OFF_GPIO_Port, EEP_WP_ON_OFF_Pin, GPIO_PIN_SET);
      
      return true;
    }
    else
      return false;
}

/**
  * @brief  Read an amount of data in blocking mode to a specific memory address
  * @param  address Internal memory address
  * @param  data Pointer to data buffer
  * @param  len Amount of data to be sent
  * @param  timeout Timeout duration
  * @retval bool status
  */
bool at24_read(I2C_HandleTypeDef *hi2c1, uint16_t address, uint8_t *data, uint16_t len, uint32_t timeout)
{
    if (HAL_I2C_Mem_Read(hi2c1, _EEPROM_ADDRESS, address, I2C_MEMADD_SIZE_16BIT, data, len, timeout) == HAL_OK)
      return true;
    else
      return false;    
}

/**
  * @brief  Erase memory.
  * @param  none
  * @retval bool status
  */

bool at24_eraseChip(I2C_HandleTypeDef *hi2c1)
{
  const uint8_t eraseData[32] = {0xFF, };
  uint32_t addrs = 0;
  
  while ( addrs < (4096)) // 4096*8 = 32k
  {
    if (at24_write(hi2c1, addrs, (uint8_t*)eraseData, sizeof(eraseData), 100) == false)
      return false;
    addrs += sizeof(eraseData);           
  }
  return true;  
}

/* USER CODE END 1 */



