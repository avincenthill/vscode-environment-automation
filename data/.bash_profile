export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#source .bashrc
if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi