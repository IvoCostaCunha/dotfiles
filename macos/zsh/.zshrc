# compinit enable auto-complete
autoload -Uz compinit
compinit

export CLICOLOR=1
PS1="%F{82}(%*) %n@%m%f %F{214}%2~%f%b %F{82}%#%F{reset} "

# Load Angular CLI autocompletion.
source <(ng completion script)
