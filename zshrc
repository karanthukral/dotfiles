#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias bx="bundle exec"
alias subl="open -a 'Sublime Text'"
alias vi="vim"

export PATH="$HOME/.bin:$PATH"
export PATH="/Users/karan/Development/golang/go/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export GOROOT="/Users/karan/Development/golang/go"

# Make sure tmux uses all colors
alias tmux="TERM=screen-256color tmux -2"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"
