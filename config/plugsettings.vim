""" Kite python autocompletion """"

let g:kite_tab_complete=1

set completeopt+=menuone   " show the popup menu even when there is only 1 match

set completeopt+=preview

"automatically close preview window"
autocmd CompleteDone * if !pumvisible() | pclose | endif 

let g:kite_documentation_continual=1

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line


""" Virtualenv """
let g:virtualenv_auto_activate = 1



""" Python highlight """
let g:python_highlight_all = 1
let g:Python3Syntax=1



""" Ultisnips """

let g:go_snippet_engine = "ultisnips"
let g:UltiSnipsExpandTrigger="<tab>"



""" jedi-vim """

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"



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




""" Neopairs """
"let g:neopairs#enable = 1




""" Dash """

" Open doc for a word under cursor
inoremap <F10> <Esc>:Dash <CR> i
nnoremap <F10> :Dash <CR>



""" Auto save """

"NOTE: turned off because conflicting with gofmt on save

"let g:auto_save = 1
"let g:auto_save_silent = 1 
"let g:auto_save_no_updatetime = 1



""" NerdTree ""

" autostart and put cursor in working window
" NOTE: Currently turned of because of plugin conflicr (git branch name not showed in status/ariline)
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd VimEnter * nested :NERDTree

" Toggle Tree
nnoremap <silent> <F6> :NERDTreeToggle<CR>

" Tree settings
let g:NERDTreeWinSize=25
let g:NERDTreeShowHidden=0
let g:NERDTreeMapOpenRecursively=1
let g:NERDTreeWinPos="left"




"" Tagbar """

" autostart
let g:tagbar_autoshowtag = 1
autocmd VimEnter * nested :TagbarOpen

" Toggle tagbar
nnoremap <silent> <F5> :TagbarToggle<CR>

" Tagbar settings
let g:tagbar_width = 30
let g:tagbar_left = 1
let g:tagbar_autoshowtag = 1




" Emmet"
let g:user_emmet_leader_key='-'





""" Deoplete """

" Autostart
"let g:deoplete#enable_at_startup = 1

" Close popup and fill candidate with Enter
"inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"
  
"call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])

"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"let g:python3_host_prog = '/Users/martin/Library/Mobile Documents/com~apple~CloudDocs/repos/python/neovim/bin/python3'