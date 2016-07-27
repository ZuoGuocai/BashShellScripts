#!/bin/bash
clear

#tput sc  

tput cup 3 47  
echo -e "\033[5m I love you forever! \033[0m"    
tput cup 5  52  
echo -e "\033[5m  Honey! \033[0m"    

cat  <<EOF



                                               ******         ******
                                             **********     **********
                                            ************* *************
                                           *****************************
                                           *****************************
                                           *****************************
                                            ***************************
                                              ***********************
                                                 *******************
                                                   ***************
                                                     ***********
                                                       *******
                                                         ***
                                                          *
EOF
tput rc  
seconds_left=999  
while [ $seconds_left -gt 0 ];do  
      tput cup 0  45
      tput civis
      echo -n "As time goes by   $seconds_left"  
      tput civis  
      sleep 1  
      seconds_left=$(($seconds_left + 1))  
      echo -ne "\r     \r" #清除本行文字  
done  

