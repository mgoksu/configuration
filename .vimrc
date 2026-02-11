let mapleader = " "
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set relativenumber
set hlsearch
set ruler
highlight Comment ctermfg=green

execute pathogen#infect()

call pathogen#infect()
syntax on
filetype plugin indent on


" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Reveal current file in NERDTree
nnoremap <leader>f :NERDTreeFind<CR>

" Show hidden files by default
let NERDTreeShowHidden=1


" Minimal UI
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
