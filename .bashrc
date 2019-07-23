# ~/.bashrc: executed by bash(1) for non-login shells.

# Pretty terminal colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
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
