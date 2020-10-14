
echo "Welcome User For Registration"
echo "Enter your first name"
read firstName
function firstName()
{	local f_name=$1
	pattern="^([a-zA-Z]{3})"
	checkPattern $f_name $pattern
}
function checkPattern()
{
	local value=$1
	local pattern=$2
	if [[ $value =~ $pattern ]]
	then
        	echo true;
	else
        	echo false;
	fi

}
firstName $firstName


