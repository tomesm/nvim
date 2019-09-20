" PLUGIN MANAGER SETTIGS( vim-plug)

filetype on
filetype plugin on

call plug#begin('~/.config/nvim/plugged')

" Utils

"Plug 'AndrewRadev/splitjoin.vim'
Plug 'rizzatti/dash.vim'
Plug 'wakatime/vim-wakatime'
"Plug 'vim-scripts/vim-auto-save'
Plug 'mattn/emmet-vim'


" Autocompletion

Plug 'jiangmiao/auto-pairs'
"Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
"Plug 'deoplete-plugins/deoplete-jedi' " Python intellisense
"Plug 'zchee/deoplete-jedi'
"Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/neopairs.vim'
"Plug 'Shougo/echodoc.vim'


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
Plug 'hdima/python-syntax'
Plug 'jmcantrell/vim-virtualenv'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}


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