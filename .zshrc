# Pretty terminal colors
export PROMPT='%F{208}%n%f@%F{226}%~%f$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

# Pretty man pages
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode – red
export LESS_TERMCAP_md=$(printf '\e[01;32m') # enter double-bright mode – bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode – yellow
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode – cyan

# Alias
alias ls='ls -GFh'
alias python='python3'
alias pip='pip3'
alias ag='grep -ri --include \*.ts --exclude-dir=node_modules'

# See https://github.com/Aperocky/diaryman
export DIARY_DIR="/Users/$USER/workspace/data/diary"
alias diary="/bin/zsh /Users/$USER/workspace/personal/termlife/diaryman.sh"

export PATH="/opt/homebrew/bin:$PATH"

# Colors
Color_Off='\033[0m'       # Text Reset
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
cecho(){
  printf "${!1}${2} ${Color_Off}\n";
}

# Personalized Commands
alias gg='grep -Prin'
alias fim='find . -iname'

# Mac default apps
# alias firefox='open -a "Firefox Developer Edition"'
# alias steam='open -a "Steam"'
# alias wechat='open -a "Electronic Wechat"'
# alias page='open -a "Pages"'

# Derrick Rose can GO UPSTAIRS!
..(){
    if [[ -z "$1" ]]; then
        cd ..
    else
        dragic=$(( $1 - 1 ));
        upstairs="..$(printf '/..%.0s' $(seq 1 $dragic))";
        cd $upstairs;
    fi
}

clip(){
    clipper=~/clipboard;
    # This stdin only works on linux/ not macOS.
    if read -t 0; then
        stdin=$(cat -);
    fi
    if [[ -z "$1" ]] && [[ -z "$stdin" ]]; then
        cat $clipper;
    elif [[ -z "$1" ]]; then
        echo "$stdin" > $clipper;
    else
        echo "$1" > $clipper;
    fi
}

findr(){
    find . -iname "*$1*"
}

grepr(){
    if [[ -z "$2" ]]; then
        grep -ri $1 .
    else
        grep -ri $1 $2
    fi
}

weather(){
    if [[ -z "$1" ]]; then
        curl "wttr.in/durham,NC?m"
    fi
    curl "wttr.in/$1?m"
}

set -o vi
