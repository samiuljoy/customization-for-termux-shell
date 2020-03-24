if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

#    _  _     _                     _
#  _| || |_  | |__     __ _   ___  | |__    _ __    ___
# |_  __  _| | '_ \   / _` | / __| | '_ \  | '__|  / __|
# |_      _| | |_) | | (_| | \__ \ | | | | | |    | (__
#   |_||_|   |_.__/   \__,_| |___/ |_| |_| |_|     \___|
#

# shopt -s autocd

[[ -s /data/data/com.termux/files/home/.autojump/etc/profile.d/autojump.sh ]] && source /data/data/com.termux/files/home/.autojump/etc/profile.d/autojump.sh 

# My vi key bindings

set -o vi
bind -m vi-command ".":insert-last-argument
bind -m vi-insert "\C-l":clear-screen
bind -m vi-insert "\C-a":beginning-of-line
bind -m vi-insert "\C-e":end-of-line
bind -m vi-insert "\C-w":backward-kill-word

# bind 'set show-all-if-ambiguous on'
# bind 'TAB:menu-complete'

bind '"\e[A": history-search-backward'
bind '"\eOA": history-search-backward'

# Color changes in terminal foreground and background
# echo -ne '\e]10;#87afaf\e\\'
# echo -ne '\e]11;#10101c\e\\'

# Changes the cursor from block to I-beam
printf '\033[6 q'
#
PS1="\[\033[1;38;5;111m\][\w] \n\[\033[2;38;5;111m\]$ \[\033[0m\]"
#
# My aliases
#
alias open="termux-open"
alias sl="ls  -F"
alias ls="ls "
alias cls="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ls="ls  -F"
alias hist="history -c"
alias yoetc="cd $HOME; cd ..; cd usr/etc/"
alias yobin="cd $HOME; cd ..; cd usr/bin/"
alias yovar="cd $HOME; cd ..; cd usr/var"
alias yoinclude="cd $HOME; cd ..; cd usr/include/"
alias yo-lib="cd $HOME; cd ..; cd usr/lib/"
alias yoshare="cd $HOME; cd ..; cd usr/share"
alias yousr="cd $HOME; cd ..; cd usr/"
alias yolibx=" cd $HOME; cd ..; cd usr/libexec/"

# Custom navigation variables

tobin="/data/data/com.termux/files/usr/bin"
toetc="/data/data/com.termux/files/usr/etc"
toshare="/data/data/com.termux/files/usr/share"
tousr="/data/data/com.termux/files/usr/"
tovim="/data/data/com.termux/files/usr/share/vim/vim81/colors"
alias grep="grep "

# Custom dircolors

LS_COLORS=$LS_COLORS:'di=01;02;38;5;36:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'ex=01;02;38;5;196:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'*.py=01;02;38;5;111:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'ln=02;34:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'no=37:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'*.html=01;02;38;5;209:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.bin=96:';
export LS_COLORS
LS_COLORS=$LS_COLORS:'*.h=01;90:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.pcap=01;31:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.cap=01;31:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.conf=01;33:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.md=01:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.zip=01;38;5;162:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.txt=01;37:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.md=01;37:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.vim=01;02;36:' export LS_COLORS
LS_COLORS=$LS_COLORS:'*.jpeg=01;02;38;5;220:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.jpg=01;02;38;5;220:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.png=01;02;38;5;220:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.gif=01;02;38;5;220:'; export LS_COLORS
LS_COLORS=$LS_COLORS:'*.pdf=01;02;38;5;173:'; export LS_COLORS

# Again some aliases

alias cla="clear"
alias la="ls -a -F "
alias lz="ls -F"
alias duck="w3m https://duckduckgo.com"
alias gog='w3m "https://www.google.com/?gl=us&hl=en&pws=0&gws_rd=cr"'

# A simple cs function. cd to dir and list contents

cs() { cd "$@" && ls; }
