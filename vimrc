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
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

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
