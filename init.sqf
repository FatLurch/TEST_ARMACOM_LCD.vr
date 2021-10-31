/*
	Fat_Lurch - 2021-10-29
	
	Updated - 2021-10-30: Added endl (CRLF) character to lines for use with Raspberry Pi
	
	This is a simple scenario that illustrates how to send text strings to a simple LCD connected to an Arduino

    This mission assumes this sketch is laoded onto the Arduino: https://github.com/FatLurch/Basic_Serial_Display

	Affiliate link to 16x2 I2C display on Amazon: https://amzn.to/3BsJL4j

*/

com = "COM13";	//##### change this to your appropriate com port #####

sleep 0.5;

systemChat format["COM ports: %1", str([] call ARMACOM_fnc_listPorts)];				//Display the COM ports available in SystemChat

[com] call ARMACOM_fnc_connect;				//Connect to the COM port
[com] call ARMACOM_fnc_useWriteThread;		//Using this mode improves performance

while {true} do
{
	sleep 0.3;

	//_data = format["Map grid: %1%2", mapGridPosition player, endl];										//Display player GPS coordinates on the LCD
	//_data = format["Heading: %1%2", [getDir Player, 0] call BIS_fnc_cutDecimals, endl];				//Display player heading on the LCD
	_data = format["Speed: %1 km/h%2", [speed player, 0] call BIS_fnc_cutDecimals, endl];				//Display player speed on the LCD
	//_data = format["Temp: %1C%2", [ambientTemperature select 0, 2] call BIS_fnc_cutDecimals, endl];	//Display environment temperature on the LCD


	//_data = format["Speed: %1 km/h", [speed player, 0] call BIS_fnc_cutDecimals];				//Display player speed on the LCD
	
	[com, _data] call ARMACOM_fnc_write;				//Display the data
}