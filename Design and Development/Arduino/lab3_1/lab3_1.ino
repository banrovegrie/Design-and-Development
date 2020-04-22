#include<ESP8266WiFi.h>
#include <ESP_WiFiManager.h>

String ssid="alala";
String password="gandhi123";
String s="";
WiFiServer my_server(80);

void setup() 
{
    Serial.begin(9600);
    pinMode(D0,OUTPUT);
    //digitalWrite(D0,HIGH);
    WiFi.begin(ssid.c_str(),password.c_str());
    while(1)
    {
      if(WiFi.status()==WL_CONNECTED)
      break;
      delay(1);
    }
    Serial.println("board connected to wifi");
    my_server.begin();
    Serial.println(WiFi.localIP());
}

void loop() 
{
     WiFiClient client = my_server.available();
     if(client.connected())
     Serial.println("client has connected");
     if(client.available())
        s=client.readStringUntil('\r');
     else 
        Serial.println("Hola");  
         
     Serial.println(s);
     client.flush();
     if(s.indexOf("/LED=ON")!=-1)
        digitalWrite(D0,LOW);
        
     else if(s.indexOf("/LED=OFF")!=-1)
      digitalWrite(D0,HIGH);
     
     if(digitalRead(D0)==LOW)
      client.print("Off");
     else
     {
      client.print("On");
     }
     
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("");
    client.println("<!DOCTYPE HTML>");
    client.println("<html>");
    client.print("Led pin is now: ");
    client.println("<br><br>");
    client.println("<a href=\"/LED=ON\"\"><button>Turn On </button></a>");
    client.println("<a href=\"/LED=OFF\"\"><button>Turn Off </button></a><br/>");
    client.println("</html>");
    client.print("client has disconnected"); 
 }
