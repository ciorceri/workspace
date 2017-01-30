#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -al --color=auto'
PS1='[\u@\h \W]\$ '

# solve the copy/paste probem in the terminal
# https://bbs.archlinux.org/viewtopic.php?id=174595
printf "\e[?2004l"

### set proxy
proxy_value="http://proxyhost:8080"
noproxy_value="localhost, 127.0.0.1, *.hpe.com"
proxy_env="http_proxy ftp_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY ALL_PROXY"

for envvar in $proxy_env
do
    export $envvar=$proxy_value
done
for envvar in "no_proxy NO_PROXY"
do
    export $envvar="$noproxy_value"
done
unset proxy_value noproxy_value proxy_env envvar

export PATH=$PATH:/opt/maven/bin/

# print some help commands
echo -e "\e[33mTerminator HELP:"
echo -e
echo Ctrl+Shift+E - vErtical split
echo Ctrl+Shift+O -  hOrizontal split
echo Alt+ArrowKeys - Navigate terminals
echo -e
echo Super+T - Group Tab
echo Super+Shift+T - Ungroup Tab
echo -e
echo bash HELP:
echo -e
echo Ctrl+A / Ctrl+E - goto begining/end of current line
echo Ctrl+U - clears the line before the cursor
echo Ctrl+K - clear the line after the cursor
echo Ctrl+W - delete the word before the cursor
echo Ctrl+T - swap the last two characters before the cursor
echo Esc+T - swap the last two words before the cursor
echo Alt+F - move cursor forward one word on the current line
echo Alt+B - move cursor backward one word on the current line
echo -e
echo ssh help:
echo -e
echo ~.: Disconnect
echo ~C: Open command line
echo ~R: Request rekeying of the connection
echo -e "\e[39m"
