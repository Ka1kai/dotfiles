let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^='
     \ .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('davidhalter/jedi-vim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tomasr/molokai')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
 call dein#install()
endif

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><C-n>b :Bookmark<CR>
nnoremap <silent><C-n>d :ClearBookmarks<CR>
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize="24"
let g:NERDTreeShowBookmarks=1
let g:NERDTreeIgnore=['\.vim$','\.meta$']
let g:NERDTreeShowHidden=1

" airline
set laststatus=2
set showtabline=2 " 常にタブラインを表示
set t_Co=256 " この設定がないと色が正しく表示されない
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='papercolor' "落ち着いた色調が好き


" key
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap J <C-D>
nnoremap K <C-U>
nnoremap H ^
nnoremap L $
nnoremap A I
nnoremap F A

" tab pain
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sr <C-w>x
nnoremap sn gt
nnoremap sb gT
nnoremap st :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap -L <C-w>><CR>

" esc
inoremap jj <Esc>
inoremap kk <Esc>
nnoremap <Esc><Esc> :nohl<CR>

" exmode
nnoremap Q <Noq>

" no title
set notitle
set shortmess+=I
set laststatus=2
set cursorline

" command
set showcmd
set list
set listchars=trail:~
set listchars=tab:>-,extends:>,precedes:<,nbsp:%
set backspace=indent,eol,start
set noswapfile
set nobackup
set nomodeline
set hidden
set autoread
" check save
set confirm
" number
set number
set smartindent
" scroll
set scrolloff=8
set sidescrolloff=16
" tab
set tabstop=4
set softtabstop=4
set iminsert=0
set ruler

" text
set textwidth=0
set formatoptions=q

" clipboard
set clipboard+=unnamed,autoselect
set ttyfast

" search
set hlsearch
set incsearch
set ignorecase
set wrapscan
set gdefault
set smartcase
set wildmenu
set wildchar=<tab>
set history=1000
set complete+=k
set wildmode=list

" japanease
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set guifont=Consolas:h12

" color scheme
syntax on
let g:molokai_original = 1
colorscheme molokai
set t_Co=256

" background
highlight CursorLine cterm=underline
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 
