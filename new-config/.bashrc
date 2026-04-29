
# Wをwにすることでファイルのフルパスをプロンプトに表示できる
# default プロンプト設定
#export PS1='\[\033[36m\][\h\[\033[32m\]:\w\n\$\[\033[00m\] '

if [ -f ~/.git-completion.sh ]; then
  source ~/.git-prompt.sh
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-completion.sh
fi

#GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\033[36m\]takuya.kawashita\[\033[32m\]:\w\[\033[35m\] $(__git_ps1 [%s])\[\033[00m\]'$'\n\$ '
# GGtk-WARNING **: cannot open display
unset SSH_ASKPASS

# grep に色をつける
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls系コマンド
# macとlinuxで挙動が違う
alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# dfにメモリ表示
alias df='df -h'

# Ctrl + S で固まるのを修正
stty stop undef

# vimとviを同じ動きにする
alias vi='vim'

# VSCode
# Ubuntuでやる場合これしないと表示がおかしくなる
#alias code="code --disable-gpu"

# コマンド履歴をどれだけ残すか
export HISTSIZE=10000
export TMOUT=0

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

eval "$(ssh-agent)"
ssh-add ~/.ssh/id_rsa
