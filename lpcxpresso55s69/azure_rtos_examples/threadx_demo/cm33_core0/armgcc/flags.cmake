SET(CMAKE_ASM_FLAGS_DEBUG " \
    ${CMAKE_ASM_FLAGS_DEBUG} \
    -DDEBUG \
    -D__STARTUP_CLEAR_BSS \
    -DTX_SINGLE_MODE_SECURE \
    -DTX_ENABLE_FPU_SUPPORT=1 \
    -mcpu=cortex-m33 \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    -mthumb \
    -x \
    assembler-with-cpp \
")
SET(CMAKE_ASM_FLAGS_RELEASE " \
    ${CMAKE_ASM_FLAGS_RELEASE} \
    -DNDEBUG \
    -D__STARTUP_CLEAR_BSS \
    -DTX_SINGLE_MODE_SECURE \
    -DTX_ENABLE_FPU_SUPPORT=1 \
    -mcpu=cortex-m33 \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    -mthumb \
    -x \
    assembler-with-cpp \
")
SET(CMAKE_C_FLAGS_DEBUG " \
    ${CMAKE_C_FLAGS_DEBUG} \
    -DDEBUG \
    -DCPU_LPC55S69JBD100_cm33_core0 \
    -DSDK_DEBUGCONSOLE_UART \
    -DPRINTF_FLOAT_ENABLE=1 \
    -DSCANF_FLOAT_ENABLE=1 \
    -DPRINTF_ADVANCED_ENABLE=1 \
    -DSCANF_ADVANCED_ENABLE=0 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DTX_SINGLE_MODE_SECURE \
    -DTX_INCLUDE_USER_DEFINE_FILE \
    -DFSL_RTOS_THREADX \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -mcpu=cortex-m33 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_C_FLAGS_RELEASE " \
    ${CMAKE_C_FLAGS_RELEASE} \
    -DNDEBUG \
    -DCPU_LPC55S69JBD100_cm33_core0 \
    -DSDK_DEBUGCONSOLE_UART \
    -DPRINTF_FLOAT_ENABLE=1 \
    -DSCANF_FLOAT_ENABLE=1 \
    -DPRINTF_ADVANCED_ENABLE=1 \
    -DSCANF_ADVANCED_ENABLE=0 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DTX_SINGLE_MODE_SECURE \
    -DTX_INCLUDE_USER_DEFINE_FILE \
    -DFSL_RTOS_THREADX \
    -DMCUXPRESSO_SDK \
    -Os \
    -mcpu=cortex-m33 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -std=gnu99 \
")
SET(CMAKE_CXX_FLAGS_DEBUG " \
    ${CMAKE_CXX_FLAGS_DEBUG} \
    -DDEBUG \
    -DCPU_LPC55S69JBD100_cm33_core0 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -mcpu=cortex-m33 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -fno-rtti \
    -fno-exceptions \
")
SET(CMAKE_CXX_FLAGS_RELEASE " \
    ${CMAKE_CXX_FLAGS_RELEASE} \
    -DNDEBUG \
    -DCPU_LPC55S69JBD100_cm33_core0 \
    -DSERIAL_PORT_TYPE_UART=1 \
    -DMCUXPRESSO_SDK \
    -Os \
    -mcpu=cortex-m33 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    -mthumb \
    -MMD \
    -MP \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mapcs \
    -fno-rtti \
    -fno-exceptions \
")
SET(CMAKE_EXE_LINKER_FLAGS_DEBUG " \
    ${CMAKE_EXE_LINKER_FLAGS_DEBUG} \
    -g \
    -mcpu=cortex-m33 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    --specs=nano.specs \
    --specs=nosys.specs \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mthumb \
    -mapcs \
    -Xlinker \
    --gc-sections \
    -Xlinker \
    -static \
    -Xlinker \
    -z \
    -Xlinker \
    muldefs \
    -Xlinker \
    -Map=output.map \
    -Wl,--print-memory-usage \
    -Xlinker \
    --print-memory-usage \
    -T${ProjDirPath}/LPC55S69_cm33_core0_flash.ld -static \
")
SET(CMAKE_EXE_LINKER_FLAGS_RELEASE " \
    ${CMAKE_EXE_LINKER_FLAGS_RELEASE} \
    -mcpu=cortex-m33 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv5-sp-d16 \
    --specs=nano.specs \
    --specs=nosys.specs \
    -fno-common \
    -ffunction-sections \
    -fdata-sections \
    -ffreestanding \
    -fno-builtin \
    -mthumb \
    -mapcs \
    -Xlinker \
    --gc-sections \
    -Xlinker \
    -static \
    -Xlinker \
    -z \
    -Xlinker \
    muldefs \
    -Xlinker \
    -Map=output.map \
    -Wl,--print-memory-usage \
    -Xlinker \
    --print-memory-usage \
    -T${ProjDirPath}/LPC55S69_cm33_core0_flash.ld -static \
")
