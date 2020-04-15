if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd!
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

"File Search:
set rtp+=/usr/local/opt/fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"File Browser:
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'mkitt/tabline.vim'

"Appearance:
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'


"Golang:
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Python:
Plug 'davidhalter/jedi-vim' " Static analysis / function jump
Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
Plug 'jmcantrell/vim-virtualenv'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Plug 'KeitaNakamura/highlighter.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'sheerun/vim-polyglot'
"Plug 'vim-python/python-syntax'

" Devops"
Plug 'chase/vim-ansible-yaml'
Plug 'ekalinin/Dockerfile.vim'

"Autocomplete:
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-go'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

"Snippets:
Plug 'ncm2/ncm2-ultisnips'
Plug 'SirVer/ultisnips'

"Git:
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' " Git marking

"Documentation
Plug 'rizzatti/dash.vim'

" Monitoring and statistics
Plug 'wakatime/vim-wakatime'

"Automatic brackets
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" HTML/web 
Plug 'mattn/emmet-vim'

"Autosave
Plug 'vim-scripts/vim-auto-save'


call plug#end()

"COPY/PASTE:
"-----------
"Increases the memory limit from 50 lines to 1000 lines
:set viminfo='100,<1000,s10,h

"NUMBERING:
"----------
:set number

"INDENTATION:
"------------
"Highlights code for multiple indents without reselecting
vnoremap < <gv
vnoremap > >gv

"COLOR:
"------
colorscheme gruvbox

"AUTOCOMPLETE:
"-------------
augroup ncm2
  au!
  autocmd BufEnter * call ncm2#enable_for_buffer()
  set completeopt=noinsert,menuone
  au User Ncm2PopupOpen set completeopt=noinsert,menuone
  au User Ncm2PopupClose set completeopt=menuone
augroup END

"Press Enter to select item in autocomplete popup

inoremap <silent> <expr> <CR> (pumvisible() ? ncm2_ultisnips#expand_or("\<CR>") : "\<CR>")

"Cycle through completion entries with tab/shift+tab

inoremap <expr> <TAB> pumvisible() ? "\<c-n>" : "\<TAB>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<TAB>"

"Allow getting out of pop with Down/Up arrow keys

inoremap <expr> <down> pumvisible() ? "\<C-E>" : "\<down>"
inoremap <expr> <up> pumvisible() ? "\<C-E>" : "\<up>"

" Autmatically select and expand first candidate
" set completeopt=noinsert,menuone

"SNIPPETS:
"---------
"Change default expand since TAB is used to cycle options

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"FILE SEARCH:
"------------

set rtp+=/usr/local/opt/fzf

"allows FZF to open by pressing CTRL-F

map <C-f> :FZF<CR>

"allow FZF to search hidden 'dot' files

let FZF_DEFAULT_COMMAND='ag --hidden""'

"FILE BROWSER:
"-------------
" Nerdtree autostart
autocmd VimEnter * NERDTree | wincmd p

"allows NERDTree to open/close by typing 'n' then 't'

map nt :NERDTreeTabsToggle<CR>

"Start NERDtree when dir is selected (e.g. "vim .") and start NERDTreeTabs

let g:nerdtree_tabs_open_on_console_startup=2

"Add a close button in the upper right for tabs

let g:tablineclosebutton=1

"Automatically find and select currently opened file in NERDTree

let g:nerdtree_tabs_autofind=1

"Add folder icon to directories

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

"Hide expand/collapse arrows

let g:NERDTreeDirArrowExpandable = "\u00a0"
let g:NERDTreeDirArrowCollapsible = "\u00a0"
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
highlight! link NERDTreeFlags NERDTreeDir

"SHORTCUTS:
"----------
"Open file at same line last closed
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif

"SOURCING:
"---------
"Automatically reloads neovim configuration file on write (w)

autocmd! bufwritepost init.vim source %

"MOUSE:
"------
"Allow using mouse helpful for switching/resizing windows

set mouse+=a
if &term =~ '^screen'
  " tmux knows the extended mouse mode
  set ttymouse=xterm2
endif

"TEXT SEARCH:
"------------
"Makes Search Case Insensitive

set ignorecase

"SWAP:
"-----
"set dir=~/.local/share/nvim/swap/
set noswapfile " Don't use swapfile

"GIT (FUGITIVE):
"---------------
map fgb :Gblame<CR>
map fgs :Gstatus<CR>
map fgl :Glog<CR>
map fgd :Gdiff<CR>
map fgc :Gcommit<CR>
map fga :Git add %:p<CR>

"SYNTAX HIGHLIGHTING:
"--------------------
syntax on
syntax enable

"HIGHLIGHTING:
"-------------
" <Ctrl-l> redraws the screen and removes any search highlighting.

nnoremap <silent> <C-l> :nohl<CR><C-l>



""" APPEARANCE

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

" CursorLine.
" Highlight the current line the cursor is on

set cursorline
highlight CursorLine ctermfg=NONE ctermbg=23 cterm=NONE


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


""" Dash """

" Open doc for a word under cursor
inoremap <F10> <Esc>:Dash <CR> i
nnoremap <F10> :Dash <CR>

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
noremap <silent> <C-s>          :update<CR>
vnoremap <silent> <C-s>         <C-C>:update<CR>
inoremap <silent> <C-s>         <C-O>:update<CR><Esc>

" close
nnoremap <c-q> :q <CR><CR>
inoremap <c-q> <Esc>:wq <CR><CR>

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */


""" Auto save """

"NOTE: conflicting with gofmt on save

"let g:auto_save = 1
"let g:auto_save_silent = 0
"let g:auto_save_no_updatetime = 0

"" Tagbar """

" autostart
"let g:tagbar_autoshowtag = 1
"autocmd VimEnter * nested :TagbarOpen

" Toggle tagbar
nnoremap <silent> <F5> :TagbarToggle<CR>

" Tagbar settings
let g:tagbar_width = 30
let g:tagbar_left = 1
let g:tagbar_autoshowtag = 1

" Emmet"
"let g:user_emmet_leader_key='-'

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


""" Refactoring

" For local replace
nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>


" QUICK FIX NAvigation
" Open quickfix window vertically with width of 60"
nnoremap F *:grep! "\b<C-R><C-W>\b"<CR>:vertical cw 60<CR><CR>

" Quickfix navigation"
nnoremap <silent> <leader>] :cnext<CR>  
nnoremap <silent> <leader>[ :cprevious<CR>

" close quickfix"
nnoremap qw :ccl<CR>

"Open quick fix"
nmap <c-f> :cw<CR>

"Git Gutter
highlight GitGutterAdd     ctermfg=2 ctermbg=0
highlight GitGutterChange   ctermfg=3 ctermbg=0
highlight GitGutterDelete  ctermfg=1 ctermbg=0
