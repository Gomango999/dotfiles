" Essentials
syntax on
set autoindent 
set tabstop=4
set shiftwidth=4
set showmatch
set ignorecase
set smartcase
set incsearch  
set hlsearch
set clipboard^=unnamed,unnamedplus " clipboard
set mouse=a

" Disable commands
map <F1> <nop>
map q <nop>

" Leader
let mapleader = ";"
let g:mapleader = ";"

" Shortcuts
" faster saving and closing
nnoremap <leader>w :w<cr>
inoremap <leader>w <esc>:w<cr>
nnoremap <leader>q :q<cr>
" better deletion and cutting
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
nnoremap y "*y
vnoremap y "*y
nnoremap p "*p
nnoremap <leader>d "*d 
nnoremap <leader>dd "*dd
nnoremap <leader>D "*D
vnoremap <leader>d "*d
" tabs
nnoremap <s-tab> <<
nnoremap <tab> >>
inoremap <s-tab> <c-d>
" remove highlighting
nnoremap <esc><esc> :noh <cr>

" Navigation
set whichwrap+=<,>,h,l[,]		" makes pressing h/l at the end of the line go to next visual line
set backspace=indent,eol,start 	" allows backspacing over tab/eol/start
set virtualedit+=onemore 		" make going to end go one more onto the new line
nnoremap H 12h
nnoremap L 12l
nnoremap K 5j
nnoremap J 5k

"  Plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'arcticicestudio/nord-vim'
call plug#end() 

" Theme
colorscheme nord

" Light Line
set laststatus=2
set noshowmode
set ttimeoutlen=0
let g:lightline = {'colorscheme': 'nord',}

" Nerd Tree
nnoremap <leader>t :NERDTreeToggle<Enter>
let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let g:NERDTreeMouseMode = 3 

" Nerd Commenter
let g:NERDSpaceDelims = 1 
" see ~/.vim/after/ftplugin.vim for disabling add comment on new line
