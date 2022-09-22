" Essentials
set number relativenumber
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
" find and replace
nnoremap <leader>s :s//g<left><left>
nnoremap <leader><s-s> :%s//g<left><left>
vnoremap <leader>s :s//g<left><left>
" tabs
nnoremap <s-tab> <<
nnoremap <tab> >>
inoremap <s-tab> <c-d>
" remove highlighting
nnoremap <esc><esc> :noh <cr>
" re-source vimrc
nnoremap <s-r> :so ~/.vimrc<cr>:noh<cr>

" Navigation
set whichwrap+=<,>,h,l[,]		" makes pressing h/l at the end of the line go to next visual line
set backspace=indent,eol,start 	" allows backspacing over tab/eol/start
set virtualedit+=onemore 		" make going to end go one more onto the new line
nnoremap H 0
nnoremap L $
nnoremap K {
nnoremap J }

" Tab Navigation
noremap <leader>e<space> :tabedit 
noremap <leader><left> :tabprevious<cr>
noremap <leader><right> :tabnext<cr>
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 10gt

" Splits
set splitbelow
set splitright

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
