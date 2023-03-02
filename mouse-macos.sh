#!/bin/bash
while true; do
    for x in -1 0 1; do
        for y in -1 0 1; do
            #need to convert positive integers to +1, +2, etc so that the lib moves the mouse with only 1px
            formatted_x=$(printf "%+d" $x)
            formatted_y=$(printf "%+d" $y)
            /opt/homebrew/bin/cliclick m:$formatted_x,$formatted_y
            sleep 10
        done
    done
done