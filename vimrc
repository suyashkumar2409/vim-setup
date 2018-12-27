execute pathogen#infect()

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

"************ Augment search **************************
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"*********** Re-Open Previously Opened File **********
nnoremap <Leader><Leader> :e#<CR>

"************ Matching Parenthesis *******************
set showmatch
