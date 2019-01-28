#!/bin/bash

# https://stackoverflow.com/questions/14757720/how-to-record-sound-in-os-x-terminal
# brew update
# brew install sox
# brew install coreutils

# record audio for 10 seconds
gtimeout 10 sox -d audiorecording.mp3
