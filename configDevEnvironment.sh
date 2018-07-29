#!/bin/bash

#remember to

#chmod u+x configDevEnvironment.sh

#before executing in the root directory of this repo with

#./configDevEnvironment.sh

#and remember to change display arrangement to "extend" (Apple menu>System Preferences>Displays>Arrangement).

#clear terminal
clear

echo "---------------------------------------------------"
echo "Hi $USER! Commencing dev environment configuration:"
echo "---------------------------------------------------"

#define user vars
echo What is your .gitconfig username?
read GITUSERNAME
echo What is your .gitconfig email?
read EMAIL

#add VSCode to PATH (unsure about this part)
#echo "Adding VSCode to PATH"
#cat << EOF >> ~/.bash_profile
#export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
#EOF

#configure .gitconfig
if git config --global user.name $GITUSERNAME ; then
    echo "Configured .gitconfig with username: $GITUSERNAME"
else
    echo "FAILED to configure .gitconfig with username: $GITUSERNAME"
fi

if git config --global user.email $EMAIL ; then
    echo "Configured .gitconfig with email: $EMAIL"
else
    echo "FAILED to configure .gitconfig with email: $EMAIL"
fi

#(unsure about this part)
#echo "Configuring .gitconfig with default editor VSCode"
#git config --global core.editor code

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

#copy vscode user settings
if yes | cp -f ./data/settings.json ~/.config/Code/User/settings.json ; then
    echo "Replaced ~/.config/Code/User/settings.json with my VSCode User Settings"
else
    echo "FAILED to replace ~/.config/Code/User/settings.json with my VSCode User Settings"
fi

#copy vscode user keybindings
if yes | cp -f ./data/keybindings.json ~/.config/Code/User/keybindings.json ; then
    echo "Replaced ~/.config/Code/User/keybindings.json with my VSCode User Keybindings"
else
    echo "FAILED to replace ~/.config/Code/User/keybindings.json with my VSCode User Keybindings"
fi

#copy .bashrc
if yes | cp -f ./data/.bashrc ~/ ; then
    echo "Replaced .bashrc with a better one with git branch indication and custom alises"
else
    echo "FAILED to replace .bashrc with a better one with git branch indication and custom alises"
fi

#reload .bashrc
if . ~/.bashrc ; then
    echo "Reloaded .bashrc"
else
    echo "FAILED to reload .bashrc"
fi

#launch vscode
if code ; then
    echo "Launched VSCode"
else
    echo "FAILED to launch VSCode"
fi

echo "Happy hacking - AVH"
echo "---------------------------------------------------"
