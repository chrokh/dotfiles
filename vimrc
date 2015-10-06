" ==== BEGIN VIM-PLUG ====
call plug#begin('~/.vim/plugged')

Plug 'jcf/vim-latex'
Plug 'danro/rename.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/BufOnly.vim'
Plug 'tpope/vim-surround'
Plug 'skwp/vim-rspec'
Plug 'godlygeek/tabular'
Plug 'roman/golden-ratio'
Plug 'Townk/vim-autoclose'
Plug 'ervandew/supertab'
Plug 'vim-ruby/vim-ruby'
Plug 'jelera/vim-javascript-syntax'
Plug 'me-vlad/python-syntax.vim'
Plug 'vim-scripts/django.vim'
Plug 'digitaltoad/vim-jade'
Plug 'kien/ctrlp.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'csexton/trailertrash.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'mattn/emmet-vim'
Plug 'chriskempson/base16-vim'
Plug 'shime/vim-livedown'
Plug 'scrooloose/nerdtree'

call plug#end()
" ==== END VIM-PLUG ====




let mapleader=","

" Indentation
set tabstop=2
set shiftwidth=2
set ts=2 sts=2 sw=2 " 2 spaces tabs
set expandtab " Tabs -> Spaces
set autoindent " Follow indent on next line
set cindent " Auto indent braces

" Backspace
set backspace=indent,eol,start

" Ensure custom aliases are available
set shell=/bin/bash\ -i

" Map NERDTree to leader-n
map <Leader>n :NERDTreeToggle<CR>

" Cycle through buffers
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>

map <C-Left> :wincmd h<CR>
map <C-h> :wincmd h<cr>
map <C-Down> :wincmd j<CR>
map <C-j> :wincmd j<CR>
map <C-Up> :wincmd k<CR>
map <C-k> :wincmd k<CR>
map <C-Right> :wincmd l<CR>
map <C-l> :wincmd l<CR>

" Map Ctrl-t to CtrlP-plugin
map ,p :CtrlP<cr>

" Paragraph jumping
" Want alt but can't figure it out
" map <S-J> }
" map <S-k> {

" Allow saving of files as sudo when I forgot to start vim using sudo.
" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! %!sudo tee > /dev/null %



" Required for vim-latex
filetype plugin on
" grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite.
" Set your grep program to always generate a file-name.
" set grepprg=grep\ -nH\ $*
let g:Tex_ViewRule_pdf = 'Preview'
let g:Tex_DefaultTargetFormat = 'pdf'

" line numbers
set number

" Disable initial code folding
set nofoldenable

" centralize the damn swp files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp
set writebackup

" make sure cursor is never at edge
set scrolloff=5

" Unmap arrow keys
nmap <Left> <Nop>
nmap <Right> <Nop>
nmap <Up> <Nop>
nmap <Down> <Nop>

" auto-source vimrc on save
" if has("autocmd")
"   autocmd bufwritepost vimrc source $MYVIMRC
" endif
" Hotkey for opening vimrc
nmap <leader>v :tabedit ~/bin/dotfiles/vimrc<CR>


" Custom ignores for CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|DS_Store\'

" Use tab to expand Emmet expressions
" https://coderwall.com/p/_uhrxw/using-tab-key-as-abbreviation-expander-on-emmet-vim
" Not working because of conflict with supertab
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Syntax and colors
set t_Co=256
let base16colorspace=256
syntax enable
source $VIM_COLOR_CONF

" Increase font size
set guifont=DejaVu\ Sans\ Mono:h13

" Stop blinking cursor
set guicursor+=n-v-c:blinkon0

" Hide NERDTree scrollbars
set guioptions-=L

" Hide scrollbars
set guioptions-=r

" Searching
set ignorecase
set smartcase
set incsearch
