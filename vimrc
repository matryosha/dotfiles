let $AMIX_VIMRC_BASIC_FILE=expand("~/.amix_vimrc_basic.vim")
if filereadable($AMIX_VIMRC_BASIC_FILE)
    source $AMIX_VIMRC_BASIC_FILE
endif

set mouse=a
set shiftwidth=2
set tabstop=2
set expandtab
set scrolloff=10
set visualbell
set cursorline
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undo-history

" nnoremap <SPACE> <Nop>
" let mapleader=" "
map <SPACE> <Leader>
noremap <leader>s :w<CR>
noremap <leader>q :q<CR>
map <C-v> :p<CR>
nnoremap <C-g> <c-v>
nnoremap <leader>e :Explore<CR>
inoremap ;; <Esc>

" When jumping to next/prev search keep in the middle
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste and keep pasted in buffer (whereas just pasting will change default buffer)
xnoremap <leader>p "_dP

nnoremap <leader>s :%s/\<<C-r><C-w>\>//g<Left><Left> 


" If no file provided opens Explore
augroup ProjectDrawer
    autocmd!
    autocmd VimEnter * if argc() == 0 | Explore! | endif
augroup END

" For dark version.
set background=dark
"let g:sonokai_better_performance = 1
" For better performance
colorscheme everforest 

