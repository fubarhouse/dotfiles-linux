#!/usr/bin/env bash

killall -q polybar
polybar bar-top     -r  &
polybar bar-bottom  -r  &
