################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include libraries/Wire/utility/subdir.mk
-include libraries/Wire/subdir.mk
-include libraries/TeensySimplePacketComs/src/HID/subdir.mk
-include libraries/SimplePacketComs/src/client/subdir.mk
-include libraries/SimplePacketComs/src/subdir.mk
-include libraries/Servo/subdir.mk
-include libraries/PWMServo/subdir.mk
-include libraries/Adafruit_BNO055/subdir.mk
-include core/core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
/home/keionbis/eclipse-workspace/CatFw/Release/arduino.ar \

ELF += \
CatFw.elf \

HEX += \
CatFw.hex \


# All Target
all: CatFw

# Tool invocations
CatFw: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-size" -A "/home/keionbis/eclipse-workspace/CatFw/Release/CatFw.elf"
	@echo 'Finished building target: $@'
	@echo ' '

/home/keionbis/eclipse-workspace/CatFw/Release/arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-gcc-ar" rcs    /home/keionbis/eclipse-workspace/CatFw/Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

CatFw.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"/opt/arduino-1.8.5/hardware/teensy/../tools/arm/bin/arm-none-eabi-gcc" -O2 -Wl,--gc-sections,--relax,--defsym=__rtc_localtime=1527090637 "-T/opt/arduino-1.8.5/hardware/teensy/avr/cores/teensy3/mk64fx512.ld" -lstdc++ -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -fsingle-precision-constant -o "/home/keionbis/eclipse-workspace/CatFw/Release/CatFw.elf"   $(LINK_OBJ)   /home/keionbis/eclipse-workspace/CatFw/Release/arduino.ar  "-L/home/keionbis/eclipse-workspace/CatFw/Release" -larm_cortexM4lf_math -lm   -lsupc++ -lstdc++
	@echo 'Finished building: $@'
	@echo ' '

CatFw.hex: $(ELF)
	@echo 'Create eeprom image'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	${A.RECIPE.OBJCOPY.HEX.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
