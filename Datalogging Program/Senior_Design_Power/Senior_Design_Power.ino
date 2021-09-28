#include <Wire.h>
#include <Adafruit_INA219.h>

Adafruit_INA219 ina219;

//I2c sensor connected to SCA and SCL pins
//Example program largely from adafruit
//Requires adafruit INA 219 librry version 1.1.1

void setup(void) 
{
  uint32_t currentFrequency;
  Serial.begin(115200);
  
  // Initialize the INA219.
  ina219.begin();
}

void loop(void) 
{
  float power_mW = 0;

  power_mW = ina219.getPower_mW();
  float power_W=power_mW/1000;

  Serial.print(power_W);
  Serial.println("");

  delay(100);
}
