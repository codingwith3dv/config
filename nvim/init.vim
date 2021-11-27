set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
set wrap!

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'preservim/nerdtree'
  Plug 'tomasiser/vim-code-dark'
  Plug 'rust-lang/rust.vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

colorscheme codedark

syntax enable
filetype plugin indent on
set updatetime=300

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
