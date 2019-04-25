""" Deoplete + Autocompletion """

" Autostart
let g:deoplete#enable_at_startup = 1

" Close popup and fill candidate with Enter
inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"
  
call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])


""" Ultisnips """

let g:go_snippet_engine = "ultisnips"
let g:UltiSnipsExpandTrigger="<tab>"




""" Neopairs """
let g:neopairs#enable = 1




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
let g:NERDTreeWinPos="right"




"" Tagbar """

" autostart
let g:tagbar_autoshowtag = 1
autocmd VimEnter * nested :TagbarOpen

" Toggle tagbar
nnoremap <silent> <F5> :TagbarToggle<CR>

" Tagbar settings
let g:tagbar_width = 40
let g:tagbar_left = 1
let g:tagbar_autoshowtag = 1




" Emmet"
let g:user_emmet_leader_key='-'