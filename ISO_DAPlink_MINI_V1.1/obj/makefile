################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include Startup/subdir.mk
-include Peripheral/src/subdir.mk
-include Debug/subdir.mk
-include DAP/Source/subdir.mk
-include DAP/subdir.mk
-include Core/subdir.mk
-include CherryUSB/subdir.mk
-include CherryRB/subdir.mk
-include CherryDAP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
ISO_DAPlink_MINI_V1.1.hex \

SECONDARY_LIST += \
ISO_DAPlink_MINI_V1.1.lst \

SECONDARY_SIZE += \
ISO_DAPlink_MINI_V1.1.siz \


# All Target
all: ISO_DAPlink_MINI_V1.1.elf secondary-outputs

# Tool invocations
ISO_DAPlink_MINI_V1.1.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -T "E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -Wl,-Map,"ISO_DAPlink_MINI_V1.1.map" --specs=nano.specs --specs=nosys.specs -Wl,--print-memory-usage -o "ISO_DAPlink_MINI_V1.1.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
ISO_DAPlink_MINI_V1.1.hex: ISO_DAPlink_MINI_V1.1.elf
	@	riscv-none-embed-objcopy -O ihex "ISO_DAPlink_MINI_V1.1.elf"  "ISO_DAPlink_MINI_V1.1.hex"
	@	@
ISO_DAPlink_MINI_V1.1.lst: ISO_DAPlink_MINI_V1.1.elf
	@	riscv-none-embed-objdump --all-headers --demangle --disassemble -M xw "ISO_DAPlink_MINI_V1.1.elf" > "ISO_DAPlink_MINI_V1.1.lst"
	@	@
ISO_DAPlink_MINI_V1.1.siz: ISO_DAPlink_MINI_V1.1.elf
	@	riscv-none-embed-size --format=berkeley "ISO_DAPlink_MINI_V1.1.elf"
	@	@
# Other Targets
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) ISO_DAPlink_MINI_V1.1.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
