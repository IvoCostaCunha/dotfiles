# compinit enable auto-complete
autoload -Uz compinit
compinit

export CLICOLOR=1
NEW_LINE=$'\n'

PS1="%F{82}(%*) %n@%m%f %F{214}%2~%f%b%F{82} %#${NEW_LINE}  > %F{reset}"

# GPG_TTY config
export GPG_TTY=$(tty)

# Homebrew installed C/C++ libs
export CPATH="/usr/local/include:$CPATH"
export LIBRARY_PATH="/usr/local/lib:$LIBRARY_PATH"
#export DYLD_LIBRARY_PATH="/usr/local/lib:$DYLD_LIBRARY_PATH"

# Clang C/C++ Flags
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"

# pipx
export PATH="$PATH:/Users/ivo/.local/bin"

# skim
export PATH="$PATH:/Applications/Skim.app/Contents/MacOS/"

# Angular
# Load Angular CLI autocompletion.
source <(ng completion script)
