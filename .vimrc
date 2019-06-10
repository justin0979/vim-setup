execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme ron

set number
set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
set softtabstop=2
set list lcs=tab:\|\ 

" =================== Ale setup ===================
"
" let g:ale_fixers = {
" \   'javascript': ['prettier'],
" \   'css': [],
" \   'html': ['prettier']
" \}

call ale#linter#Define('javascript', {
\   'name': 'eslint',
\   'output_stream': 'both',
\   'executable_callback': 'ale#handlers#eslint#GetExecutable',
\   'command_callback': 'ale#handlers#eslint#GetCommand',
\   'callback': 'ale#handlers#eslint#Handle',
\})
"
" ============ End Ale setup ===================

" ============ vim-prettier setup =================
"
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

let g:prettier#config#print_width = 90

let g:prettier#config#bracket_spacing = 'true'

let g:prettier#config#trailing_comma = 'none'
"
" ============ End vim-prettier setup ===================

" ============ vim-airline setup =======================
"
let g:airline_section_b = '%{strftime("%c")}'

if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif

"
" ==================== End vim-airline setup ================
