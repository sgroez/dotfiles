#!/bin/bash

# Loop through all devices under /sys/class/power_supply
for device in /sys/class/power_supply/*; do
    # Check if the device is a battery
    if [ "$(cat "$device/type" 2>/dev/null)" = "Battery" ]; then
        # Check if energy_full or charge_full files exist
        if [ -f "$device/energy_full" ] || [ -f "$device/charge_full" ]; then
            # Output the name of the first matching battery and exit
            echo "$(basename $device)"
            exit 0
        fi
    fi
done

