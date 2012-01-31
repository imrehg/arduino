// Simple test for Geek Dinner: LED, photoresistor, and a second LED
#define LED_N_SIDE 5
#define LED_P_SIDE 9
#define LIGHT_PIN 0
#define DEBUG_LIGHT 11

void setup()
{
  Serial.begin(9600);
}

void loop()
{
  unsigned int j;

  // Apply reverse voltage, charge up the pin and led capacitance
  pinMode(LED_N_SIDE, OUTPUT);
  pinMode(LED_P_SIDE, OUTPUT);
  pinMode(DEBUG_LIGHT, OUTPUT);
  digitalWrite(LED_N_SIDE,HIGH);
  digitalWrite(LED_P_SIDE,LOW);

  j = analogRead(LIGHT_PIN);
  Serial.println(j);
  if (j < 1000) {
     digitalWrite(DEBUG_LIGHT, HIGH);
  } else {
     digitalWrite(DEBUG_LIGHT, LOW);
  }
  delayMicroseconds(100);
}
