" Python settings"
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql

set colorcolumn=80
highlight ColorColumn ctermbg=darkgray   

"set completeopt-=preview

""" Neoformat """

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1



""" Neomake """

let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

""" Semshi syntax highlight """

let g:semshi#simplify_markup = 0

" Do not highlight for all occurances of variable under cursor
let g:semshi#mark_selected_nodes=0

" Do not show error sign since neomake is specicialized for that
let g:semshi#error_sign=v:false


""" Ultisnips """

let g:go_snippet_engine = "ultisnips"
let g:UltiSnipsExpandTrigger="<tab>"



""" jedi-vim """

" disable autocompletion, cause we use deoplete or kite for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"

let g:jedi#auto_vim_configuration = 1
"let g:jedi#show_call_signatures = 2


""" Virtualenv """
"let g:virtualenv_auto_activate = 1

"Highlighter syntax
let g:python_highlight_all = 1
