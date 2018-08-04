# Automate your dev environment setup on a new machine!
## vscode-environment-automation

TLDR: configs dev enviroment for Hack Reactor workstations quickly by executing this in terminal:

```cd ~ && git clone https://github.com/avincenthill/vscode-environment-automation.git && cd vscode-environment-automation/ && chmod u+x configDevEnvironment.sh && ./configDevEnvironment.sh```


This shell script quickly configures git (.gitconfig), VSCode, and bash (.bashrc) with settings found in /data. It also installs the following VSCode extensions

```
shardulm94.trailing-spaces
formulahendry.auto-rename-tag
wesbos.theme-cobalt2
dbaeumer.vscode-eslint
donjayamanne.githistory
sysoev.language-stylus
ritwickdey.liveserver
esbenp.prettier-vscode
ms-python.python
equimper.react-native-react-redux
wayou.vscode-todo-highlight
vsmobile.vscode-react-native
formulahendry.auto-close-tag
shardulm94.trailing-spaces
robertohuertasm.vscode-icons
```

and replaces and reloads .bashrc and .bash_profile and replaces VSCode User Settings and Keybindings with my preferences (wes bos cobalt2 color scheme, line bubbling/duplication, and more). Don't execute until you read through the shell script and understand what everything does, and I don't assume liability for you using this and accidentally overwriting your non-backed-up .bashrc.

Remember to

`chmod u+x configDevEnvironment.sh`

before executing the script in the root directory of this repo with

`./configDevEnvironment.sh`

Happy hacking! -AVH
