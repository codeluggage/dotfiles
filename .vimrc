" We don't need to be compatible with Vi
set nocompatible

" Saving and undoing is enough safety for me
set noswapfile

" Looks
" =====

" Turn off extra unecessary GUI stuff:
if has("gui_running")
    set guioptions-=T
endif



" Settings
" ========


syntax on
" TODO: Should both of these be set?
filetype plugin on
filetype plugin indent on

" TODO: Make this actually run on start up ><
colorscheme gentooish

" Make ShowMarks behave properly:
let g:showmarks_ignore_type="hpr"


" Set up ignore file types
set wildignore=*.swp,*.bak,*.pyc,*.class

" Set up hard drive saving of undo history
set undofile
set undodir=~/.vim/undo
set number
set ignorecase
set smartcase
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set hidden


" Language support:
" ======
let g:pydoc_cmd = "/usr/bin/pydoc"
let g:pydiction_location = '~/complete-dict'
au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source /Users/matias_lange_nielsen/.vim/syntax/json.vim

" Move focus to quick fix window for lint errors in python
let g:pymode_lint_hold = 0



" Automatics
" ==========

" Save on any focus loss
au FocusLost * :wa

if has('autocmd')
	autocmd filetype python set expandtab
endif



" TODO: How to show that this is a fold?
" Mappings

" Make sure <Leader> is configured correctly
let mapleader='\'

" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Bubble single lines
nmap <Up> [e
nmap <Down> ]e

" Removing search highlight on enter (mapping it to esc causes strange issues)
nnoremap <CR> :noh<CR>

" Moving in word-wrapped lines
noremap k gk
noremap j gj


" Bubble multiple lines
vmap <D-Up> [egv
vmap <D-Down> ]egv

" Switch to the last/alternate buffer
noremap <Leader><Leader> <C-^>
                                                     
" Add line below/above without going to insert mode:
noremap <C-CR> o<Esc>                               

" Switch to the last/alternate buffer
noremap <S-CR> O<Esc>                               
noremap <Leader><Leader> <C-^>

" Shorter commands to toggle Taglist display        
" Add line below/above without going to insert mode:
nnoremap TT :TlistToggle<CR>
noremap <C-CR> o<Esc>
map <F4> :TlistToggle<CR>
noremap <S-CR> O<Esc>

" Execute file being edited with <Shift> + e:
" Shorter commands to toggle Taglist display
map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>

" Execute file being edited with <Shift> + e:
map <buffer> <F5> :w<CR>:!/usr/bin/env python % <CR>

set pastetoggle=<leader>pt

" Reload this file (~/.vimrcv
nnoremap <leader>sv :so $MYVIMRC<cr>

" Map half page up/down
nmap <C-j> <C-d>
imap <C-j> <Esc><C-d>i
nmap <C-k> <C-u>
imap <C-k> <Esc><C-u>i

" Mapping NERDTree
nmap <silent> <leader>t :NERDTreeToggle<CR>

" Refactoring convenience function from https://gist.github.com/048616a2e3f5d1b5a9ad
function! Refactor()
    call inputsave()
    let @z=input("What do you want to rename '" . @z . "' to? ")
    call inputrestore()
endfunction

" Locally (local to block) rename a variable
nmap <Leader>rf "zyiw:call Refactor()<cr>mx:silent! norm gd<cr>[%V]%:s/<C-R>//<c-r>z/g<cr>`x

nmap <Leader>n :cn<cr>
nmap <S><Leader>n :cp<cr>

nnoremap <S-x> diw
nmap <BS> i<BS><ESC>l 





