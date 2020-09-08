#!/usr/bin/bash

P="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#C="DEFGHIJKLMNOPQRSTUVWXYZABC"
#C="XCGOHJKYBZPQTLDSNVRUAWMEFI"

echo -n "Enter value to shift cipher text by: "
read shiftVal

C="${P:$shiftVal:26}${P::$shiftVal}"
echo $C

output=`echo $1 | tr [:lower:] [:upper:]| tr -d [:space:] | tr $P $C`
echo "Encrypted output is " $output

decrypt=`echo $output| tr $C $P`
echo "Decrypted output is " $decrypt
