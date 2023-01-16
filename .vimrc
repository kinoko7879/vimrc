" Copy from my pc 2023-01-17
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'tpope/vim-vinegar'
Plug 'morhetz/gruvbox'
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
call plug#end()
set showcmd
set t_Co=256
set nu
set ai

set expandtab
set tabstop=4
set shiftwidth=4
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
inoremap ;; <ESC>

colorscheme gruvbox
syntax on
set hlsearch
set history=200
set ruler
syntax on
set noswapfile
set noundofile
set nobackup
set cursorline
set nowritebackup
set ignorecase

set shortmess+=c
set encoding=utf-8
set updatetime=100
set signcolumn=yes
set nocompatible
filetype plugin on

map <F2> :FloatermToggle<CR>

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'
" coc settings
" make coc accept tab to autocomplete
inoremap <silent><expr> <TAB>
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ CheckBackspace() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1): "\<C-h>"
" make coc accept CR to confirm selected coc item
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<C-r>=coc#on_enter()\<CR>"
function! CheckBackspace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <C-space> to trigger completion
inoremap <silent><expr> <c-o> coc#refresh()

" Use [g and ]g to navigate diagnostics
" Use :CocDiagnostics to get all diagnostics of current buffer in location lis
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" coc plugings
let g:coc_global_extensions =[
            \ 'coc-json', 
            \'coc-vimlsp',
            \'coc-marketplace']

