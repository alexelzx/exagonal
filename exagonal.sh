#!/bin/bash

##This defines the version of your app
__version__="9.8.9 OCT22"

## ANSI colors (FG & BG)
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m\n')"

## Script termination (the message that appears when you hit ctrl+c)
exit_on_signal_SIGINT() {
	{ printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program interrupted, execute again." 2>&1; reset_color; }
	exit 0
	sleep 2
	{ clear; }
}

exit_on_signal_SIGTERM() {
	{ printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Terminated." 2>&1; reset_color; }
	exit 0
	sleep 2
	{ clear; }
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

## Reset terminal colors (I think it's pretty clear, isn't?)
reset_color() {
	tput sgr0   # reset attributes
	tput op     # reset color
	return
}


#Check for update (the progress bar for ''checking an update'')
check_update() {
        sleep 1
        echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} New comms found"
        sleep 2
        echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Downloading the required information..."
        sleep 2
        echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Decrypting..."
        { sleep 2; clear; }
  
echo -ne '#                                                                                           (1%)\r'
{ sleep 1; clear; }        
echo -ne '##                                                                                          (2%)\r' 
{ sleep 1; clear; }        
echo -ne '###                                                                                         (3%)\r'
{ sleep 1; clear; }           
echo -ne '####                                                                                        (4%)\r'
{ sleep 1; clear; }           
echo -ne '######                                                                                      (5%)\r'
{ sleep 1; clear; }            
echo -ne '########                                                                                    (7%)\r'
{ sleep 1; clear; }           
echo -ne '##########                                                                                  (8%)\r'
{ sleep 1; clear; }            
echo -ne '############                                                                                (11%)\r'
{ sleep 1; clear; }      
echo -ne '###############                                                                             (17%)\r'
{ sleep 1; clear; }      
echo -ne '##################                                                                          (19%)\r'
{ sleep 1; clear; }      
echo -ne '####################                                                                        (24%)\r'
{ sleep 1; clear; }      
echo -ne '######################                                                                      (28%)\r' 
{ sleep 1; clear; }     
echo -ne '#########################                                                                   (30%)\r'
{ sleep 1; clear; }      
echo -ne '###########################                                                                 (36%)\r'
{ sleep 1; clear; }       
echo -ne '############################                                                                (39%)\r'
{ sleep 1; clear; }     
echo -ne '##############################                                                              (42%)\r'
{ sleep 1; clear; }    
echo -ne '################################                                                            (47%)\r'
{ sleep 1; clear; }    
echo -ne '##################################                                                          (51%)\r'
{ sleep 1; clear; }      
echo -ne '#####################################                                                       (55%)\r'
{ sleep 1; clear; }      
echo -ne '#######################################                                                     (58%)\r'
{ sleep 1; clear; }    
echo -ne '#########################################                                                   (61%)\r'
{ sleep 1; clear; }          
echo -ne '############################################                                                (63%)\r'
{ sleep 1; clear; }          
echo -ne '#################################################                                           (69%)\r'
{ sleep 1; clear; }         
echo -ne '########################################################                                    (73%)\r'
{ sleep 1; clear; }                  
echo -ne '################################################################                            (80%)\r'
{ sleep 1; clear; }    
echo -ne '####################################################################                        (86%)\r'
{ sleep 1; clear; }   
echo -ne '##########################################################################                  (88%)\r'
{ sleep 1; clear; }   
echo -ne '##############################################################################              (91%)\r'
{ sleep 1; clear; }   
echo -ne '###################################################################################         (95%)\r'
{ sleep 1; clear; }   
echo -ne '#######################################################################################     (98%)\r'
{ sleep 1; clear; }   
echo -ne '############################################################################################(100%)\r'
echo -ne '\n'
		{ sleep 3; clear; }
	          echo -ne "\n${GREEN}[${WHITE}!${GREEN}]${CYAN} Information decrypted and downloaded sucessfully. Proceeeding with additional data download."
	        { sleep 3; clear; }
}


## Check Internet Status (this is the process for the app to check the connection of the cmd to the internet)
check_status() {
               { clear; banner; }
               sleep 2
	echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Connection Status : "
	timeout 4s curl -fIs "https://api.github.com" > /dev/null
	[ $? -eq 0 ] && echo -e "${GREEN}Online${WHITE}" && check_update || echo -e "${RED}Offline${WHITE}"
}

## Banner (this is the banner of your app)
banner() {
	cat <<- EOF
		${ORANGE}
		E X A G O N A L
		Secure Military Communications
		
	EOF
}

## Install content (yup, same again as down)
install_content() {
	        { reset_color; }
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Installing content"${WHITE}
		sleep 0.5
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Preparing installation..."${WHITE}
		sleep 1
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 15%"${WHITE}
		sleep 0.2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 39%"${WHITE}
		sleep 0.6
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 56%"${WHITE}
		sleep 0.1
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 88%"${WHITE}
		sleep 2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 97%"${WHITE}
		sleep 3
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installation completed."${WHITE}
		{ sleep 2; clear; }
}

## Install localhost (same as down here)
install_localliverunservices() {

		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Installing local live-run services"
		sleep 0.4
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Preparing installation..."
		sleep 2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 11%"${WHITE}
		sleep 0.2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 28%"${WHITE}
		sleep 0.6
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 44%"${WHITE}
		sleep 0.1
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 70%"${WHITE}
		sleep 2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 94%"${WHITE}
		sleep 3
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installation completed."${WHITE}
		{ sleep 2; clear; }	
}

## Install menu (the ''code'' for the menu to be installed even tho it's just aesthetic)
install_menu() {

	echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Installing menu..."
		sleep 0.4
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Preparing installation..."
		sleep 2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 7%"${WHITE}
		sleep 0.2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 18%"${WHITE}
		sleep 0.6
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 30%"${WHITE}
		sleep 2
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 56%"${WHITE}
		sleep 3
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} 98%"${WHITE}
		sleep 1
		echo -e "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Installation completed."${WHITE}	
		{ sleep 2; clear; }	
}

## Exit message (this message is displayed when the user hits exit)
msg_exit() {
	{ clear; banner; echo; }
	echo -e "${GREENBG}${BLACK} Sending usage data and clearing...${GREEN}\n"
	sleep 1
	echo -e "${GREENBG}${BLACK} Done.${GREEN}\n"
	sleep 1
	echo -e "${GREENBG}${BLACK} Have a nice day.${GREEN}\n"
	{ reset_color; clear; exit 0; }
}

## About (this is the ''about EXAGONAL'' section code)
about() {
	{ clear; banner; echo; }
	cat <<- EOF
		${GREEN}Version  ${RED}:  ${ORANGE}${__version__}
		${CYAN}Secure Military Communications since 1990. 
		We're everywhere and nowhere at the same time. Always keeping updated the top secret agencies with maximum security and encryption.
 	
		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu     ${RED}[${WHITE}99${RED}]${ORANGE} Exit
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"
	case $REPLY in 
		99)
			msg_exit;;
		0 | 00)
			echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Returning to main menu wait..."
			{ sleep 1; main_menu; };;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; about; };;
	esac
}

## Clearance of msg (just a ''clearance'' message for the user'')
clearance_menu() {
	{ clear; banner; echo; }
	cat <<- EOF
	        ${CYAN}Information Clearance Protocol (ICP)
		${GREEN}You've confirmed the reception of this updated information. 
		You can now leave EXAGONAL or go back to the menu to read again the information.
 	
		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu     ${RED}[${WHITE}99${RED}]${ORANGE} Exit
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"
	case $REPLY in 
		99)
			msg_exit;;
		0 | 00)
			echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Returning to main menu wait..."
			{ sleep 1; main_menu; };;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; clearance; };;
	esac
}

## Restricted areas (this is for you to understand that even if you don't type the option {ex (05) Go back} but you define what that number does when it's entered then you can stil go to a ''secret page'').
restricted_area() {
	{ clear; banner; echo; }
	cat <<- EOF
	        ${CYAN}Restricted Personal Environment (RPE)
		${GREEN}This is a RPE for high commands only (accessing with the specific confidential password). The updates for this section are:
		
		${RED}[${WHITE}!${RED}]${ORANGE} Last updated: NOV3.732-12----22 ${RED}[${WHITE}!${RED}]${ORANGE}
		
	${RED}--------------------------------------------------------------------------------
	${GREEN}- Files moved from A to B (pts updated in bash room)- Escorted- CONFIDENTIAL${GREEN}
	${RED}--------------------------------------------------------------------------------	

		${RED}[${WHITE}00${RED}]${ORANGE} Main Menu     ${RED}[${WHITE}99${RED}]${ORANGE} Exit
	EOF

	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"
	case $REPLY in 
		99)
			msg_exit;;
		0 | 00)
			echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Returning to main menu wait..."
			{ sleep 1; main_menu; };;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; clearance; };;
	esac
}

## Menu (the actual menu you see at the end of the ''installation'')
main_menu() {
	{ clear; banner; echo; }
	cat <<- EOF
		${RED}[${WHITE}!${RED}] CONFIDENTIAL (CFD LVL10 only)

		${RED}[${WHITE}!${RED}]${ORANGE} Secret information update ${RED}[${WHITE}!${RED}]${ORANGE}
		${RED}[${WHITE}!${RED}]${ORANGE} Last updated: NOV3.732-12----22 ${RED}[${WHITE}!${RED}]${ORANGE}
		
	${RED}--------------------------------------------------------------------------------
	${GREEN}- Information ALPHA: NAV-GA-23 executing as planned - Launch at Charlie Zulu 400
		
		- Information BETA:  BETA-55-TR executing with a 400 Jack Wilson delay T-1
		
		- Port access on 151.190 is open for R Type Troops
		
		- For BTLL STT clear for takedown (TRGT ZZ6123 as on brief room)${GREEN}
	${RED}--------------------------------------------------------------------------------	

	${RED}[${WHITE}99${RED}]${ORANGE} About EXAGONAL   ${RED}[${WHITE}00${RED}]${ORANGE} Exit     ${RED}[${WHITE}11${RED}]${ORANGE} Confirm 

	EOF
	
	read -p "${RED}[${WHITE}-${RED}]${GREEN} Select an option : ${BLUE}"

	case $REPLY in 
	
		99)
			about;;
		0 | 00 )
			msg_exit;;
		11)
			clearance_menu;;
		516)
			restricted_area;;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; main_menu; };;
	
	esac
}

## Main (supposed to be the order of the different parts to be shown, take a look)
check_status
install_content
install_localliverunservices
install_menu
main_menu
