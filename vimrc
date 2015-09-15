" VUNDLE
set nocompatible    " be iMproved, required
filetype off        " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jcf/vim-latex'
Plugin 'danro/rename.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'tpope/vim-surround'
Plugin 'skwp/vim-rspec'
Plugin 'qualiabyte/vim-colorstepper'
Plugin 'godlygeek/tabular'
Plugin 'roman/golden-ratio'
Plugin 'Townk/vim-autoclose'
Plugin 'ervandew/supertab'
Plugin 'vim-ruby/vim-ruby'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'me-vlad/python-syntax.vim'
Plugin 'vim-scripts/django.vim'
Plugin 'noah/vim256-color'
Plugin 'digitaltoad/vim-jade'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'csexton/trailertrash.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mattn/emmet-vim'

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




let mapleader=","

" Indentation
set tabstop=2
set shiftwidth=2
set ts=2 sts=2 sw=2 " 2 spaces tabs
set expandtab " Tabs -> Spaces
set autoindent " Follow indent on next line
set cindent " Auto indent braces

" Required for running custom aliases
" http://stackoverflow.com/questions/8841116/vim-not-recognizing-aliases-when-in-interactive-mode
set shell=/bin/bash\ --rcfile\ ~/.bash_profile\ -i

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
map <S-J> }
map <S-k> {

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

" syntax highlighting on
syntax on
set t_Co=256

" line numbers
set number

" colors
" colors lucius
colorscheme hybrid

" centralize the damn swp files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp
set writebackup

" make sure cursor is never at edge
set scrolloff=5

" Unmap arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" auto-source vimrc on save
if has("autocmd")
  autocmd bufwritepost vimrc source $MYVIMRC
endif
" Hotkey for opening vimrc
nmap <leader>v :tabedit ~/bin/dotfiles/vimrc<CR>


" Use tab to expand Emmet expressions
" https://coderwall.com/p/_uhrxw/using-tab-key-as-abbreviation-expander-on-emmet-vim
" Not working because of conflict with supertab
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

