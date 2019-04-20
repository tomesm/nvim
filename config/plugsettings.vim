" Autocompletion 

let g:deoplete#enable_at_startup = 1
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0

call deoplete#custom#option('ignore_case', v:true)

" Deoplete for go"
call deoplete#custom#option('omni_patterns', { 'go': '[^. *\t]\.\w*' })

" Popup menu colors"
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"
  
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function() abort
""  return deoplete#close_popup() . "\<CR>"
"endfunction



"Dash - show documetnation"
inoremap <F10> <Esc>:Dash <CR> i
nnoremap <F10> :Dash <CR>

" NerdTree"

" autostart and put cursot in working window
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
"autocmd VimEnter * nested :NERDTree

nnoremap <silent> <F6> :NERDTreeToggle<CR>

let g:NERDTreeWinSize=25
let g:NERDTreeShowHidden=0
let g:NERDTreeMapOpenRecursively=1
let g:NERDTreeWinPos="right"

"" Tagbar

let g:tagbar_autoshowtag = 1

nnoremap <silent> <F5> :TagbarToggle<CR>

let g:tagbar_width = 30

let g:tagbar_left = 1
let g:tagbar_autoshowtag = 1

autocmd VimEnter * nested :TagbarOpen

" Emmet"
let g:user_emmet_leader_key=','

" intelligent comments

set comments=sl:/*,mb:\ *,elx:\ */

" Highlight trailing spaces
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" we also want to get rid of accidental trailing whitespace on save

autocmd BufWritePre * :%s/\s\+$//e

" highlight the last column

highlight ColorColumn ctermbg=darkgray

" matching braces
inoremap {<CR> {<CR>}<C-o>O