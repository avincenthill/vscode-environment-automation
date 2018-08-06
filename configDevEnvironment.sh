#!/bin/bash

#clear terminal
clear

echo "---------------------------------------------------"
echo "Hi $USER! Commencing dev environment configuration:"
echo "---------------------------------------------------"

#define user vars
#echo What is your .gitconfig username?
#read GITUSERNAME
#echo What is your .gitconfig email?
#read EMAIL

#configure .gitconfig
#if git config --global user.name $GITUSERNAME ; then
#    echo "Configured .gitconfig with username: $GITUSERNAME"
#else
#    echo "FAILED to configure .gitconfig with username: $GITUSERNAME"
#fi
#
#if git config --global user.email $EMAIL ; then
#    echo "Configured .gitconfig with email: $EMAIL"
#else
#    echo "FAILED to configure .gitconfig with email: $EMAIL"
#fi

#(unsure about this part)
#echo "Configuring .gitconfig with default editor VSCode"
#git config --global core.editor code


#copy .bashrc
if yes | cp -f ./data/.bashrc ~/ ; then
    echo "Replaced .bashrc"
else
    echo "FAILED to replace .bashrc"
fi

#copy .bash_profile
if yes | cp -f ./data/.bash_profile ~/ ; then
    echo "Replaced .bash_profile"
else
    echo "FAILED to replace .bash_profile"
fi

#reload .bashrc
if . ~/.bashrc ; then
    echo "Reloaded .bashrc"
else
    echo "FAILED to reload .bashrc"
fi

#reload .bash_profile
if . ~/.bash_profile ; then
    echo "Reloaded .bash_profile"
else
    echo "FAILED to reload .bash_profile"
fi

#install vscode extensions - need to make sure "code" is working before the below
echo "Installing my favorite VSCode extensions:"
code --install-extension shardulm94.trailing-spaces
code --install-extension formulahendry.auto-rename-tag
code --install-extension wesbos.theme-cobalt2
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension sysoev.language-stylus
code --install-extension ritwickdey.liveserver
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.python
code --install-extension equimper.react-native-react-redux
code --install-extension wayou.vscode-todo-highlight
code --install-extension vsmobile.vscode-react-native
code --install-extension formulahendry.auto-close-tag
code --install-extension shardulm94.trailing-spaces
code --install-extension robertohuertasm.vscode-icons
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension formulahendry.code-runner
code --install-extension eamodio.gitlens


#copy vscode user settings - TBD make this work on Mac workstations
#VSCOde settings location for Linux: ~/.config/Code/User
#VSCOde settings location for MacOS use ~/Library/Application Support/Code
if yes | cp -f ./data/settings.json "/Users/student/Library/Application Support/Code/User/settings.json" ; then
    echo "Replaced settings.json with my VSCode User Settings"
else
    echo "FAILED to replace settings.json with my VSCode User Settings"
fi

#copy vscode user keybindings
if yes | cp -f ./data/keybindings.json "/Users/student/Library/Application Support/Code/User/keybindings.json" ; then
    echo "Replaced keybindings.json with my VSCode User Keybindings"
else
    echo "FAILED to replace keybindings.json with my VSCode User Keybindings"
fi

#launch vscode
if code ; then
    echo "Launched VSCode"
else
    echo "FAILED to launch VSCode"
fi

echo "Happy hacking - AVH"
echo "---------------------------------------------------"
