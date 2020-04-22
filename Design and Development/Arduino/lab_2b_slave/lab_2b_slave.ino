#include <Wire.h>
char rec[12];

void setup() 
{
  Wire.begin(7);
  Wire.onReceive(receiveEvent);
  Serial.begin(9600);
}

void loop() 
{
  delay(1000);
}

void receiveEvent(int howMany)
{
  int i=0;
  while (Wire.available())
    rec[i++]=Wire.read();    
    
  Serial.println(rec);
}
