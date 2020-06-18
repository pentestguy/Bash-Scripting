#!/bin/bash



if [ ! -d output ]; then

	mkdir output

fi



line="------------------------------------------------------";

echo $line;

echo ""

read -p "Enter target without protocol: " target;

echo ""

echo $line;

echo "";

echo $line;

echo "";

echo "Nmap Fast Scan: ";

nmap -F $target -oN output/fast_$target;

echo "";

echo $line;

echo $line;

echo "";

echo "Nmap Agressive Scan: ";

nmap -A $target -oN output/agg_$target;

echo "";

echo $line;

echo $line;

echo "";

echo "Nmap total ports Scan: ";

nmap -p- $target -oN output/totalports_$target;

echo "";

echo $line;
