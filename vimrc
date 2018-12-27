" ************ Needed for Vundle *********************
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"************** Font color ******************************
filetype on
syntax on
colorscheme Tomorrow-Night-Eighties

"************** Font Styling ****************************
set guifont=Menlo\ Regular:h18
set lines=35 columns=150
set colorcolumn=90
set number

"************* Automatic reload vimrc *******************
map <leader>s :source ~/.vimrc<CR>

"************ More memory and indentatin ****************
set hidden
set history=100

filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

"************ Remove whitespaces on save **************
autocmd BufWritePre * :%s/\s\+$//e

"************ Go to tab by number ********************
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"************ Augment search **************************
set hlsearch

"*********** Re-Open Previously Opened File **********
nnoremap <Leader><Leader> :e#<CR>

"************ Matching Parenthesis *******************
set showmatch

"************ Nerdtree changes ************************
let NERDTreeMapActivateNode=')' ") open folder
let NERDTreeShowHidden=1
nmap <leader>n :NERDTreeToggle<CR> "\n toggle
nmap <leader>j :NERDTreeFind<CR>  "leader j show in directory
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
