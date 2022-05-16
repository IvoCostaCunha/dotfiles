# Composer
export PATH="/Users/ivo/.composer/vendor/bin:$PATH"

# Oracle SQL CLI client
export PATH="/usr/local/Caskroom/sqlcl/21.3.2.287.1503/sqlcl/bin:$PATH"

# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"

# VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Terminal colors
export CLICOLOR=1
PS1="%F{82}%n%f%F{82}@%f%F{82}%m%f %F{214}%~%f%b %F{82}$ %F{reset}"

# Alias
alias subl="/Applications/Sublime\ text.app/Contents/SharedSupport/bin/subl"
alias ls="ls -la"
alias start_mysql="brew services start mysql"
alias stop_mysql="brew services stop mysql"
alias start_mongodb="brew services start mongodb/brew/mongodb-community"
alias stop_mongodb="brew services stop mongodb/brew/mongodb-community"

# To replace vim by nvim
alias vi="nvim"

