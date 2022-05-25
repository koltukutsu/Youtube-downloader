#!bin/bash

echo "downloading is being started..."

cat links.txt | while read line
do
	youtube-dl -o "./output_musics/%(title)s-%(id)s.%(ext)s" --extract-audio $line --audio-format wav 
done
