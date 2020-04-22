int op=D3;
void setup()
{
  Serial.begin(9600);
  pinMode(D3,INPUT);
}

void loop()
{
  while(Serial.available())
  {
    pinMode(D3,OUTPUT);
    int frequency=(int)Serial.read();
    tone(op,frequency);
    delay(3000);
    pinMode(D3,INPUT);
    }
}
