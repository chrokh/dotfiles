" Set theme
syntax enable
set background=dark
colorscheme solarized

" Increase font size
set guifont=Inconsolata:h18

" Maintain block in insert mode
set guicursor=n-v-c-i:block-Cursor

" Stop blinking cursor
let &guicursor = &guicursor . ",a:blinkon0"

" Show line numbers
set number

" Hide NERDTree scrollbars
set guioptions-=L

" Hide scrollbars
set guioptions-=r
