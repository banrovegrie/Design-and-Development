/*
  WriteMultipleFields
  
  Description: Writes values to fields 1,2,3,4 and status in a single ThingSpeak update every 20 seconds.
  
  Hardware: Arduino Yún, Yún Rev.2
  
  !!! IMPORTANT - Modify the secrets.h file for this project with your network connection and ThingSpeak channel details. !!!
  
  Note:
    - This example works with both Ethernet and WiFi
    - For WiFi with the Yún Rev.2, configure the SSID and password through the Access Point portal.
       See https://www.arduino.cc/en/Guide/ArduinoYunRev2 for details.
  
  ThingSpeak ( https://www.thingspeak.com ) is an analytic IoT platform service that allows you to aggregate, visualize, and 
  analyze live data streams in the cloud. Visit https://www.thingspeak.com to sign up for a free account and create a channel.  
  
  Documentation for the ThingSpeak Communication Library for Arduino is in the README.md folder where the library was installed.
  See https://www.mathworks.com/help/thingspeak/index.html for the full ThingSpeak documentation.
  
  For licensing information, see the accompanying license file.
  
  Copyright 2018, The MathWorks, Inc.
*/

#include "ThingSpeak.h"
#include "secrets.h"
#include <BridgeClient.h>

BridgeClient client;
unsigned long myChannelNumber = SECRET_CH_ID;
const char * myWriteAPIKey = SECRET_WRITE_APIKEY;

// Initialize our values
int number1 = 0;
int number2 = random(0,100);
int number3 = random(0,100);
int number4 = random(0,100);
String myStatus = "";

void setup() {
  Serial.begin(115200);  //Initialize serial

  Bridge.begin();
  ThingSpeak.begin(client);  // Initialize ThingSpeak
}

void loop() {
 
  // set the fields with the values
  ThingSpeak.setField(1, number1);
  ThingSpeak.setField(2, number2);
  ThingSpeak.setField(3, number3);
  ThingSpeak.setField(4, number4);

  // figure out the status message
  if(number1 > number2){
    myStatus = String("field1 is greater than field2"); 
  }
  else if(number1 < number2){
    myStatus = String("field1 is less than field2");
  }
  else{
    myStatus = String("field1 equals field2");
  }
  
  // set the status
  ThingSpeak.setStatus(myStatus);
  
  // write to the ThingSpeak channel
  int x = ThingSpeak.writeFields(myChannelNumber, myWriteAPIKey);
  if(x == 200){
    Serial.println("Channel update successful.");
  }
  else{
    Serial.println("Problem updating channel. HTTP error code " + String(x));
  }
  
 // change the values
  number1++;
  if(number1 > 99){
    number1 = 0;
  }
  number2 = random(0,100);
  number3 = random(0,100);
  number4 = random(0,100);
  
  delay(20000); // Wait 20 seconds to update the channel again
}
