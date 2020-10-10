#!/bin/bash -x

echo "Welcome User For Registration"
#!/bin/bash -x

echo "Enter your first name"
read firstName
echo "Enter your last name"
read lastName
patternName="^([a-zA-Z]{3})"
if [[ $firstName =~ $patternName ]]
then
        echo Valid First Name;
else
        echo Invalid First Name;
fi
if [[ $lastName =~ $patternName ]]
then
        echo Valid Last Name;
else
        echo Invalid Last Name;
fi



