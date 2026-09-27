export ZSH="$HOME/.oh-my-zsh"
export EDITOR=nvim
export VISUAL=nvim
export GIT_EDITOR=nvim

plugins=(git)
if [ -f "$ZSH/oh-my-zsh.sh" ]; then
  source "$ZSH/oh-my-zsh.sh"
fi

alias ports='lsof -i -P|grep -i "listen"'
alias resolution='system_profiler SPDisplaysDataType | grep Resolution'
alias gdc="git diff --color | cat"
alias vrc="vim ~/.vimrc"
alias zrc="vim ~/.zshrc"
alias stup="vim +'normal Go' +'r!date' ~/dev/did.txt"
alias c="clear"
alias tl="tmux ls"
alias tn="tmux new -t"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"
alias tx="tmuxinator"
alias cat="bat"
alias p="python3"
alias grecent="git for-each-ref --sort=-committerdate refs/remotes/origin --format='%(committerdate:relative) %09 %(refname:short)' | head -10"
alias o="omp"

alias -s git="git clone"
alias -s out="tail -f"

# Local theme commands, even when ~/.local/bin/env is not installed.
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
if [ -s /opt/homebrew/opt/nvm/nvm.sh ]; then
  source /opt/homebrew/opt/nvm/nvm.sh
  nvm use --silent default
fi
if [ -s /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm ]; then
  source /opt/homebrew/opt/nvm/etc/bash_completion.d/nvm
fi

export PATH="$PATH:$HOME/.cargo/bin"
if command -v go >/dev/null 2>&1; then
  export PATH="$(go env GOPATH)/bin:$PATH"
fi
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$PATH:/usr/local/bin"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
if command -v pyenv >/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

function iterm-profile() {
  echo -e "\033]50;SetProfile=$1\a"
  ITERM_PROFILE=$1
}

if [ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -s "$HOME/.bun/_bun" ]; then
  source "$HOME/.bun/_bun"
fi
if [[ ${TERM:-} != dumb ]] && command -v starship >/dev/null 2>&1; then
  eval "$(starship init zsh)"
fi
if /usr/libexec/java_home -v 21 >/dev/null 2>&1; then
  export JAVA_HOME=$(/usr/libexec/java_home -v 21)
fi
