set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
	NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

" �o���h��
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'bling/vim-airline'
" nerdtree
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'tomasr/molokai'
NeoBundle 'ujihisa/unite-colorscheme'

" ===== �\���ݒ� ======
" �g���Ă���Ă��肪�Ƃ�
set notitle
" :intro�̉�ʂ��o���Ȃ��悤�ɂ���
set shortmess+=I
" statusline����ɕ\��
set laststatus=2
" �J�[�\���s�̔w�i�F��ς���
set cursorline
" �R�}���h�X�e�[�^�X�s�ɕ\��
set showcmd
" �s��������\������
set list
" �s���̔��p�X�y�[�X,�^�u��\������
set listchars=trail:~
set listchars=tab:>-,extends:>,precedes:<,nbsp:%
" �o�b�N�X�y�[�X���g����悤�ɂ���
set backspace=indent,eol,start
" �X���b�v�t�@�C�������Ȃ�
set noswapfile
" �o�b�N�A�b�v�����Ȃ�
set nobackup
" ���[�h���C���𖳌��ɂ���
set nomodeline
" �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��ł��ʂ̃t�@�C�����J����
set hidden
" �O���Ńt�@�C���ɕύX�����ꂽ�ꍇ�͓ǂ݂Ȃ���
set autoread
" �ۑ�����Ă��Ȃ��t�@�C��������Ƃ��͏I���O�Ɋm�F����
set confirm
" �s����\������
set number
" �^�u�̐ݒ�
set tabstop=4
set softtabstop=4

" �J�[�\���̈ʒu��c��
set ruler

" �r���ŉ��s�����Ȃ��悤�ɂ���
set textwidth=0
set formatoptions=q

" �N���b�v�{�[�h��L���ɂ���
set clipboard=unnamed,autoselect
" �^�[�~�i���ڑ��������ɂ���
set ttyfast

" ===== �����̐ݒ� =====
" �����������n�C���C�g����
set hlsearch
" �C���N�������^���T�[�`
set incsearch
" �啶���Ə���������ʂ��Ȃ�
set ignorecase
" �Ō���܂Ō������I�����玟�̌����Ő擪�ɖ߂�
set wrapscan
" �u���̎�g�I�v�V�������f�t�H���g�ŗL���ɂ���
set gdefault
" �����ő啶�����������������͂��ꂽ���ʂ��Č���
set smartcase
" �G���R�[�f�B���O
set encoding=cp932
set fileencoding=cp932
set fileencodings=utf-8
set guifont=Consolas:h12:cSHIFTJIS

" ====== �F�̐ݒ� =====
syntax on
colorscheme molokai
set t_Co=256

" �V���[�g�J�b�g
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

noremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sn gt
nnoremap sb gT
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
" Unite�g�����ƂɂȂ����璲�ׂ�
"nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
"nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
inoremap jj <Esc>
" Esc�̓�񉟂��Ńn�C���C�g����
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" �C���T�[�g���[�h�𔲂���Ǝ����I��IME���I�t�ɂ���
" inoremap <silent> <unique> <Esc> <Esc>:set imsearch=0 iminsert=0<CR>

" �^�[�~�i���Ń}�E�X��L���ɂ���
if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif
