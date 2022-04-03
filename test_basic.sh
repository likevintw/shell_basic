#!/bin/bash

# exit 0

# add one
source basic.sh
var=35
add_one $var
if [ $? = $((35+1)) ]; 
then
    echo "add one, ok"
else
    echo "add one, error"
fi

# return a number
source basic.sh
var=35
return_number
if [ $? = $var ]; 
then
    echo "return a number, ok"
else
    echo "return a number, error"
fi

# statement
if [ 5 -eq 5 ]; then echo "statement equal, ok" ;fi
if [ 5 == 5 ]; then echo "statement equal, ok" ;fi
if [ 5 -ne 3 ]; then echo "statement non-equal, ok";fi
if [ 5 != 3 ]; then echo "statement non-equal, ok";fi
if [ 5 -gt 3 ]; then echo "statement greater, ok" ;fi
if [ 5 > 3 ]; then echo "statement greater, ok" ;fi
if [ 5 -ge 5 ]; then echo "statement greater-equal, ok" ;fi
if ((5>=5)); then echo "statement greater-equal, ok" ;fi
if [ 3 -lt 5 ]; then echo "statement less, ok" ;fi
if [ 3 < 5 ]; then echo "statement less, ok" ;fi
if [ 5 -le 5 ]; then echo "statement less-equal, ok" ;fi
if ((5<=5)); then echo "statement less-equal, ok" ;fi
# string comparsion 1
VAR1="Linuxize"
VAR2="Linuxize"

if [ $VAR1 = $VAR2 ]; then
    echo "string comparsion 1, ok"
else
    echo "string comparsion 1, error"
fi
# sring comparsion 2
[[ "string1" == "string1" ]] && \
    echo "string comparsion 2, ok" || \
    echo "sring comparsion 2, error"
# number comparsion
a1=10
a2=10
if [ $a1 = $a2 ]; then
    echo "number comparsion, ok"
else
    echo "number comparsion, error"
fi

# while 1
valid=true
counter=1
while [ $valid ]
do
    if [ $counter -eq 5 ];
    then
        break
    fi
    ((counter++))
done
if [ $counter == 5 ];
then 
    echo "while 1, ok" 
else 
    echo "while 1, error, counter = $counter" 
fi
# while 2
counter=0
while [ $counter -lt 5 ]
do
    ((counter++))
done
if [ $counter == 5 ];
then 
    echo "while 2, ok" 
else 
    echo "while 2, error, counter = $counter" 
fi

# grep return example 1
result=$(grep 27 grepdemo.txt |grep 02|grep 17 |grep 38)
if  [ $result = '第111027期07,17,19,24,31,45+38' ] ;
then 
    echo "grep return example 1, ok" 
else 
    echo "grep return example 1, error, counter = $result" 
fi

# awk return example 1
result=$(grep A demo.txt | grep 6|awk {'print $1$2'})
if  [ $result = 'A006坦克' ] ;
then 
    echo "awk return example 1, ok" 
else 
    echo "awk return example 1, error, counter = $result" 
fi