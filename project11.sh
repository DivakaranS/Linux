#!/usr/bin/env bash


bash generateRandom.sh 20 > input.txt 
node generateFrames.js input.txt 4 > output.txt
bash findBestFrame.sh < output.txt | bash ./frameProduct.sh