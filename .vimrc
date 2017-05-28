" Enable syntax highlighting
syntax on
autocmd BufNewFile,BufRead *.md setf markdown

" Enable search highlighting
set hlsearch

" Use desert as default color scheme
color desert

" Display line numbers on the left
set number
set relativenumber

" Status bar
set ruler

" Indent with 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set autoindent

" Folding
set foldcolumn=1
set foldmethod=manual
augroup AutoSaveFolds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent loadview
    autocmd BufWinEnter * normal zR
augroup END

" File Templates
augroup templates
    autocmd BufNewFile *.asm 0r ~/.vim/templates/skeleton.asm
augroup END
