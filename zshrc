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
alias vu="vagrant up"
alias vssh="vagrant ssh"
alias vh="vagrant halt"
alias gityolo= "git add .; git commit --amend --no-edit; git push origin +$(git rev-parse --abbrev-ref HEAD)"
alias knife="BUNDLE_GEMFILE=/Users/karan/.chef/Gemfile bundle exec knife"
alias weather="go run ~/Developement/golang/go/src/github.com/jfrazelle/weather/main.go"

export PATH="$HOME/.bin:$PATH"
export PATH="/Users/karan/Development/golang/go/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export GOPATH="/Users/karan/Development/golang/go"
export PATH=$PATH:$GOPATH/bin

# Make sure tmux uses all colors
alias tmux="TERM=screen-256color tmux -2"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - zsh --no-rehash)"

# Source
source ~/Development/work/shopify/dev/dev.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
