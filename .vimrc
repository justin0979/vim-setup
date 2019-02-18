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

"Syntastic setup"
"let g:syntastic_mode_map = { 'mode': 'active',"
"                            \ 'active_filetypes': ['python', 'javascript'],"
"                            \ 'passive_filetypes': [] }"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
""let g:syntastic_javascript_checkers=['eslint']""
"let g:syntastic_javascript_eslint_exe='npm run lint --'"
"End Syntastic setup"

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


"Prettier setup"
let g:prettier#autoformat=0
"End Prettier setup"

