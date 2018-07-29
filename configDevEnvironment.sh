#!/bin/bash

#remember to

#chmod u+x configDevEnvironment.sh

#before executing in the root directory of this repo with

#sudo ./configDevEnvironment.sh

#and remember to change display arrangement to "extend" (Apple menu>System Preferences>Displays>Arrangement) and change user vars below.

#define user vars - CHANGE THESE BEFORE RUNNING!
GITUSERNAME="exampleUserName"
EMAIL="example@gmail.com"
VSCODEDIR="~/.config/Code/User/"

#clear terminal
clear

echo "Hi $USER! Commencing dev environment configuration"

#add VSCode to PATH (unsure about this part)
#echo "Adding VSCode to PATH"
#cat << EOF >> ~/.bash_profile
#export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
#EOF

#configure .gitconfig
echo "Configuring .gitconfig with username: $GITUSERNAME"
git config --global user.name $GITUSERNAME
echo "Configuring .gitconfig with email: $EMAIL"
git config --global user.email $EMAIL
#(unsure about this part)
#echo "Configuring .gitconfig with default editor VSCode"
#git config --global core.editor code

#install vscode extensions - need to make sure "code" is working before the below
echo "Installing my favorite VSCode extensions"
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
yes | sudo cp -f ./data/settings.json $VSCODEDIR

#copy vscode user keybindings
yes | sudo cp -f ./data/keybindings.json $VSCODEDIR

#copy .bashrc
echo "Replacing .bashrc with a better one with git branch indication and custom alises"
yes | sudo cp -f ./data/.bashrc ~/

#launch vscode
echo "Launching VSCode"
code

#reload .bashrc
echo "Reloading .bashrc - Happy hacking!"
. ~/.bashrc