echo "Welcome User For Registration"
echo "Enter your first name"
read firstName
function firstName()
{	local f_name=$1
	pattern="^([a-zA-Z]{3})"
	checkPattern $f_name $pattern
}
function lastName()
{       local l_name=$1
        pattern="^([a-zA-Z]{3})"
        checkPattern $l_name $pattern
}

function checkPattern()
{
	local value=$1
	local pattern=$2
	if [[ $value =~ $pattern ]]
	then
        	echo Valid $value;
	else
        	echo Invalid $value;
	fi

}
firstName $firstName
echo "Enter your last name"
read lastName
lastName $lastName
