#include <Wire.h>
#include "DHT.h"
DHT dht(2,DHT11);

void setup() {
    
    Serial.begin(9600);  
    dht.begin();
    Wire.begin(3);
    Wire.onRequest(requestEvent);
}
float h, t;
void loop() {
  delay(1000);
  h=dht.readHumidity();
  t=dht.readTemperature();
//  Serial.println(h);
//  Serial.println(t);
}
void requestEvent()
{
//  float h=dht.readHumidity();
//  float t=dht.readTemperature();
  char ch[6], ct[6], out[13];
  dtostrf(h, 5, 2, ch);
  dtostrf(t, 5, 2, ct);
  strcpy(out,ch);
  out[5] = '|';
  strcpy(out + 6, ct);
//  Serial.println(out);
  Wire.write(out);
}
