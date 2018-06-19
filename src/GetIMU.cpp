/*
 * GetIMU.cpp
 *
 *  Created on: Jun 7, 2018
 *      Author: hephaestus
 */

#include "GetIMU.h"
float printData[6];

//User function to be called when a packet comes in
// Buffer contains data from the packet cming in at the start of the function
// User data is written into the buffer to send it back
void GetIMU::event(float * buffer) {
	if(!started)
		return;
	buffer[0] = a.x();
	buffer[1] = a.y();
	buffer[2] = a.z();
	buffer[3] = v.x();
	buffer[4] = v.y();
	buffer[5] = v.z();
}
void GetIMU::loop() {
	if(!started)
		return;
	a = bno->getVector(Adafruit_BNO055::VECTOR_LINEARACCEL);
	v = bno->getVector(Adafruit_BNO055::VECTOR_GYROSCOPE);

}
void GetIMU::startSensor(){
	bno = new Adafruit_BNO055();
	started=bno->begin();
	if(started)
		bno->setExtCrystalUse(true);
}
void GetIMU::print(){
	event(printData);
	Serial.print("\r\n Data "+String(printData[0])+" , "
			+String(printData[1])+" , "
			+String(printData[2])+" , "
			+String(printData[3])+" , "
			+String(printData[4])+" , "
			+String(printData[5])+" , ");
}
