" PLUGIN MANAGER SETTIGS( vim-plug)

filetype on
filetype plugin on

call plug#begin('~/.config/nvim/plugged')

Plug 'AndrewRadev/splitjoin.vim'

Plug 'rizzatti/dash.vim'

Plug 'wakatime/vim-wakatime'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'deoplete-plugins/deoplete-jedi' " Python intellisense

Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neopairs.vim'

Plug 'SirVer/ultisnips'

Plug 'vim-scripts/vim-auto-save'

Plug 'majutsushi/tagbar'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'tpope/vim-fugitive' " GIT support
Plug 'airblade/vim-gitgutter' " Git marking

Plug 'flazz/vim-colorschemes'
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'

Plug 'ctrlpvim/ctrlp.vim'

" Golang
Plug 'fatih/vim-go', { 'branch': 'master' } 
Plug 'jodosha/vim-godebug'

Plug 'vim-syntastic/syntastic'

Plug 'mattn/emmet-vim'

Plug 'ryanoasis/vim-devicons'

" Find and replace"
Plug 'brooth/far.vim'

Plug 'ekalinin/Dockerfile.vim'

" Add plugins to &runtimepath
call plug#end()