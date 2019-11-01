" NEO VIM  settings - customized for python
" Author: Martin Tomes


" PLUGIN MANAGER SETTIGS( vim-plug)


call plug#begin('~/.config/nvim/plugged')

" Utils

"Plug 'AndrewRadev/splitjoin.vim'
Plug 'rizzatti/dash.vim'
Plug 'wakatime/vim-wakatime'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
" Plug 'vim-scripts/vim-auto-save'
Plug 'mattn/emmet-vim'


""" Autocompletion """


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocompletion engine

" Python autocompletion"
Plug 'deoplete-plugins/deoplete-jedi' " Python intellisense 
Plug 'davidhalter/jedi-vim' " Static analysis / function jump
"Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'} " Golang autocompletion


" Git

Plug 'tpope/vim-fugitive' " GIT support
Plug 'airblade/vim-gitgutter' " Git marking

" Appearance

Plug 'flazz/vim-colorschemes'
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

"Plug 'vim-syntastic/syntastic'

"Navigation

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'

" Python


Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
Plug 'jmcantrell/vim-virtualenv'

"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

"Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }


" Golang

"Plug 'fatih/vim-go', { 'branch': 'master' } 
"Plug 'jodosha/vim-godebug'


" Find and replace"

Plug 'ctrlpvim/ctrlp.vim'
Plug 'brooth/far.vim'

" Devops"

Plug 'chase/vim-ansible-yaml'
Plug 'ekalinin/Dockerfile.vim'

" Add plugins to &runtimepath
call plug#end()



""" General Settings """

set nocompatible                " Enables us Vim specific features
filetype off                    " Reset filetype detection first ...
filetype plugin indent on       " ... and enable filetype detection
set ttyfast                     " Indicate fast terminal conn for faster redraw         
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set autoindent                  " Enable Autoindent
set backspace=indent,eol,start  " Makes backspace key more powerful.
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noerrorbells                " No beeps
set number                      " Show line numbers
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set splitright                  " Vertical windows should be split to right
set splitbelow                  " Horizontal windows should split to bottom
set autowrite                   " Automatically save before :next, :make etc.
set hidden                      " Buffer should still exist if window is closed
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set noshowmatch                 " Do not show matching brackets by flickering
set noshowmode                  " We show the mode with airline or lightline
set ignorecase                  " Search case insensitive...
"set smartcase                   " ... but not it begins with upper case
set completeopt=longest,noinsert    " Show popup menu, even if there is one entry
set pumheight=14                " Completion window max size
"set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
set lazyredraw                  " Wait to redraw
set t_Co=256
syntax on
set modifiable
"set infercase
set noexpandtab tabstop=4 shiftwidth=4
set cmdheight=2
set listchars=tab:\|\ ,trail:▫




""" APPEARANCE

syntax on
syntax enable

" Popup menu colors

"hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
"hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" airline color
let g:airline_theme='solarized'

" chosen syntax color
colorscheme solarized8_dark_low
let g:solarized_use16 = 1
" font size

set guifont=Monospace\ 16

set background=dark

" Popup menu colors
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE


set colorcolumn=80
highlight ColorColumn ctermbg=darkgray

" Thin cursor"
set guicursor=i:ver25-iCursor

let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"



""" CONTROLLS


imap kk <Esc>

nmap ; :
vmap ; :

let mapleader = ","

" Exit visual mode with CR"
vmap <CR> <Esc>

"Insert new line in normal mode"
nmap <CR> o<Esc>


" use selecting whole lines only
"nmap v V

" Go to end of line "
inoremap <C-]> <C-o>$
"inoremap <C-[> <C-o>0

""" Search

" Open quickfix window vertically with width of 60"
nnoremap F *:grep! "\b<C-R><C-W>\b"<CR>:vertical cw 60<CR><CR>

" Quickfix navigation"
nnoremap <silent> <leader>] :cnext<CR>  
nnoremap <silent> <leader>[ :cprevious<CR>

" close quickfix"
nnoremap qw :ccl<CR>

"Open quick fix"
nmap <c-f> :cw<CR>


" Turn off search highlights"
map <Esc> :noh<cr>


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"if executable('ag')
""  let g:ackprg = 'ag --vimgrep'
"endif



" COPY, PASTE, SAVE, CUT, UNDO

" " Copy to clipboard
"vnoremap  <c-y>  "+y
"nnoremap  <c-Y>  "+yg_
"nnoremap  <c-y>  "+y
"nnoremap  <c-yy> "+yy

" " Paste from clipboard
"nnoremap <c-v> "+p
"nnoremap <c-V> "+P
"noremap <c-V> "+p
"vnoremap <c-v> "+P

" Cursor move in insert mode with Alt-"
inoremap ˙ <C-o>h
inoremap ∆ <C-o>j
inoremap ˚ <C-o>k
inoremap ¬ <C-o>l

" Moving lines up/down"
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

"Map F12 to save in any mode
noremap <silent> <F12>          :update<CR>
vnoremap <silent> <F12>         <C-C>:update<CR>
inoremap <silent> <F12>         <C-O>:update<CR><Esc>

" close
nnoremap <c-q> :q <CR><CR>
inoremap <c-q> <Esc>:wq <CR><CR>

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





""" PLUGINS SETTINGS """

""" Kite python autocompletion """"

let g:kite_tab_complete=1

set completeopt+=menuone   " show the popup menu even when there is only 1 match

set completeopt+=preview

"automatically close preview window"
autocmd CompleteDone * if !pumvisible() | pclose | endif 

"let g:kite_documentation_continual=1

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line

"nmap <silent> <buffer> gK <Plug>(kite-docs)
"imap <silent> <buffer> gK <Plug>(kite-docs)


""" Virtualenv """
let g:virtualenv_auto_activate = 1



""" Semshi syntax highlight """


let g:semshi#simplify_markup = 0


""" Ultisnips """

let g:go_snippet_engine = "ultisnips"
let g:UltiSnipsExpandTrigger="<tab>"



""" jedi-vim """

" disable autocompletion, cause we use deoplete for completion
"let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
"let g:jedi#use_splits_not_buffers = "right"

"let g:jedi#auto_vim_configuration = 1
"let g:jedi#show_call_signatures = 2



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

"NOTE: conflicting with gofmt on save

"let g:auto_save = 1
"let g:auto_save_silent = 1
"let g:auto_save_no_updatetime = 0


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
"let g:user_emmet_leader_key='-'



""" Deoplete """

" Autostart
let g:deoplete#enable_at_startup = 1

" Close popup and fill candidate with Enter
inoremap <expr><CR> pumvisible()? "\<C-y>" : "\<CR>"
  
call deoplete#custom#source('_', 'converters', ['converter_auto_paren'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

let g:python3_host_prog = '/Users/martin/.config/nvim/env/bin/python3'


