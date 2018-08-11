# Arthor: Sheng Wei
# Date: 10/11/2015
# Instructor: Dave McPherson
# File Discription: This is a mastermind game realizing in linux shell
# 		    script.
#


#!/bin/bash

###########################################################################
#
# Function Name: makeCode()
# Function Description: This function is to make codes
#                       for guessing
#
###########################################################################

makeCode()
{
codes_array=('@' '#' '$' '%' '*' '&')
for i in 0 1 2 3
do
    r=`expr $RANDOM % 6`
    code_of_maker[$i]=${codes_array[$r]}
done

#for j in 0 1 2 3
#do
 #   printf "%s" "${code_of_maker[$j]}"
#done
#printf "%s\n"
}



###############################################################################
#
# Function Name: breakCode()
# Function Description: This function is for code breaker
#                       enter his/her 4 digit code
#                      
#
###############################################################################

breakCode()
{
printf "\n"
printf "Please Enter your code: "

for k in 0 1 2 3
do
    read -n 1 r1
    code_of_breaker[$k]=$r1
done
printf "\n"

}



###############################################################################
#
# Funtion Name: compareCode()
# Function Description: compare code of maker and code of breaker, the code has 
#                       been testest will be marked
#                      
###############################################################################

compareCode()
{
check_make_array=('0' '0' '0' '0') #check if the code_of_maker has been matched
check_break_array=('0' '0' '0' '0') #check if the code_of_breaker has been matched

right=0 #For checking if game is over

for num1 in 0 1 2 3
do
    for num2 in 0 1 2 3
    do
        if [ "${code_of_maker[$num1]}" == "${code_of_breaker[$num2]}" ]; then
            if [ $num1 == $num2 ] && [ "${check_make_array[$num2]}" == "0" ] && [ "${check_break_array[$num1]}" == "0" ] ; then
            check_break_array[$num1]="1"
            check_make_array[$num2]="1"
            ((right++))
            fi
            if [ $num1 != $num2 ] && [ "${check_make_array[$num2]}" == "0" ] && [ "${check_break_array[$num1]}" == "0" ]; then
            check_make_array[$num2]="2"
            check_break_array[$num1]="2"
            fi
        fi
           
    done
done


#for temp_num in 0 1 2 3
#do
#   printf "%s${check_break_array[$temp_num]}"
#done    
#printf "\n"

#for tmep_num2 in 0 1 2 3
#do
#    printf "%s${check_make_array[$temp_num2]}"
#done
#printf "\n"
}




###############################################################################
#
# Funtion Name: getHint()
# Function Description: This function is for get a hint, if the code is in right
#                       place, output X, wrong place O
#                       
#                      
###############################################################################

getHint(){
hint=""
for num3 in 0 1 2 3
do
    
    if [ "${check_break_array[$num3]}" == "1" ]; then
        hint+="X"
       
    elif [ "${check_break_array[$num3]}" == "2" ]; then
        hint+="O"
    fi
done
#printf "%s" "$hint"
#printf "\n"

}


###############################################################################
#
# Funtion Name: printHint()
# Function Description: This function is for printing out the hint
#                                              
#                      
###############################################################################

printHint(){

echo "#################################################################################"
echo "                                                                          "
printf "                                 Hint:   %s$hint               %-14s      "
printf "\n"
printf "                     You still have %s"$counter" time(s) remained                     "
printf "\n"
echo "                                                                             " 
echo "#################################################################################"


###############################################################################
#
# Funtion Name:gameOver()
# Function Description: When you are out of chances, this function will be called
#                       
#                      
###############################################################################
}

gameOver(){
echo "##################################################################################"
echo "###                                                                            ###"
echo "###                                  GAME OVER                                 ###"
echo "###                                                                            ###"
echo "##################################################################################"
printf "\n\n\n"


}



###############################################################################
#
# Funtion Name: checkWin
# Function Description: When the code matched, this function will be called
#                       
#                      
###############################################################################

checkWin(){
if [ $right -eq 4 ]; then
printf "\n"
echo "##################################################################################"
echo "###                                                                            ###"
echo "###                                   You Win!                                 ###"
echo "###                              Congratulations!                              ###"
echo "###                                                                            ###"                                 
echo "##################################################################################"
printf "\n"
exit
fi
}


printf "\n"
echo "##################################################################################"
echo "###                                                                            ###"
echo "###                               Game Instruction:                            ###"
echo "###  This is a mastermind game which will make you have lot of fun, you need   ###"
echo "###  to enter a four digit code to break a code created by machine. The code   ###"
echo "###  will be combined by @ # $ % & *, a feedback will be given by each guess:  ###"
echo "###  a X means right code right place, O indicates right code wrong place.     ###"
echo "###  Attention: You only have 10 times, after that, the game will be over.     ###"
echo "###                                                                            ###"
echo "##################################################################################"


makeCode
counter=10
while [ $counter -gt 0 ]
do
    breakCode
    compareCode
    checkWin
    getHint
   ((counter--))
   if [ $counter != 0 ]; then
   printHint
   printf "\n"
   fi
done
printf "\n"
gameOver
