execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
set list lcs=tab:\|\ 

"Ale setup"
""let g:ale_fixers = {
""\   'javascript': ['prettier', 'eslint'],
""\   'css': [],
""\   'html': ['prettier']
""\}

call ale#linter#Define('javascript', {
\   'name': 'eslint',
\   'output_stream': 'both',
\   'executable_callback': 'ale#handlers#eslint#GetExecutable',
\   'command_callback': 'ale#handlers#eslint#GetCommand',
\   'callback': 'ale#handlers#eslint#Handle',
\})
"End Ale setup"
