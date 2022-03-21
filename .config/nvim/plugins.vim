" Plugins

call plug#begin('~/.config/nvim/plugged')
"
" Add Plugins
"

" Syntax
    Plug 'sheerun/vim-polyglot'

" Status Bar
    Plug 'maximbaz/lightline-ale'
    Plug 'itchyny/lightline.vim'

" Tabs
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    
"Catppuccin Plugin
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" Tree
    Plug 'scrooloose/nerdtree'

" Typing
    Plug 'chun-yang/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'tpope/vim-surround'

" Tmux 
    Plug 'benmills/vimux'
    Plug 'christoomey/vim-tmux-navigator'

" Autocomplete
    Plug 'sirver/ultisnips'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Test
    Plug 'tyewang/vimux-jest-test'
    Plug 'janko-m/vim-test'

" IDE
    Plug 'editorconfig/editorconfig-vim'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'easymotion/vim-easymotion'
    Plug 'mhinz/vim-signify'
    Plug 'yggdroot/indentline'
    Plug 'scrooloose/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'


call plug#end()
