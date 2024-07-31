 /* USER CODE BEGIN 1 */

#ifndef	_AT24CXX_H
#define	_AT24CXX_H

#include <stdint.h>
#include <stdbool.h>


#define _EEPROM_PSIZE     		32
#define	_EEPROM_ADDRESS			0xA0




bool at24_write(I2C_HandleTypeDef *hi2c1, uint16_t address, uint8_t *data, uint16_t len, uint32_t timeout); 
bool at24_read(I2C_HandleTypeDef *hi2c1, uint16_t address, uint8_t *data, uint16_t len, uint32_t timeout);

bool at24_eraseChip(I2C_HandleTypeDef *hi2c1);

/* USER CODE END 1 */











#endif