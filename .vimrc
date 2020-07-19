map <Space> <Leader>

call plug#begin()

" Code commenting plugin:
Plug 'preservim/nerdcommenter'

" Autocompletion:
Plug 'valloric/youcompleteme'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" Go: useful go functions while programming Golang projects
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_fmt_command = 'goimports'
let g:go_rename_command = 'gopls'
autocmd FileType go set foldmethod=syntax foldlevel=20

" Airliner: highlights the nvim state that i'm in
Plug 'vim-airline/vim-airline'
" Fuzzy Finder: filesystem searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Completer: helps jump to definitions and autocomplete while programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin on
