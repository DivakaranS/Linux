# syntax.sh
# Declaring functions using the reserved word function
# Multiline
function f1 {
        echo Hello I\'m function 1
        echo Bye!
}
# One line
function f2 { echo Hello I\'m function 2; echo Bye!; }
# Declaring functions without the function reserved word
# Multiline
f3 () {
        echo Hello I\'m function 3
        echo Bye!
}
# One line
f4 () { echo Hello I\'m function 4; echo Bye!; }
# Invoking functions
f4
f3
f2
f1


var1=1
var2=1
change() {
        echo Inside function
        echo Variable 1 is: $var1
        echo Variable 2 is: $var2
        local var1=5
        var2=5
        echo
        echo After change inside function
        echo Variable 1 is locally $var1
        echo Variable 2 is globally $var2
}
echo Before function invocation
echo Variable 1 is: $var1
echo Variable 2 is: $var2
echo
change
echo
echo After function invocation
echo Variable 1 is: $var1
echo Variable 2 is: $var2


arguments () {
        echo The function location is $0
        echo There are $# arguments
        echo "Argument 1 is $1"
        echo "Argument 2 is $2"
        echo "<$@>" and "<$*>" are the same.
        echo List the elements in a for loop to see the difference!
        echo "* gives:"
        for arg in "$*"; do echo "<$arg>"; done
        echo "@ gives:"
        for arg in "$@"; do echo "<$arg>"; done
}
arguments hello world


test_function() {
        echo Test
        return 100
}
echo The function\'s output is:
test_function
echo The exit status is:
echo $?


test_function() {
        echo Test
}
result=$(test_function)
echo $result is saved in a variable for later use


# list=`cat output.txt`

# n=0

# # n = ${#list}
# echo "length of list is : $n"

# # for i in $list
# # do

# #         echo $i
# # done

# echo "result"


# while read -n1 character; do
#     n=$((n+1)); 
# done < <(echo -n "$list")
# echo "Length of the string is : $n "

# n=`expr "$list" : '.*'`
# echo "Length of the string is : $n "

# for frame in `cat output.txt`
# do
#       echo $frame
#       # command $frame > $frame
# done

# awk '{print $1+12}' output.txt


























