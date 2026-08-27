" General
set nocompatible
syntax on
filetype plugin indent on

set encoding=utf-8

" UI
set termguicolors
set number
set relativenumber

set showcmd
set showmode

set ruler
set laststatus=2
set title

" Tabs & Identation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set autoindent
set smartindent

" Searching
set ignorecase
set smartcase

" Scrolling
set mouse=a
set scrolloff=8
set sidescrolloff=8

" Splits
set splitbelow
set splitright

" Better Completion
set wildmenu
set wildmode=longest:full,full

" Faster Updates
set updatetime=300

" Vim Plugin Manager (vim-plug)
call plug#begin()

" List of plugins
Plug 'tpope/vim-sensible' " Sensible
Plug 'https://github.com/typescript-language-server/typescript-language-server.git' " TypeScript LSP
Plug 'https://github.com/prettier/vim-prettier.git' " Prettier
Plug 'https://github.com/swiftlang/sourcekit-lsp.git' " Swiftlang Sourcekit LSP
Plug 'https://github.com/python-lsp/python-lsp-server.git' " Python LSP
Plug 'https://github.com/junegunn/fzf.vim.git' " fzf

call plug#end()
