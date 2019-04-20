""" Deoplete + Autocompletion """

" Autostart
let g:deoplete#enable_at_startup = 1

"Deoplete settings
call deoplete#custom#option('ignore_case', v:true)
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' }) " Golang specific pattern

" Popup menu colors
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

" Close popup and fill candidate with Enter
inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"
  



""" Ultisnips """

let g:go_snippet_engine = "ultisnips"
let g:UltiSnipsExpandTrigger="<tab>"




""" Dash """

" Open doc for a word under cursor
inoremap <F10> <Esc>:Dash <CR> i
nnoremap <F10> :Dash <CR>




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
let g:tagbar_width = 30
let g:tagbar_left = 1
let g:tagbar_autoshowtag = 1




" Emmet"
let g:user_emmet_leader_key=','