################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/home/keionbis/Arduino/libraries/SimplePacketComs/src/PacketEvent.cpp \
/home/keionbis/Arduino/libraries/SimplePacketComs/src/SimplePacketComs.cpp 

LINK_OBJ += \
./libraries/SimplePacketComs/src/PacketEvent.cpp.o \
./libraries/SimplePacketComs/src/SimplePacketComs.cpp.o 

CPP_DEPS += \
./libraries/SimplePacketComs/src/PacketEvent.cpp.d \
./libraries/SimplePacketComs/src/SimplePacketComs.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/SimplePacketComs/src/PacketEvent.cpp.o: /home/keionbis/Arduino/libraries/SimplePacketComs/src/PacketEvent.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-g++" -c -O2 -g -Wall -ffunction-sections -fdata-sections -nostdlib -fno-exceptions -felide-constructors -std=gnu++14 -fno-rtti -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -D__MK64FX512__ -DTEENSYDUINO=141 -DARDUINO=10802 -DF_CPU=96000000 -DUSB_RAWHID -DLAYOUT_US_ENGLISH  -I"/opt/arduino-1.8.5/hardware/teensy/avr/cores/teensy3" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/SimplePacketComs" -I"/home/keionbis/Arduino/libraries/SimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/PWMServo" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Servo" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/SimplePacketComs/src/SimplePacketComs.cpp.o: /home/keionbis/Arduino/libraries/SimplePacketComs/src/SimplePacketComs.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-g++" -c -O2 -g -Wall -ffunction-sections -fdata-sections -nostdlib -fno-exceptions -felide-constructors -std=gnu++14 -fno-rtti -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -D__MK64FX512__ -DTEENSYDUINO=141 -DARDUINO=10802 -DF_CPU=96000000 -DUSB_RAWHID -DLAYOUT_US_ENGLISH  -I"/opt/arduino-1.8.5/hardware/teensy/avr/cores/teensy3" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/SimplePacketComs" -I"/home/keionbis/Arduino/libraries/SimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/PWMServo" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Servo" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


