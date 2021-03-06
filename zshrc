# exports
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim

# antigen
source $HOME/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle lengarvey/git
antigen bundle command-not-found

# cool stuff?
antigen bundle lengarvey/chruby-direnv

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme muse

# Tell antigen that you're done.
antigen apply

# chruby
source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby ruby-2.2.2

# direnv
eval "$(direnv hook $0)"

# aliases
alias redfire="cd ~/dev/redballoon/redfire"
[[ -f /Users/artega/.sentinel/current/bin/sentinel ]] && eval "$(/Users/artega/.sentinel/current/bin/sentinel init -)"

source $HOME/.computerc
