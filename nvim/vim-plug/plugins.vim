call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Better Comments
    Plug 'tpope/vim-commentary'
    " Surround
    Plug 'tpope/vim-surround'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " Status Line
    Plug 'vim-airline/vim-airline' 
    " Themes
    Plug 'joshdick/onedark.vim'
    " Themes
    Plug 'pangloss/vim-javascript'
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
    "If markdown preview not working ---
    "Firstly, type :mess in vim, if you get some errors about node.js , then you
    "probably not install the plugin correctly. You can install yarn for your os
    "and cd ~/.vim/bundle/markdown-preview.nvim/app && yarn.
    "Show n of m results in search
    Plug 'google/vim-searchindex'
call plug#end()
