let $AMIX_VIMRC_BASIC_FILE=expand("~/.amix_vimrc_basic.vim")
if filereadable($AMIX_VIMRC_BASIC_FILE)
    source $AMIX_VIMRC_BASIC_FILE
endif

set background=dark
set mouse=a

set shiftwidth=2
set tabstop=2
set expandtab
set scrolloff=10

" nnoremap <SPACE> <Nop>
" let mapleader=" "
map <SPACE> <Leader>
noremap <leader>s :w<CR>
noremap <leader>q :q<CR>
map <C-v> :p<CR>
nnoremap <C-g> <c-v>
inoremap ;; <Esc>

