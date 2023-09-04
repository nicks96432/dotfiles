call plug#begin('~/.vim/plugged')

Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let ayucolor="mirage"
colorscheme ayu
highlight Normal guibg=NONE ctermbg=NONE

filetype plugin indent on

set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set cmdheight=2
set complete-=i
set encoding=UTF-8
set expandtab
set formatoptions=qrn1
set hidden
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set laststatus=2
set lazyredraw
set nobackup
set nocompatible
set nocursorcolumn
set nocursorline
set noerrorbells
set nofoldenable
set norelativenumber
set noshowmode
set noswapfile
set notimeout
set nowrap
set nowritebackup
set nrformats-=octal
set number
set ruler
set shiftround
set shiftwidth=4
set shortmess+=c
set showcmd
set showmatch
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set tabstop=4
set termguicolors
set textwidth=80
set ttimeout
set ttimeoutlen=10
set ttyfast
set updatetime=300

if has('mouse')
    set mouse=a
endif

" coc.nvim configuration
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
