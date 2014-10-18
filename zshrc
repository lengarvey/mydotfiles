source $HOME/.dotfiles/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle lengarvey/git
antigen bundle command-not-found
antigen bundle bundler

# cool stuff?
antigen bundle lengarvey/chruby-direnv

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme muse

# Tell antigen that you're done.
antigen apply

source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby ruby-2.1.2

eval "$(direnv hook $0)"

# aliases
alias redfire="cd ~/dev/redballoon/redfire"
