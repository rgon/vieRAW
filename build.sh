#!/bin/bash
# sudo apt install libgstreamer1.0-dev
gcc playback-tutorial-1.c -o playback-tutorial-1.64 `pkg-config --cflags --libs gstreamer-1.0`