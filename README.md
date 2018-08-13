# Automate your dev environment setup on new hardware!
## vscode-environment-automation

TLDR: Don't run this on hardware unless you want to overwrite your VSCode and bash settings. Config your dev enviroment (bash, VSCode) on Hack Reactor workstations quickly by executing this in terminal:

```cd ~ && git clone https://github.com/avincenthill/vscode-environment-automation.git && cd vscode-environment-automation/ && chmod u+x configDevEnvironment.sh && ./configDevEnvironment.sh```

This shell script quickly configures VSCode and bash (.bashrc and .bash_profile) with settings found in /data. It also installs VSCode extensions and replaces VSCode User Settings and Keybindings with my preferences (wes bos cobalt2 color scheme, line bubbling/duplication, and more). Don't execute until you read through the shell script and understand what everything does, and I don't assume liability for you using this and accidentally overwriting your non-backed-up .bashrc.

Use https://www.explainshell.com/# to help understand commands.

My Hack Reactor presentation on this work: https://docs.google.com/presentation/d/1_L2a1sVSOQXRevjTWvXohneuIiQkw3WtuVyPOinaYuA/edit?usp=sharing

Happy hacking! -AVH
