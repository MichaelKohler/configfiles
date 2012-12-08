" .vimrc file
" created by Ayekat in 2010-01
" source: http://www.vi-improved.org/vimrc.php
"         http://www.apaulodesign.com/vimrc.html
"         http://phd.pp.ru/Software/dotfiles/vimrc.html


" ------------------------------------------------------------------------------
" LOOK'N'FEEL

syntax on                " Hightlight the code appropriately
set number               " I wanna see what line I'm currently on
set numberwidth=4        " I wanna write 999 lines of code!!!
set title                " I wanna know what file I'm mistreating
set ruler                " I wanna see current information about cursor position
set encoding=utf8        " I wanna see Umlauts

" While programming, I wanna stay inside the 80 columns
au FileType c,cpp,java,sh,asm highlight OverLength ctermbg=red ctermfg=white
au FileType c,cpp,java,sh,asm match OverLength /\%81v.\+/
"au FileType php highlight OverLength ctermbg=red ctermfg=white
"au FileType php match OverLength /\%81v.\+/

set tabstop=22           " Four Spaces are just perfect...
au FileType tex set tabstop=2     " ... except in LaTeX
set expandtab            " set spaces
set autoindent           " I don't want to indent on every line manually
set copyindent           " I want the same amount of spaces/tabs on each line
set linebreak            " Lines should be broken at the end of words


" ------------------------------------------------------------------------------
" CONTROLLING

set showmatch            " I wanna know when I'm typing some wrong braces
set showcmd              " I wanna see the command I'm typing

set hlsearch             " I wanna see every matching search pattern
set incsearch            " ... and I want to see them immediately as I'm typing
set ignorecase           " Ignore case...
set smartcase            " ... except majuscule in search term

set nrformats+=alpha     " Letters can also be manipulated with Ctrl-X/Ctrl-A

" Auto completion (don't seem to work, but nevertheless posted)
au FileType c set omnifunc=ccomplete#Complete
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType python set omnifunc=pythoncomplete#Complete
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType php set omnifunc=phpcomplete#CompletePHP

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
