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
  float current_mA = 0;

  current_mA = ina219.getCurrent_mA();
  // Has the ability to find power, maybe use that
  Serial.print(current_mA);
  Serial.println("");

  delay(100);
}
