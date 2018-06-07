/* Basic Raw HID Example
 Teensy can send/receive 64 byte packets with a
 dedicated program running on a PC or Mac.

 You must select Raw HID from the "Tools > USB Type" menu

 Optional: LEDs should be connected to pins 0-7,
 and analog signals to the analog inputs.

 This example code is in the public domain.
 */
#include <SimplePacketComs.h>
#include <PWMServo.h>
#include <Wire.h>
#include <Adafruit_BNO055.h>
#include <MediumKatFirmware.h>
// NOTE you need to add -lsupc++ -lstdc++ to "append to link" compile options
#include <TeensySimplePacketComs.h>

HIDSimplePacket coms;
GetIMU * sensor;
void setup() {
	coms.attach(new SetServos());
	sensor=new GetIMU();
	//sensor->startSensor();
	coms.attach(sensor);
}

void loop() {
	coms.server();
	//sensor->loop();
}
