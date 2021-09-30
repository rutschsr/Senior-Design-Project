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
 // ina219.setCalibration_16V_400mA()
}

void loop(void) 
{
  float power_mW = 0;
  float current_mA =0;
  float voltage_V=0;
  float shuntvoltage_mV=0;
  float loadvoltage=0;
  
  voltage_V =ina219.getBusVoltage_V();
  power_mW = ina219.getPower_mW();
  current_mA = ina219.getCurrent_mA();
  shuntvoltage_mV=ina219.getShuntVoltage_mV();
  float power_W=power_mW/1000;
  loadvoltage=voltage_V+(shuntvoltage_mV/1000);
  power_W=(current_mA/1000)*5.14; //(measured voltage)
  Serial.print(power_W);
  Serial.println("");

  delay(100);
}
