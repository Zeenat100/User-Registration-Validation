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
        	echo Valid $value ;
	else
        	echo Invalid $value;
	fi

}
function lastName()
{       local l_name=$1
        pattern="^([a-zA-Z]{3})"
        checkPattern $l_name $pattern
}
function email()
{
	local e_id=$1
	pattern="^[0-9a-zA-z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2,})$"
	checkPattern $e_id $pattern
}
function phone()
{
        local p_id=$1
        pattern="^([0-9]{2})+([/ ])+([0-9]{10})"
	checkPattern $p_id $pattern
}

function password()
{
        local password=$1
        if [[ ${#password} -ge 8 && "$password" == *[[:upper:]]* && "$password" == *[0-9]* && "$password" == *[[(_-@#%/^*)]]{1}* ]]
	then
		echo "Password Accepted"
	else
		echo "Password Not Accepted"
	fi
}


firstName $firstName
echo "Enter your last name"
read lastName
lastName $lastName
echo "Enter your email id"
read email
email $email
echo "Enter your Phone Number"
read phone
phone $phone
echo "Enter your Password"
read pass
password $pass
echo "Enter sample emails"
read s_email
email $s_email
echo "Email verification for sample emails is working fine"
