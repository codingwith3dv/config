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
  Plug 'leafOfTree/vim-svelte-plugin'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()

colorscheme codedark

syntax enable
filetype plugin indent on
set updatetime=300

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true
  },
}
EOF
