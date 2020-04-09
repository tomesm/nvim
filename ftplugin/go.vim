" Go settings"

setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal smarttab
setlocal formatoptions=croql

set colorcolumn=100
highlight ColorColumn ctermbg=darkgray   

" Go mappings"

nmap <Leader>i <Plug>(go-info)
nmap <Leader>gd <Plug>(go-doc)
nmap <Leader>r <Plug>(go-run)
nmap <Leader>b <Plug>(go-build)
nmap <Leader>t <Plug>(go-test)
nmap gd <Plug>(go-def-tab)

"" Completion

"let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'

let g:go_snippet_engine = "ultisnips"

" Syntastic"

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['golint']

let g:go_info_mode = 'gopls'
let g:go_auto_type_info = 1

let g:go_def_mode = 'gopls'
let g:go_def_mapping_enabled = 1

let g:go_gocode_propose_source=1
let g:go_gocode_unimported_packages = 1

set updatetime=100

" tell vim to allow you to copy between files, remember your cursor
" position and other little nice things like that

set viminfo='100,\"2500,:200,%,n~/.viminfo


" formatting

let g:go_fmt_command = "goimports"

"linter"
set rtp+=$GOPATH/src/golang.org/x/lint/misc/vim

" turn highlighting on

let g:go_highlight_functions = 1
let g:go_highlight_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_fields = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1


" build_go_files is a custom function that builds or compiles the test file.
" It calls :GoBuild if its a Go file, or :GoTestCompile if it's a test file

function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction


let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables:0:0',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }