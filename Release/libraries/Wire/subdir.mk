################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/Wire.cpp \
/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/WireKinetis.cpp 

LINK_OBJ += \
./libraries/Wire/Wire.cpp.o \
./libraries/Wire/WireKinetis.cpp.o 

CPP_DEPS += \
./libraries/Wire/Wire.cpp.d \
./libraries/Wire/WireKinetis.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/Wire/Wire.cpp.o: /opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/Wire.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-g++" -c -O2 -g -Wall -ffunction-sections -fdata-sections -nostdlib -fno-exceptions -felide-constructors -std=gnu++14 -fno-rtti -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -D__MK64FX512__ -DTEENSYDUINO=141 -DARDUINO=10802 -DF_CPU=96000000 -DUSB_RAWHID -DLAYOUT_US_ENGLISH  -I"/opt/arduino-1.8.5/hardware/teensy/avr/cores/teensy3" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/SimplePacketComs" -I"/home/keionbis/Arduino/libraries/SimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/PWMServo" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Servo" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

libraries/Wire/WireKinetis.cpp.o: /opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/WireKinetis.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-g++" -c -O2 -g -Wall -ffunction-sections -fdata-sections -nostdlib -fno-exceptions -felide-constructors -std=gnu++14 -fno-rtti -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -D__MK64FX512__ -DTEENSYDUINO=141 -DARDUINO=10802 -DF_CPU=96000000 -DUSB_RAWHID -DLAYOUT_US_ENGLISH  -I"/opt/arduino-1.8.5/hardware/teensy/avr/cores/teensy3" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/SimplePacketComs" -I"/home/keionbis/Arduino/libraries/SimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/PWMServo" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Servo" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


