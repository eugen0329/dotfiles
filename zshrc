export ZSH=$HOME/.oh-my-zsh
export EDITOR="vim"
ZSH_THEME="blue_and_green"
source $ZSH/oh-my-zsh.sh

plugins=( git )


# zsh history
export HISTSIZE=2000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

setopt autocd
stty -ixon # enable ctrl-s in vim
zstyle ':completion:*' rehash true


alias tmux="TERM=screen-256color-bce tmux"
tmux_session=common
if which tmux 2>&1 >/dev/null; then
  #tmux has-session -t $SESSIONNAME &> /dev/null && tmux attach -t  || tmux new -s ; exit
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    tmux has-session -t $tmux_session  &> /dev/null && tmux -u attach  -t $tmux_session || tmux -u new -s $tmux_session
    exit
  fi
fi

# if [ -e /usr/share/terminfo/s/screen-256color ]; then
#   export TERM='screen-256color'
# else
#   export TERM='screen'
# fi

# utils
alias ya="yaourt"
alias sp="sudo pacman"
alias ssc="sudo systemctl"
alias sudo="sudo -E"
alias ls='ls --color=auto'

# make/debug
alias mc="make clean"
alias m="make"
alias vg="valgrind --leak-check=full"

# git
alias ga="git add"
alias gc="git commit"
alias gca="git commit --amend"
alias gp="git push"
alias gs="git status"
alias gcl="git clone"

# ruby
alias be="bundle exec"
alias bi="bundle install"
alias ra="bundle exec rails"
alias rs="bundle exec rails server"
alias rg="bundle exec rails generate"
alias rgs="bundle exec rails generate scaffold"
alias rgmg="bundle exec rails generate migration"
alias rgmo="bundle exec rails generate model"
alias rgc="bundle exec rails generate controller"
alias rc="bundle exec rails console"
alias rr="bundle exec rake routes"
alias rdm="bundle exec rake db:migrate"
alias rdc="bundle exec rake db:create"
alias rdr="bundle exec rake db:rollback"
alias rn="bundle exec rails new"

# usual
alias v="vim"
alias vi="vim"
alias sv="sudo vim"
alias f="fg"
alias cpwd="echo -n $(pwd) | xclip -sel clip"
alias pingg="ping 8.8.8.8"
alias t="tmux"
alias x="exit"
alias ap="touch"
alias md="mkdir -pv"
alias ts="tmuxinator start"
alias tsw="tmux choose-session"


# development
alias pcmnlog="cat /var/log/pacman.log" # List pacman's log
alias lskeykodes='sed -n l'
# graphical enviroment keycodesl(xorg-xev package)
alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"


cd() { builtin cd "$@"; [[ -n $TMUX ]] && tmux refresh-client -S }
exit() { builtin exit "$@"; [[ -n $TMUX ]] && tmux refresh-client -S }
fd() { ag . -l --nocolor -g "" | ag "$@" }
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

export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/home/eugen/.tmux.d:$PATH"

export PATH

# rvm
[ -f ~/.profile ] && source ~/.profile
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
# export FZF_DEFAULT_COMMAND='(git ls-tree -r --name-only HEAD || ag -l -g "") 2> /dev/null'
export FZF_DEFAULT_COMMAND='(git ls-files || ag -l -g "") 2> /dev/null'

