[[ "$(ps -o comm= $PPID)" =~ "emacs" ]] && return

alias tmux="TERM=screen-256color tmux"
# if [[ -z "$TMUX" && ( -n "$INSIDE_EMACS" || -n "$EMACS" || -n "$VIM" ) ]] ; then
if true && [[ -z "$TMUX" && -z "$INSIDE_EMACS" && -z "$EMACS" ]] ; then
  tmux_session=common
  tmux has-session -t "$tmux_session"  &> /dev/null && tmux -u attach  -t $tmux_session || tmux -u new -s $tmux_session; exit
else
  export TERM=screen-256color
fi

export ZSH=$HOME/.oh-my-zsh
export EDITOR="vim"
plugins=( git rbenv )
plugins+=(zsh-completions)

setopt autocd
stty -ixon # enable ctrl-s in vim
zstyle ':completion:*' rehash true

# zstyle ':completion:*' special-dirs true
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

autoload -U compinit && compinit
ZSH_THEME="blue_and_green"
source $ZSH/oh-my-zsh.sh
setopt menu_complete

source ~/aliases
source $HOME/.zshenv

cd() { builtin cd "$@"; [[ -n $TMUX ]] && tmux refresh-client -S }
exit() { builtin exit "$@"; [[ -n $TMUX ]] && tmux refresh-client -S }
fd() { ag . --nocolor -g "$1" | ag "$1" }
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \ LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
function pg() { ps aux | egrep -i "$1" | grep -v grep | grep --color "$1" }

export HISTSIZE=20000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/home/eugen/.tmux.d:$PATH"
export PATH
[ -f ~/.profile ] && source ~/.profile
export PATH="$PATH:$HOME/.bin/zsh-completions/src" # Add RVM to PATH for scripting
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
export FZF_DEFAULT_COMMAND='(git ls-files || ag -l -g "") 2> /dev/null'

export CUCUMBER_COLORS=comment=cyan


t() {
  nc -z 8.8.8.8 53  >/dev/null 2>&1
  if [ "$?" -eq 0  ] ; then
    if which dict >/dev/null 2>&1 ; then
      trans :ru -- "$*"
    else
      echo 'Install from: https://github.com/soimort/translate-shell#installation'
    fi
  else
    if which dict >/dev/null 2>&1 ; then
      dict -d fd-eng-rus -- "$*"
    else
      echo 'Try: sudo apt-get install dict-freedict-eng-rus'
    fi
  fi
}

