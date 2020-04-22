#include "DHT.h"
#include <Wire.h>
#define DHTTYPE DHT11
#define dht_dpin D3
 
DHT dht(dht_dpin, DHTTYPE);
 

void setup() 
{
  Wire.begin(D1, D2);
  dht.begin();
  Serial.begin(9600);
  delay(2000);
}

void loop() 
{
  float h,t;
  
  h=dht.readHumidity();
  t=dht.readTemperature();
  
  char sendh[6];
  char sendt[5];
  dtostrf(h,6,2,sendh);
  dtostrf(t,5,2,sendt);
  
  char finals[20];
  for (int i=0;i<=4;i++)
    finals[i]=sendt[i];
  
  int j=0;
  for (int i=5;i<=10;i++)
    finals[i]=sendh[j++];
  
  Serial.println(finals);
  Wire.beginTransmission(7);
  Wire.write(finals);
  Wire.endTransmission();
  
  delay(2000);
}
