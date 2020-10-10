#!/bin/bash -x

echo "Welcome User For Registration"
#!/bin/bash -x

echo "Enter your first name"
read firstName
pattern="^([a-zA-Z]{3})"
if [[ $firstName =~ $pattern ]]
then
        echo true;
else
        echo false;
fi


