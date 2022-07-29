export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# ls した時の色付け
alias ls='ls -G'
export LSCOLORS="gxfxcxdxabegedabagacad"

# TMUX Settings
if [ -z $TMUX ]; then
	if $(tmux has-session); then
		tmux
	else
		tmux
	fi
fi
