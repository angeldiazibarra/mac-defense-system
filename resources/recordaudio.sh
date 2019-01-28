#!/bin/bash

# https://stackoverflow.com/questions/14757720/how-to-record-sound-in-os-x-terminal
# brew update
# brew install sox
# brew install coreutils

# record audio for 1 minute, upload to server
gtimeout 60 sox -d audiorecording.mp3
