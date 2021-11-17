# zsh setting

case ${OSTYPE} in
	darwin*)
		#gitt-promptの読み込み
		source ~/.zsh/git-prompt.sh

		# git-completionの読み込み
		fpath=(~/.zsh $fpath)
		zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
		# 補完
		autoload -Uz compinit && compinit
	;;
	linux*)
	source ~/dotfiles/git-prompt.sh
	#source ~/dotfiles/git-completion.bash
	;;
esac


# プロンプトのオプション表示設定(ONにすると重い可能性あり)
#GIT_PS1_SHOWDIRTYSTATE=true

# プロンプトの表示設定(好きなようにカスタマイズ可)
#setopt PROMPT_SUBST ; PS1='%F{cyan}%n@%m%f: %F{green}%~%f %F{magenta}$(__git_ps1 "(%s)")%f
#\$ '
# %fに変更した場合はユーザー名のみになるので変な文字列が追加される場合はこちらに変更する
setopt PROMPT_SUBST ; PS1='%F{cyan}%n: %F{green}%~%f %F{magenta}$(__git_ps1 "(%s)" )%f
\$ '

# GGtk-WARNING **: cannot open display
unset SSH_ASKPASS

# grep に色をつける
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls系コマンド
# macとlinuxで挙動が違う
case "${OSTYPE}" in
darwin*)
alias ls="ls -G"
alias ll="ls -alF -lG"
alias la="ls -A -laG"
alias l="ls -CF -G"
export LSCOLORS=exfxcxdxbxegedabagacad
	;;
linux*)
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
	;;
*)
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
esac

# dfにメモリ表示
alias df='df -h'

# Ctrl + S で固まるのを修正
stty stop undef

# vimとviを同じ動きにする
alias vi='vim'
# bind key emacs
bindkey -e

# VSCode
# Ubuntuでやる場合これしないと表示がおかしくなる
#alias code="code --disable-gpu"

# コマンド履歴ファイル
HISTFILE=~/.zsh_history
# 残すコマンド履歴数
export SAVEHIST=1000
export HISTSIZE=1000
# 重複を記録しない
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# 同時に起動したzshの間でヒストリを共有する
setopt share_history
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

export TMOUT=0

# GO
export GOPATH=$(go env GOPATH)
export PATH=$PATH:$GOPATH:bin

# cool-peco
function peco_select_from_git_status(){
	git status --porcelain | \
	peco |
	awk -F ' ' '{print $NF}' | \
	tr 'n' ' '
}

function peco_insert_selected_git_files(){
	LBUFFER+=$(peco_select_from_git_status)
	CURSOR= $#LBUFFER
	zle reset-prompt
}

#source "$HOME/cool-peco/cool-peco"
zle -N cool-peco-history
bindkey '^r' cool-peco-history
zle -N cool-peco-filename-search
bindkey '^g' cool-peco-filename-search
zle -N cool-peco-git-log
bindkey '^l' cool-peco-git-log
zle -N cool-peco-git-checkout
bindkey '^o' cool-peco-git-checkout
zle -N cool-peco-openfile-vim
bindkey '^v' cool-peco-openfile-vim
zle -N cool-peco-ssh
bindkey '^h' cool-peco-ssh

#zle -N peco_insert_selected_git_files
#bindkey "^a" peco_insert_selected_git_files

zle -N peco_select_from_git_status
bindkey "^t" peco_select_from_git_status



# 色リスト
# 文字色
#30	Black
#31	Red
#32	Green
#33	Yellow
#34	Blue
#35	Magenta
#36	Cyan
#37	White
