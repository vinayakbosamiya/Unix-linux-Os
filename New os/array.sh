#Array example
--------------------------------------------------------------------------
#!/bin/sh

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"

-----------------------------------------------------------------------
#You can access all the items in an array

#!/bin/sh

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"
----------------------------------------------------------------
arr=(1 2 3 4 5)
 
# loops iterate through a 
# set of values until the
# list (arr) is exhausted
for i in "${arr[@]}"
do
    # access each element 
    # as $i
    echo $i
done
---------------------------------------------------------------------------
#!/bin/bash 

array=( apple bat cat dog elephant frog ) 

#print first element 
echo ${array[0]} 
echo ${array:0} 

#display all elements 
echo ${array[@]} 
echo ${array[@]:0} 

#display all elements except first one 
echo ${array[@]:1} 

#display elements in a range 
echo ${array[@]:1:4} 

#length of first element 
echo ${#array[0]} 
echo ${#array} 

#number of elements 
echo ${#array[*]} 
echo ${#array[@]} 

#replacing substring 
echo ${array[@]//a/A} 

exit 0
---------------------------------------------------------------------------------------


# !/bin/bash
# To input array at run
# time by using while-loop
 
# echo -n is used to print
# message without new line

echo -n "Enter the Total numbers :"
read n
echo "Enter numbers :"
i=0
 
# Read upto the size of 
# given array starting from
# index, i=0
while [ $i -lt $n ]
do
    # To input from user

    read a[$i]
 
    # Increment the i = i + 1

    i=`expr $i + 1`
done
 
# To print array values 
# starting from index, i=0
echo "Output :"
i=0
 
while [ $i -lt $n ]
do
    echo ${a[$i]}
 
    # To increment index
    # by 1, i=i+1 
    i=`expr $i + 1`
done
---------------------------------------------------------------------------------------

#!/bin/bash

# Declare a static Array
arr=("Jayesh" "Shivang" "1" "rishabh" "Vipul" "Nishtan")

# Count the length of a particular element in the array
element_length=${#arr[2]}
echo "Length of element at index 2: $element_length"

# Count the length of the entire array
array_length=${#arr[@]}
echo "Length of the array: $array_length"

# Search in the array
search_result=$(echo "${arr[@]}" | grep -c "Vipul")
echo "Search result for Jayesh: $search_result"

# Search and replace in the array
replaced_element=$(echo "${arr[@]/Shivang/SHIVANG}")
echo "Array after search & replace: ${replaced_element[*]}"

# Delete an element in the array (index 3)
unset arr[3]

echo "Array after deletion: ${arr[*]}"


----------------------------------------------------------------------------
#!/bin/bash  
#Script to print all the elements of the array  
  
#declaring the array  
declare -a example_array=( "Welcome""To""geetanjali" )  
  
#Printing all the elements  
echo "${example_array[@]}"  

--------------------------------------------------------------------------------
#!/bin/bash  
#Script to print the keys of the array  
  
#Declaring the Array  
declare -a example_array=( "Welcome""To""geetanjali" )  
  
#Printing the Keys  
echo "${!example_array[@]}"  


--------------------------------------------------------------------------------
!/bin/bash  
#Script to print all keys and values using loop through the array  
  
declare -a example_array=( "Welcome""To""Javatpoint" )  
  
#Array Loop  
for i in "${!example_array[@]}"  
do  
echo The key value of element "${example_array[$i]}" is "$i"  
done  
-------------------------------------------------------------------------------
#!/bin/bash  
#Script to loop through an array in C-style  
  
declare -a example_array=( "Welcome""To""Javatpoint" )  
  
#Length of the Array  
length=${#example_array[@]}  
  
#Array Loop  
for (( i=0; i < ${length}; i++ ))  
do   
echo $i ${example_array[$i]}  
done  
--------------------------------------------------------------------------------
#! /usr/bin/bash

FRUITS=("banana" "apple" "mango" "orange")

# Access all elements in the array
echo "${FRUITS[@]}"

# Access an array element by its index

echo "The item at index 0 is: ${FRUITS[0]}"
echo "The item at index 1 is: ${FRUITS[1]}"
echo "The item at index 2 is: ${FRUITS[2]}"
echo "The item at index 3 is: ${FRUITS[3]}"

# Add an item to the array
FRUITS[4]="pawpaw"

# Print array with the added item
echo "Array with added item: ${FRUITS[@]}"

==========================================================================================
# Sorting the array in Bash 
# using Bubble sort

# Static input of Array
arr=(10 8 20 100 12)

echo "Array in original order"
echo ${arr[*]}

# Performing Bubble sort 
for ((i = 0; i<5; i++))
do
    
    for((j = 0; j<5-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}
===========================================================================
# Define the array
my_array=(3 1 4 1 5 9 2 6 5)

# Sort the array in ascending order
sorted_array=($(echo "${my_array[@]}" | tr ' ' '\n' | sort))

# Print the sorted array
echo "Sorted array: ${sorted_array[@]}"

==================================================================================
#!/bin/bash
NAMES=""
NAMES="${NAMES} MYNAME"
NAMES="${NAMES} YOURNAME"
NAMES="${NAMES} THEIRNAME"

echo 'Get the second one'
echo ${NAMES} | cut -d ' ' -f2

echo 'Add one more...'
NAMES="${NAMES} TOM"

echo 'Grab the third one'
echo ${NAMES} | cut -d ' ' -f3
=======================================================================
myArray=(1 2 3 4 5 6 7 8)
printf "Array before delete:\n"
for i in ${myArray[@]}
do
    echo $i
done
unset myArray[2]
printf "Array after delete:\n"
for i in ${myArray[@]}
do
    echo $i
done