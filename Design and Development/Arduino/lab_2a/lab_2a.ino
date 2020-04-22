#include "DHT.h"
#define DHTTYPE DHT11
#define dht_dpin D3
DHT dht(dht_dpin, DHTTYPE);
 

void setup() 
{
  dht.begin();
  Serial.begin(9600);
  delay(2000);
}

void loop() 
{   
  float hum,temp;
  
  hum=dht.readHumidity();
  temp=dht.readTemperature();
  
  Serial.print("Temperature:");
  Serial.println(temp);
  
  Serial.print("Humidity:");
  Serial.println(hum);
  
  delay(2000);
}
