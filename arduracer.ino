//D8..D12: PORT B0..B4, PCINT0..4

#define PORTB_MASK  ((1 << PB0) | (1 << PB1) | (1 << PB2) | (1 << PB3) | (1 << PB4)) //Arduino D8..D12
#define PWM_PIN 5

/*Speed values*/
const uint8_t speeds[] = {
  190,
  255,
  120,
  110,
  190,
};

void setup() {
  Serial.begin(115200);
  Serial.println("Have Fun!");
  PORTB |= PORTB_MASK; //Enable Pullup resistors
  PCICR |= (1 << PCIE0); //Enable Pin Change Interrupt for Port B and Port C
  PCMSK0 = (1 << PCINT0) | (1 << PCINT1) | (1 << PCINT2) | (1 << PCINT3) | (1 << PCINT4); //Pin Change Interrupt D8..D12
  pinMode(PWM_PIN, OUTPUT);
  analogWrite(PWM_PIN, 255);
}


/*
 * Set speed of car according to the sensor 
 */
void set_speed(uint8_t sensor){
  char msg[32];
  int speed = 255-speeds[sensor-1];
  sprintf(msg, "Sensor Nr.: %d, Speed: %d", sensor, speed);
  Serial.println(msg);
  analogWrite(5, speed);
}

//Interrupt routine called when D8..D12 changes
ISR(PCINT0_vect){
  uint8_t b = ~PINB & PORTB_MASK;
  if(b == 0) return; 
  //Determine the number of the sensor where the car passed by.
  volatile uint8_t sensor_nr = 0;
  while(b){
    b = b >> 1;
    sensor_nr++;
  }
  set_speed(sensor_nr);
}

void loop() {
    // Just empty. Interrupt driven
}
