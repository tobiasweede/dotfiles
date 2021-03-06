"" Python specific VIM settings
set ts=4 sw=4 sta et sts=4 ai
"set tw=78 "no more automatic line breaks

" More syntax highlighting.
let python_highlight_all = 1

" Highlight column 80 for PEP-8
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" set proper indentation for comments
inoremap # X<c-h>#<space>

highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" Map execution of actual file
map <F5> :! clear & python % &
map <F6> :! clear & python3 % &

" set python mode to python3 for python-mode
let g:pymode_python = 'python3'
     
