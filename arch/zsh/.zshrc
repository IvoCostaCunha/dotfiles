# Terminal colors
export CLICOLOR=1
PS1="%F{82}%n%f%F{82}@%f%F{82}%m%f %F{214}%~%f%b %F{82}$ %F{reset}"

# Alias
alias ls="ls -la"

# To replace vim by nvim
alias vi="nvim"

# To activate auto-complete
autoload -Uz compinit
compinit
