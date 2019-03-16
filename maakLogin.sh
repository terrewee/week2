#!/usr/bin/env 
file = $1
echo "What is your name?";
read name;
if [ -z $name ] then
    name = "whoami"
fi
password2 = ""

while true
do 
    echo "enter the same password twice to continue: ";
    read password1;
    LEN=${#password1}
    if [ $password1 =~ [0-9] ] && [ $password1 =~ [a-z] ] && [ $password1 =~ [A-Z] ]  && [ "$LEN" -ge 8 ] && [ "$password1" = "$password2" ]; then 
            break
    elif [ $password1 =~ [0-9] ] && [ $password1 =~ [a-z] ] && [ $password1 =~ [A-Z] ]  && [ "$LEN" -ge 8 ]; then
            $password2 = $password1
    else
        echo "invalid password input, make sure it contains at least 1 capital, 1 lower case, 1 number and is at least 8 characters long."
    fi
done

echo "$password1 :?: $password2" >> $file
echo "stuff's been sav'd."