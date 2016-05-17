################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/exercise_2_1.cpp \
../src/main.cpp \
../src/section_2_3.cpp 

OBJS += \
./src/exercise_2_1.o \
./src/main.o \
./src/section_2_3.o 

CPP_DEPS += \
./src/exercise_2_1.d \
./src/main.d \
./src/section_2_3.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


