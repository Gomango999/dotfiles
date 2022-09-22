# Aliases
# alias ls="ls -a"
alias rm="echo rm disabled. Use del instead."
alias del="rmtrash"

macVimPath="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vim=${macVimPath}
alias py="python3"
alias p3="python3"
alias venv=". .venv/bin/activate"

alias cse="ssh z5206576@cse.unsw.edu.au -t 'clear; /bin/bash -i'"
# alias sshctf="ssh -i /Users/kevin/coding/tutor_ctf/aws/ctf.pem ubuntu@ec2-52-64-104-188.ap-southeast-2.compute.amazonaws.com"

# Easy bashrc/vimrc edits
bashrc(){
	${macVimPath} ~/.bash_profile
}
vimrc(){
	${macVimPath} ~/.vimrc
}
zshrc(){
	${macVimPath} ~/.zshrc
}
sorc(){
	source ~/.zshrc
}
caret(){
	subl ~/Drive/caret	
}

# Make it so that ctrl+D does not quit terminal
set -o ignoreeof

# Custom Scripts
export PATH=$PATH:/Users/kevin/bin

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# Setting PATH for npm
export NODE_PATH="/usr/local/lib/node_modules"
export NPM_PACKAGES="$HOME/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"

# export PATH=$PATH:$HOME/.os161-toolchain/bin
# alias bmake="bmake -m ~/.os161-toolchain/share/mk"

# Removes a specific error message I sometimes get when compiling
export MallocNanoZone=0

# Adds NORD to bat
export BAT_THEME="Nord"

# Fixes Xcode Warning
export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX12.3.sdk
