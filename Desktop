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
#include <Adafruit_Sensor.h>
#include <Adafruit_BNO055.h>
#include <utility/imumaths.h>

// NOTE you need to add -lsupc++ -lstdc++ to "append to link" compile options
#include <TeensySimplePacketComs.h>
#define BNO055_SAMPLERATE_DELAY_MS (1)

Adafruit_BNO055 bno = Adafruit_BNO055();
imu::Vector<3> v;
imu::Vector<3> a;
PWMServo servos[20];
int currentPos[16] = {90,90,90,90,90,90,90,90,90,90,90,90,90,90,90,90};
class SetServos: public PacketEventAbstract {
private:
	unsigned long long lastTime = 0;

public:
	// Packet ID needs to be set
	SetServos() :
		PacketEventAbstract(1962)	// Address of this event
{
}
	//User function to be called when a packet comes in
	// Buffer contains data from the packet coming in at the start of the function
	// User data is written into the buffer to send it back
	void event(float * buffer) {
		uint8_t * bytes = (uint8_t *) buffer;
		int numberOfBytes = 60;
		if((lastTime+10)<millis()){
			lastTime = millis();
			for (int i = 0; i < 16; i++) {
				if(currentPos[i]!=bytes[i]){
					Serial.println(bytes[i]);
					servos[i].write(map(bytes[i], 0, 255,0,180) );
					currentPos[i] = bytes[i];
				}

			}
		}
		Serial.println("=========");
	}
};

class GetIMU: public PacketEventAbstract {
public:
	// Packet ID needs to be set
	GetIMU() :
		PacketEventAbstract(1804)	// Address of this event
{
}
	//User function to be called when a packet comes in
	// Buffer contains data from the packet coming in at the start of the function
	// User data is written into the buffer to send it back
	void event(float * buffer) {
		return;
		buffer[0] = a.x();
		buffer[1] = a.y();
		buffer[2] = a.z();
		buffer[3] = v.x();
		buffer[4] = v.y();
		buffer[5] = v.z();
	}
};
HIDSimplePacket coms;
int ServoPins[20] = { 10, 30, 29, 21, 22, 6, 8, 4, 38, 37, 35, 5, 2, 14, 36, 9,
		3, 7, 23, 20 };	//{9,8, 4, 5, 2,3, 7, 6, 22, 21, 10, 29, 30, 23, 20, 14, 36, 35, 37, 38}

void setup() {
	Serial.begin(115200);
	for (int i = 0; i < 16; i++) {
		servos[i].attach(ServoPins[i],1000,2400);
		servos[i].write(36);
	}
	if (!bno.begin()) {
		//while (1);
	}
	//bno.setExtCrystalUse(true);
	coms.attach(new SetServos());
	coms.attach(new GetIMU());
	delay (300);

}

void loop() {
	//a = bno.getVector(Adafruit_BNO055::VECTOR_LINEARACCEL);
	//v = bno.getVector(Adafruit_BNO055::VECTOR_GYROSCOPE);

	coms.server();

}
