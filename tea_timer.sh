#!/bin/bash

timing=$1

for i in $(seq 1 "${timing}"); do
    sleep 1; 
done

notify-send -u critical "TEA" "Your tea is served."
