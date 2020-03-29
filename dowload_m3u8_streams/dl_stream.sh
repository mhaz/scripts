#!/bin/bash
# https://gist.github.com/Fak3/43b19e86f294f0c32e4e9e4d5515337d
echo "Enter m3u8 link:"
read link
echo "Enter output filename:"
read filename
ffmpeg -i "$link" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 $filename.mp4
