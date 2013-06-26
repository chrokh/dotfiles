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

" Pathogen, for handling the runtime path
set nocp
call pathogen#infect()
call pathogen#helptags()

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
map ,t :CtrlP<cr>

" Paragraph jumping
" Want alt but can't figure it out
map <S-J> }
map <S-k> {

" Allow saving of files as sudo when I forgot to start vim using sudo.
" http://stackoverflow.com/questions/2600783/how-does-the-vim-write-with-sudo-trick-work
cmap w!! %!sudo tee > /dev/null %

" Vundle package manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'jcf/vim-latex'
Bundle 'danro/rename.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/BufOnly.vim'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'tpope/vim-surround'
Bundle 'skwp/vim-rspec'
Bundle 'qualiabyte/vim-colorstepper'
Bundle 'godlygeek/tabular'
Bundle 'roman/golden-ratio'
Bundle 'Townk/vim-autoclose'
Bundle 'ervandew/supertab'
Bundle 'vim-ruby/vim-ruby'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'me-vlad/python-syntax.vim'
Bundle 'vim-scripts/django.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'digitaltoad/vim-jade'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'

" Required for Vundle and for vim-latex
filetype indent on
filetype plugin on

" Required for vim-latex
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

" centralize the damn swp files
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp
set writebackup
