# arduracer
You want to slot race, but have nobody who wants to play with you? Then why don´t you race against an Arduino? This Arduino Sketch makes it possible.

For this reason, I arranged hall sensors around the track that signal the Arduino, where the car actually is. The arduino sketch then accelerates or brakes the car accordingly.

Hall sensors are small electronic parts that detect magnetic fields. Whenever a magnet comes close to such a sensor, it pulls its output pin to ground, and can so be used as a kind of magnetic switch. 

I hot-glue strong magnets to the slot car's wheels and also hall sensors to the side of the the racing track. 
Because of these modifications, the hall sensors send  impulses to the microcontroller whenever the car passes by. So the Arduino program knows, where the car actually is and accordingly decides about its speed. 

By means of the Arduino's analogWrite() function, I generate a PWM signal which I amplify with a small transistor circuit and then put on the track.
So I can set the speed from whithin the Arduino program. With the function analogWrite() called with a parameter value between 0 and 255, I can set every speed value between stop and full speed. 

And here is a brief explanation about how the sketch works: Every time when the slot car passes by a hall effect sensor, an  Interrupt routine is being called. There the hall sensor which caused the interrupt is identified and a speed value is read out of an Array and brought to the red car by the analogWrite() command and the transistor circuit. Have fun!
