/*
 * Copyright 2021 NXP
 * All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <stdio.h>

#include "board_init.h"
#include "dsp_support.h"
#include "fsl_device_registers.h"
#include "fsl_wm8904.h"
#include "fsl_codec_common.h"
#include "fsl_codec_adapter.h"
#include "pin_mux.h"
#include "board.h"

/*******************************************************************************
 * Variables
 ******************************************************************************/

static wm8904_config_t s_wm8904Config = {
    .i2cConfig          = {.codecI2CInstance = BOARD_CODEC_I2C_INSTANCE},
    .recordSource       = kWM8904_RecordSourceLineInput,
    .recordChannelLeft  = kWM8904_RecordChannelLeft2,
    .recordChannelRight = kWM8904_RecordChannelRight2,
    .playSource         = kWM8904_PlaySourceDAC,
    .slaveAddress       = WM8904_I2C_ADDRESS,
    .protocol           = kWM8904_ProtocolI2S,
    .format             = {.sampleRate = kWM8904_SampleRate16kHz, .bitWidth = kWM8904_BitWidth16},
    .master             = true,
};
static codec_config_t s_boardCodecConfig = {.codecDevType = kCODEC_WM8904, .codecDevConfig = &s_wm8904Config};
static codec_handle_t s_codecHandle;

/*******************************************************************************
 * Code
 ******************************************************************************/

/*!
 * @brief Main function
 */
int main(void)
{
    /* Initialize standard SDK demo application pins */
    BOARD_Init();

    CLOCK_EnableClock(kCLOCK_InputMux);

    /* Clear MUA reset before run DSP core */
    RESET_PeripheralReset(kMU_RST_SHIFT_RSTn);

    /* Attach main clock to I3C */
    CLOCK_AttachClk(kMAIN_CLK_to_I3C_CLK);
    CLOCK_SetClkDiv(kCLOCK_DivI3cClk, 20);

    /* Attach AUDIO PLL clock to FLEXCOMM1 (I2S1) */
    CLOCK_AttachClk(kAUDIO_PLL_to_FLEXCOMM1);
    /* Attach AUDIO PLL clock to FLEXCOMM3 (I2S3) */
    CLOCK_AttachClk(kAUDIO_PLL_to_FLEXCOMM3);

    /* Attach AUDIO PLL clock to MCLK */
    CLOCK_AttachClk(kAUDIO_PLL_to_MCLK_CLK);
    CLOCK_SetClkDiv(kCLOCK_DivMclkClk, 1);
    SYSCTL1->MCLKPINDIR = SYSCTL1_MCLKPINDIR_MCLKPINDIR_MASK;
    /* DMIC source from audio pll, divider 8, 24.576 MHz / 8 = 3.072 MHz */
#ifdef MIMXRT685S_cm33_SERIES
    CLOCK_AttachClk(kAUDIO_PLL_to_DMIC_CLK);
#else
    CLOCK_AttachClk(kAUDIO_PLL_to_DMIC);
#endif
    CLOCK_SetClkDiv(kCLOCK_DivDmicClk, 8);

    s_wm8904Config.i2cConfig.codecI2CSourceClock = CLOCK_GetI3cClkFreq();
    s_wm8904Config.mclk_HZ                       = CLOCK_GetMclkClkFreq();

    /* Set shared signal set 0: SCK, WS from Flexcomm1 */
    SYSCTL1->SHAREDCTRLSET[0] = SYSCTL1_SHAREDCTRLSET_SHAREDSCKSEL(1) | SYSCTL1_SHAREDCTRLSET_SHAREDWSSEL(1);
    /* Set flexcomm3 SCK, WS from shared signal set 0 */
    SYSCTL1->FCCTRLSEL[3] = SYSCTL1_FCCTRLSEL_SCKINSEL(1) | SYSCTL1_FCCTRLSEL_WSINSEL(1);

    if (CODEC_Init(&s_codecHandle, &s_boardCodecConfig) != kStatus_Success)
    {
        printf("Error: Could not initialize audio codec! Please, reconnect the board power supply.\r\n");
        for (;;)
            ;
    }

    /* Initial volume kept low for hearing safety.
     * Adjust it to your needs, 0-100, 0 for mute, 100 for maximum volume.
     */
    if (CODEC_SetVolume(&s_codecHandle, kCODEC_PlayChannelHeadphoneLeft | kCODEC_PlayChannelHeadphoneRight, 32U) !=
        kStatus_Success)
    {
        printf("Warning: Could not set volume!\r\n");
    }

    /* Print the initial banner */
    printf("\r\nStarting Xtensa example from Cortex-M33 core\r\n");

    /* Copy DSP image to RAM and start DSP core. */
    BOARD_DSP_Init();

    for (;;)
        ;
}
