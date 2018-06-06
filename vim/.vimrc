" Base vim configuration
set nocompatible " Use Vim defaults instead of 100% vi compatibility
filetype off " non-unique setup for each filetype extention
set scrolloff=20 " star scrolling when you are 20 lines from top/bottom
set mouse+=a " enable mouse
set number " display numbers
set relativenumber " display numbers relative to current cursor
set splitright " vsplits split to the right
set splitbelow " horizontal splits below
set tabstop=4
set shiftwidth=4 " shift by 4 spaces
set expandtab " change tab to 4 spaces
set encoding=utf-8 " standard encoding for github
set t_Co=256 " 256 colors in terminal

syntax on " enable syntax highlighting

map <up> <nop>  "Disable Arroow keys in Normal mode
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>  "Disable Arrow keys in Insert mode
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" I need this so that you can use the mouse to adjust vim splits inside of a
" tmux
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

" if you want the solarized color format uncomment the below block
" set background=dark
" colorscheme solarized

" This gets you the colorscheme of sublime text 2
" colorscheme monokai2
" let g:molokai_original = 1
" let g:rehash256 = 1
colorscheme badwolf

autocmd vimenter * NERDTree " start nerdtree when vim starts
" exit nerdtree on exit
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWritePre * :%s/\s\+$//e  " Strip trailing whitespace

" VUNDLE CONFIG----------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " required for vundle (I think)
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree' " file directories
Plugin 'scrooloose/syntastic' " code linting
"Plugin 'sjl/badwolf' " the badwolf colorsheme
Plugin 'Valloric/YouCompleteMe' " autocomplete
" ctrlp is a fuzzy file and buffer finder that shows up above the vim status
" bar when you're trying t find or edit another file
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'itchyny/lightline.vim' " pretty status bar at bottom
Plugin 'airblade/vim-gitgutter' " git repo additition/subtractions/modifications indicators
call vundle#end()            " required
filetype plugin indent on    " required
" END VUNDLE CONFIG-----------------------

" Syntastic - dynamic syntax checking
let g:syntastic_enable_signs = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_balloons = 1
let g:syntastic_python_checkers = ['flake8', 'pep8', 'python']
let g:syntastic_python_pep8_args='--ignore=E501'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_css_checkers = ['stylelint']
let g:syntastic_always_populate_loc_list=1

let g:NERDTreeDirArrows=0 " enable dir arrows in nerdTree

