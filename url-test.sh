#!/bin/bash

#curl -m 5 --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36" -IsS "https://foursquare.com/v/maggie-valley-wellness-center/617cbb231ac88157ea2f5e5b"

arr=()
while IFS= read -r line; do
   arr+=("$line")
   #echo "line is"
   #echo $line
   #echo ""
   echo "curl -IsS \"$line\""
   curl -k -m 5 --user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36" -IsS "$line"
done <url-test.txt