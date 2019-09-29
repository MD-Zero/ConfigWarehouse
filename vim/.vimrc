" .vimrc

" Tab stops
set tabstop=4
set shiftwidth=4
set expandtab

" Enable mouse support
set mouse=a

" Disable word wrap
set nowrap

" Define a right margin
set colorcolumn=80

" Set colorscheme
colorscheme ron

" Set line numbers
set number

" Display whitespace
set list
set listchars=tab:»·,trail:·

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Commit files helper
autocmd Filetype gitcommit setlocal spell textwidth=72
