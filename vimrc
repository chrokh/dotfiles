" Install vim-plug if not already installed, and install all plugs.
" https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ==== BEGIN VIM-PLUG ====
call plug#begin('~/.vim/plugged')
Plug 'danro/rename.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/BufOnly.vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'roman/golden-ratio'
Plug 'ervandew/supertab'
Plug 'vim-ruby/vim-ruby'
Plug 'kien/ctrlp.vim'
Plug 'csexton/trailertrash.vim'
Plug 'mattn/emmet-vim'
Plug 'chriskempson/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-pug'
Plug 'leafgarland/typescript-vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'reasonml-editor/vim-reason-plus'
Plug 'mileszs/ack.vim'
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
"set shell=/bin/bash\ -i

" Set encoding
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Persist undo over buffer switches and exits
:silent call system('mkdir -p ' . $HOME . '/.vim/undo')
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" Allow switching between buffers without saving
set hidden

"Better line wrapping
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

" Highlight current line
set cursorline

" Show current column
set ruler

" Allow mouse
set mouse=a

" Change line width (for e.g. gqq) from the standard 80
" set tw=70

" Map NERDTree to leader-n
map <Leader>n :NERDTreeToggle<CR>

" Find and replace based on word under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" Use tab to navigate jumplist
" Remember that <Tab> and <C-I> are equivalent.
" http://stackoverflow.com/questions/18175647/jump-with-ctrl-i-doesnt-work-in-my-macvim-but-ctrl-o-works
"map <Tab> <C-I>
map <S-Tab> <C-O>

noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-LEFT> <C-W><C-H>
noremap <C-DOWN> <C-W><C-J>
noremap <C-UP> <C-W><C-K>
noremap <C-RIGHT> <C-W><C-L>

" Map Ctrl-p to CtrlP-plugin
map ,p :CtrlP<cr>
" Map Ctrl-t to CtrlP-plugin matching open buffers only
map ,t :CtrlPBuffer<cr>

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

" redef C-j to C-g
" Vim LaTeX claims <C-J> but I want to use
" it to navigate the the split below
" http://tex.stackexchange.com/questions/3654/change-c-j-binding-for-vim-latex
imap <C-g> <Plug>IMAP_JumpForward
nmap <C-g> <Plug>IMAP_JumpForward


" line numbers
set number

" Disable initial code folding
set nofoldenable

" centralize the damn swp files
:silent call system('mkdir -p ' . $HOME . '/.vim-tmp')
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

" Let CtrlP ignore everything in gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Use tab to expand Emmet expressions
" https://coderwall.com/p/_uhrxw/using-tab-key-as-abbreviation-expander-on-emmet-vim
"
" Not working because of conflict with supertab:
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"
" Still requires , to be pressed after
" let g:user_emmet_leader_key='<C-z>'
"
" Using C-e in insert mode
imap <expr> <C-e> emmet#expandAbbrIntelligent("C-e")


" Syntax and colors
set t_Co=256
let base16colorspace=256 " https://github.com/chriskempson/base16-vim
syntax enable

" Source color configuration
" https://github.com/AuditeMarlow/base16-manager
if filereadable(expand("~/.vim/colorscheme.vim"))
  source ~/.vim/colorscheme.vim
endif

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

" JSX
let g:jsx_ext_required = 0
