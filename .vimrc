" initially created by Ayekat in 2010-01
" further adjusted by Michael

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" ------------------------------------------------------------------------------
"  NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=50

" ------------------------------------------------------------------------------
" LOOK'N'FEEL

syntax on                " Hightlight the code appropriately
set number               " I wanna see what line I'm currently on
set numberwidth=4        " I wanna write 999 lines of code!!!
set title                " I wanna know what file I'm mistreating
set ruler                " I wanna see current information about cursor position
set encoding=utf8        " I wanna see Umlauts

set tabstop=22           " Four Spaces are just perfect...
au FileType tex set tabstop=2     " ... except in LaTeX
set expandtab            " set spaces
set autoindent           " I don't want to indent on every line manually
set copyindent           " I want the same amount of spaces/tabs on each line
set linebreak            " Lines should be broken at the end of words

color nord
colorscheme nord
set background=dark
let g:airline_theme='deus'

" ------------------------------------------------------------------------------
" CONTROLLING

set showmatch            " I wanna know when I'm typing some wrong braces
set showcmd              " I wanna see the command I'm typing

set hlsearch             " I wanna see every matching search pattern
set incsearch            " ... and I want to see them immediately as I'm typing
set ignorecase           " Ignore case...
set smartcase            " ... except majuscule in search term

set nrformats+=alpha     " Letters can also be manipulated with Ctrl-X/Ctrl-A

" ------------------------------------------------------------------------------
"  KEYMAPPING

" For long, wrapped lines the 'j' and 'k' buttons are a bit irritating. They
" ignore the visual next/former line, causing the cursor to jump several lines
" at once. To get to the next visual line, the 'gj' and 'gk' buttons exist.
" As they behave like 'g' and 'k' if there is no visual line, I wanna map that:
map k gk
map j gj
map <Up> gk
map <Down> gj
imap <Up> <Esc>gka
imap <Down> <Esc>gja

