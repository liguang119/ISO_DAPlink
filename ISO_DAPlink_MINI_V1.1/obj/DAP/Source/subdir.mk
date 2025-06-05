################################################################################
# MRS Version: 1.9.2
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../DAP/Source/DAP.c \
../DAP/Source/DAP_vendor.c \
../DAP/Source/JTAG_DP.c \
../DAP/Source/SWO.c \
../DAP/Source/SW_DP.c \
../DAP/Source/UART.c 

OBJS += \
./DAP/Source/DAP.o \
./DAP/Source/DAP_vendor.o \
./DAP/Source/JTAG_DP.o \
./DAP/Source/SWO.o \
./DAP/Source/SW_DP.o \
./DAP/Source/UART.o 

C_DEPS += \
./DAP/Source/DAP.d \
./DAP/Source/DAP_vendor.d \
./DAP/Source/JTAG_DP.d \
./DAP/Source/SWO.d \
./DAP/Source/SW_DP.d \
./DAP/Source/UART.d 


# Each subdirectory must supply rules for building sources it contributes
DAP/Source/%.o: ../DAP/Source/%.c
	@	@	riscv-none-embed-gcc -march=rv32imacxw -mabi=ilp32 -msmall-data-limit=8 -msave-restore -O3 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized  -g -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\Debug" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\Core" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\User" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\Peripheral\inc" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryRB" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\DAP\Include" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryDAP" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\class\cdc" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\common" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\core" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\port\ch32" -I"E:\01_Project\43_ISO\01_Code\ISO_DAPlink_MINI_V1.1\CherryUSB\CherryUSB\class\msc" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

