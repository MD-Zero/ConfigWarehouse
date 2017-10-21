"
"             d8b
"             Y8P
"
"    888  888 888 88888b.d88b.  888d888 .d8888b
"    888  888 888 888 "888 "88b 888P"  d88P"
"    Y88  88P 888 888  888  888 888    888
" d8b Y8bd8P  888 888  888  888 888    Y88b.
" Y8P  Y88P   888 888  888  888 888     "Y8888P
"

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
