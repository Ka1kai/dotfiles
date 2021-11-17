export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# TMUX Settings
if [ -z $TMUX ]; then
	if $(tmux has-session); then
		tmux
	else
		tmux
	fi
fi
