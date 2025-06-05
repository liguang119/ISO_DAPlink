################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/ch32v30x_it.c \
../User/main.c \
../User/system_ch32v30x.c \
../User/usb2uart.c 

OBJS += \
./User/ch32v30x_it.o \
./User/main.o \
./User/system_ch32v30x.o \
./User/usb2uart.o 

C_DEPS += \
./User/ch32v30x_it.d \
./User/main.d \
./User/system_ch32v30x.d \
./User/usb2uart.d 


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\Debug" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\Core" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\User" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\Peripheral\inc" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryRB" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\DAP\Include" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryDAP" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\class\cdc" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\common" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\core" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\port\ch32" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\class\msc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

