line="------------------------------------------------------";

echo $line;

echo ""

read -p "Enter target url: " target;

echo ""

echo $line;

echo "";

echo "WhatWeb Result: ";

whatweb $target;

echo "";

echo $line;

echo "";

echo "Nikto Result: ";

nikto -h $target;

echo "";

echo $line;

echo "";

echo "Dirb Result: ";

dirb $target;

