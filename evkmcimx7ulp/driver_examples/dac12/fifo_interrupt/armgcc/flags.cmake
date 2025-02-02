SET(CMAKE_ASM_FLAGS_DEBUG " \
    ${CMAKE_ASM_FLAGS_DEBUG} \
    -DDEBUG \
    -D__STARTUP_CLEAR_BSS \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
")
SET(CMAKE_ASM_FLAGS_RELEASE " \
    ${CMAKE_ASM_FLAGS_RELEASE} \
    -DNDEBUG \
    -D__STARTUP_CLEAR_BSS \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
")
SET(CMAKE_ASM_FLAGS_FLASH_DEBUG " \
    ${CMAKE_ASM_FLAGS_FLASH_DEBUG} \
    -DDEBUG \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DENABLE_RAM_VECTOR_TABLE \
    -D__STARTUP_CLEAR_BSS \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
")
SET(CMAKE_ASM_FLAGS_FLASH_RELEASE " \
    ${CMAKE_ASM_FLAGS_FLASH_RELEASE} \
    -DNDEBUG \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DENABLE_RAM_VECTOR_TABLE \
    -D__STARTUP_CLEAR_BSS \
    -mcpu=cortex-m4 \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -mthumb \
")
SET(CMAKE_C_FLAGS_DEBUG " \
    ${CMAKE_C_FLAGS_DEBUG} \
    -DDEBUG \
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -Os \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
SET(CMAKE_C_FLAGS_FLASH_DEBUG " \
    ${CMAKE_C_FLAGS_FLASH_DEBUG} \
    -DDEBUG \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DENABLE_RAM_VECTOR_TABLE \
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
SET(CMAKE_C_FLAGS_FLASH_RELEASE " \
    ${CMAKE_C_FLAGS_FLASH_RELEASE} \
    -DNDEBUG \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DENABLE_RAM_VECTOR_TABLE \
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -Os \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -Os \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
SET(CMAKE_CXX_FLAGS_FLASH_DEBUG " \
    ${CMAKE_CXX_FLAGS_FLASH_DEBUG} \
    -DDEBUG \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DENABLE_RAM_VECTOR_TABLE \
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -g \
    -O0 \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
SET(CMAKE_CXX_FLAGS_FLASH_RELEASE " \
    ${CMAKE_CXX_FLAGS_FLASH_RELEASE} \
    -DNDEBUG \
    -DFSL_SDK_DRIVER_QUICK_ACCESS_ENABLE=1 \
    -DENABLE_RAM_VECTOR_TABLE \
    -DCPU_MCIMX7U5DVP07 \
    -DCPU_MCIMX7U5DVP07_cm4 \
    -DMCUXPRESSO_SDK \
    -Os \
    -mcpu=cortex-m4 \
    -Wall \
    -Wno-address-of-packed-member \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
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
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -Wl,--print-memory-usage \
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
    -T${ProjDirPath}/MCIMX7U5xxxxx_cm4_ram.ld -static \
")
SET(CMAKE_EXE_LINKER_FLAGS_RELEASE " \
    ${CMAKE_EXE_LINKER_FLAGS_RELEASE} \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -Wl,--print-memory-usage \
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
    -T${ProjDirPath}/MCIMX7U5xxxxx_cm4_ram.ld -static \
")
SET(CMAKE_EXE_LINKER_FLAGS_FLASH_DEBUG " \
    ${CMAKE_EXE_LINKER_FLAGS_FLASH_DEBUG} \
    -g \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -Wl,--print-memory-usage \
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
    -Xlinker \
    --defsym=__ram_vector_table__=1 \
    -T${ProjDirPath}/MCIMX7U5xxxxx_cm4_flash.ld -static \
")
SET(CMAKE_EXE_LINKER_FLAGS_FLASH_RELEASE " \
    ${CMAKE_EXE_LINKER_FLAGS_FLASH_RELEASE} \
    -mcpu=cortex-m4 \
    -Wall \
    -mfloat-abi=hard \
    -mfpu=fpv4-sp-d16 \
    -Wl,--print-memory-usage \
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
    -Xlinker \
    --defsym=__ram_vector_table__=1 \
    -T${ProjDirPath}/MCIMX7U5xxxxx_cm4_flash.ld -static \
")
