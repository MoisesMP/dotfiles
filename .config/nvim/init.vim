" Config

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

" Plugins
so ~/.config/nvim/plugins.vim

so ~/.config/nvim/plugin-config.vim
so ~/.config/nvim/maps.vim

" Theme
colorscheme catppuccin


" -- lua << EOF
" local catppuccin = require("catppuccin")

" -- configure it
" catppuccin.setup(<settings>)
" EOF
