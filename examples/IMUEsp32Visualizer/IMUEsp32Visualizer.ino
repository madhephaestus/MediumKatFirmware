#include <SimplePacketComs.h>
#include <Wire.h>
#include <Adafruit_BNO055.h>
#include <MediumKatFirmware.h>
#if defined(ARDUINO_ARCH_ESP32)
#include <Esp32SimplePacketComs.h>
#include <wifi/WifiManager.h>
UDPSimplePacket coms;
WifiManager manager;
#else
#include <Teensy32SimplePacketComs.h>
HIDSimplePacket coms;
#endif

GetIMU * sensor;
long lastPrint = 0;
void setup() {
#if defined(ARDUINO_ARCH_ESP32)
	manager.setup();
#endif
	sensor = new GetIMU();
	sensor->startSensor();
	coms.attach((PacketEventAbstract *) sensor);
}

void loop() {
#if defined(ARDUINO_ARCH_ESP32)
	manager.loop();
	if(manager.getState()==Connected)
#endif
	coms.server();
	sensor->loop();
	if(millis()-lastPrint>50){
		lastPrint=millis();
		sensor->print();
	}
}
