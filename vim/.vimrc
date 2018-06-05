"set mouse=a

"VUNDLE CONFIG----------------------
set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
" Install the nerdtree plugin
Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'

" Lets get some autocomplete in here
"Plugin 'ervandew/supertab'

" the badwold colorscheme
"Plugin 'sjl/badwolf'

"This is supposed to be a better autocomplete"
Plugin 'Valloric/YouCompleteMe'

" ctrlp is a fuzzy file and buffer finder that shows up above the vim status
" bar when you're trying t find or edit another file
Plugin 'ctrlpvim/ctrlp.vim'

"let's get a pretty looking status bar at the bottom
Plugin 'itchyny/lightline.vim'

"gitgutter shows signs for line additions and modifications or removals if the 
"file you are editting is in a git repo
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"END VUNDLE CONFIG


"Syntastic - dynamic syntax checking
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



let g:NERDTreeDirArrows=0
set encoding=utf-8
syntax on

" to get colors for lightline
"if !has('gui_running')
"  set t_Co=256
"endif
"star scrolling when you are x lines from top/bottom
set scrolloff=20

"give mouse support
set mouse+=a

" I need this so that you can use the mouse to adjust vim splits inside of a
" tmux
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end


" if you want the solarized color format uncomment the below block
"set background=dark
"colorscheme solarized

" This gets you the colorscheme of sublime text 2
"colorscheme monokai2
set t_Co=256
colorscheme badwolf

"let g:molokai_original = 1
"let g:rehash256 = 1

set number
set relativenumber

set splitright
set splitbelow
"Disable Arrow keys in Escape mode
 map <up> <nop>
 map <down> <nop>
 map <left> <nop>
 map <right> <nop>

 " Disable Arrow keys in Insert mode
 imap <up> <nop>
 imap <down> <nop>
 imap <left> <nop>
 imap <right> <nop>

autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd vimenter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufWritePre * :%s/\s\+$//e  " Strip trailing whitespace
set tabstop=4
set shiftwidth=4
set expandtab
