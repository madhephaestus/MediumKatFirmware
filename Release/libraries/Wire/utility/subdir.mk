################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/utility/twi.c 

C_DEPS += \
./libraries/Wire/utility/twi.c.d 

LINK_OBJ += \
./libraries/Wire/utility/twi.c.o 


# Each subdirectory must supply rules for building sources it contributes
libraries/Wire/utility/twi.c.o: /opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/utility/twi.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-gcc" -c -O2 -g -Wall -ffunction-sections -fdata-sections -nostdlib -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -D__MK64FX512__ -DTEENSYDUINO=141 -DARDUINO=10802 -DF_CPU=96000000 -DUSB_RAWHID -DLAYOUT_US_ENGLISH  -I"/opt/arduino-1.8.5/hardware/teensy/avr/cores/teensy3" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs" -I"/home/keionbis/Arduino/libraries/TeensySimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/SimplePacketComs" -I"/home/keionbis/Arduino/libraries/SimplePacketComs/src" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055" -I"/home/keionbis/Arduino/libraries/Adafruit_BNO055/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/PWMServo" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Wire/utility" -I"/opt/arduino-1.8.5/hardware/teensy/avr/libraries/Servo" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


