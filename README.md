# TEST_ARMACOM_LCD.vr
 
This is a simple scenario that illustrates how to send text strings to a simple LCD connected to an Arduino

This mission assumes this sketch is laoded onto the Arduino: https://github.com/FatLurch/Basic_Serial_Display

Affiliate link to 16x2 I2C display on Amazon: https://amzn.to/3BsJL4j

Once the mission loads you will see a list of the available COM ports printed to the System Chat window in the bottom-left of the screen

Go into the init.sqf file and set ```com =``` *the COM port you want to use* (e.g. ```com = COM1```)

You can change which data is sent to the display by editing which ```_data =``` lines are commented

![Example](http://tsog-milsim.com/images/20211030_010332.jpg)

