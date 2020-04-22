#include <Wire.h>

void setup() {
    Wire.begin(D1,D2);
    Serial.begin(9600);  
}

void loop() {
  delay(1000);
  Wire.requestFrom(3,11);
  char str[14];
  int i = 0;
  while(Wire.available() > 0)
  {
    str[i] = Wire.read();
    i++;
  
  }
  //Serial.println(str);
  Serial.print("Humidity :");
  for(i = 0; i < 5; i++)
    Serial.print(str[i]);
   Serial.println();
  Serial.print("Temperature :");
  for(i = 6; i < 11; i++)
    Serial.print(str[i]);
  Serial.println();
  delay(1000);
}
