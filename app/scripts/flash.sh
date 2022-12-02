#!/bin/sh

nrfutil pkg generate --hw-version 52 --sd-req=0x00 --debug-mode \
  --application build/zephyr/zephyr.hex build/zephyr/zephyr.zip

nrfutil dfu usb-serial -pkg build/zephyr/zephyr.zip -p $1
