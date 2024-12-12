# Sonoff Zigbee v3.0 Plus-P

## Link
- https://github.com/JelmerT/cc2538-bsl
- https://smlight.tech/flasher/#other_cc
- https://www.zigbee2mqtt.io/guide/adapters/zstack.html
- https://sonoff.tech/wp-content/uploads/2021/12/SONOFF-Zigbee-3.0-USB-dongle-plus-firmware-flashing-1-1.pdf
- https://github.com/Koenkk/Z-Stack-firmware/tree/master/coordinator
- https://community.home-assistant.io/t/iteads-sonoff-zigbee-3-0-usb-dongle-plus-model-zbdongle-p-based-on-texas-instruments-cc2652p-radio-soc-mcu/340705
- https://sonoff.tech/product-document/gateway-and-sensors-doc/zigbee-dongle-plus-cc2652p-doc/
- https://github.com/Koenkk/zigbee2mqtt/discussions/5266
- https://sonoff.tech/wp-content/uploads/2023/02/SONOFF-Zigbee-3.0-USB-dongle-plus-firmware-flashing.pdf
- https://sonoff.tech/product-review/sonoff-zigbee-3-0-usb-dongle-plus-tutorials/
- https://sonoff.tech/product/gateway-and-sensors/sonoff-zigbee-3-0-usb-dongle-plus-p/
- https://www.amazon.se/s?k=Zigbee+3.0+USB+Dongle+Plus%E2%80%93ZBDongle-E&rh=n%3A20637796031&ref=nb_sb_noss
- https://itead.cc/product/zigbee-3-0-usb-dongle/
- https://www.home-assistant.io/integrations/zha
- VIDEO https://notenoughtech.com/home-automation/sonoff-zigbee-3-0-usb-dongle-plus/
- VIDEO https://www.youtube.com/watch?v=JM9LnwtZRoA&t=531s&ab_channel=SmartHomeAddict
- https://github.com/Koenkk/Z-Stack-firmware/issues/316
- https://github.com/xyzroe/ZigStarGW-MT
- https://github.com/contiki-os/contiki/tree/master/platform/cc2538dk
- https://github.com/JelmerT/cc2538-bsl
- https://automatiserar.se/hur-bra-ar-zigbee2mqtt-med-home-assistant/#InstalleraZ2M
  
```text
For ITead SONOFF Zigbee 3.0 USB Dongle Plus: For the CC2652P based "SONOFF Zigbee 3.0 USB Dongle Plus" (model "ZBDongle-P") adapter from ITead you need to invoke toggle to activate bootloader with --bootloader-sonoff-usb if you do not want to open its enclosure to manually start the bootloader with the boot button on the PCB.
For all the CC13xx and CC26xx families, the ROM bootloader is configured through the BL_CONFIG 'register' in CCFG. BOOTLOADER_ENABLE should be set to 0xC5 to enable the bootloader in the first place.

This is enough if the chip has not been programmed with a valid image. If a valid image is present, then the remaining fields of BL_CONFIG and the ERASE_CONF register must also be configured correctly:

Select a DIO by setting BL_PIN_NUMBER
Select an active level (low/high) for the DIO by setting BL_LEVEL
Enable 'failure analysis' by setting BL_ENABLE to 0xC5
Make sure the BANK_ERASE command is enabled: The BANK_ERASE_DIS_N bit in the ERASE_CONF register in CCFG must be set. BANK_ERASE is enabled by default.
If you are using CC13xx/CC26xxware, the relevant settings are under startup_files/ccfg.c. This is the case if you are using Contiki.

Similar to the CC2538, the bootloader will be activated if, at the time of reset, failure analysis is enabled and the selected DIO is found to be at the active level.

As an example, to bind the bootloader backdoor to KEY_SELECT on the SmartRF06EB, you need to set the following:

BOOTLOADER_ENABLE = 0xC5 (Bootloader enable. SET_CCFG_BL_CONFIG_BOOTLOADER_ENABLE in CC13xx/CC26xxware)
BL_LEVEL = 0x00 (Active low. SET_CCFG_BL_CONFIG_BL_LEVEL in CC13xx/CC26xxware)
BL_PIN_NUMBER = 0x0B (DIO 11. SET_CCFG_BL_CONFIG_BL_PIN_NUMBER in CC13xx/CC26xxware)
BL_ENABLE = 0xC5 (Enable "failure analysis". SET_CCFG_BL_CONFIG_BL_ENABLE in CC13xx/CC26xxware)
These settings are very useful for development, but enabling failure analysis in a deployed firmware may allow a malicious user to read out the contents of your device's flash or to erase it. Do not enable this in a deployment unless you understand the security implications.
```

## Firmware
- https://github.com/Koenkk/Z-Stack-firmware/blob/master/coordinator%2FZ-Stack_3.x.0%2Fbin%2FCC1352P2_CC2652P_launchpad_coordinator_20240710.zip
- https://notenoughtech.com/home-automation/sonoff-zigbee-3-0-usb-dongle-plus/#google_vignette


## Drivers
- https://www.silabs.com/developer-tools/usb-to-uart-bridge-vcp-drivers?tab=downloads


## Unbrick
- https://support.electrolama.com/radio-docs/advanced/flash-jtag/
- 
