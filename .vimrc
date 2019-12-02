"not VI compatible
set nocompatible

"set the path where the plugins live
"in this case in the folder .vim in home
set packpath+=~/.vim

"needed for language server integration
set runtimepath+=~/.vim-plugins/LanguageClient-neovim

"turn off the taskbar in gvim
set guioptions-=m

"a bit more readable
set guifont=Lucida_Console:h10

"make backspace behave normally in insert mode
set backspace=indent,eol,start

"highlight search
set hlsearch
"search while entering the search query
set incsearch

"show me the options to autocomplete while in command mode
set wildmenu
"autocomplete stuff by giving me the match up to the first differing character
"then tab through the options
set wildmode=longest:list,full

"NO, I don't want ANSI.
set fileencodings=utf-8
set encoding=utf-8
set fileencoding=utf-8

"turn on syntax highlighting and indentation
syntax on
filetype indent plugin on
colorscheme zellner

"for indentating html - otherwise these tags are not recognized
let g:html_indent_inctags = "html,body,head,tbody,table,td,tr,th,canvas"

"whitespace
set tabstop=4
set shiftwidth=4
set list
set listchars=tab:>~,trail:~,extends:>,precedes:<

"don't wrap - duh. - maybe I should change this, it seems actually quite
"practical for keeping the right width for readability.
set nowrap
set textwidth=0
set wrapmargin=0

"line numbers
set nu
set rnu


"send all backups to home/vimbackups
set backupdir=~/.vim/backups,.
set directory=~/.vim/swapfiles,.

" Persistent undo
set undodir=~/.vim/undofiles,.
set undofile

"search and replace options ignore case, except if there's something uppercase
"in it
set ignorecase
set smartcase

"set the current working directory when entering a new file
autocmd BufEnter * silent! :lcd%:p:h

"remove all trailing whitespace on lines with non-whitespace characters
" autocmd BufEnter * silent! :call <SID>StripTrailingWhitespaces()

"____________MAPPINGS______________
"
"disable the fucking F1 key
nmap <F1> <nop>

"remap leader to space
nnoremap <SPACE> <nop>
let mapleader = " "

"move screen
nnoremap <C-h> 4zh
nnoremap <C-l> 4zl
nnoremap <C-j> 4<C-E>
nnoremap <C-k> 4<C-Y>

"getting the next match of f or t, but more logically - at least on a german
"keyboard
nnoremap ; ,
nnoremap , ;

"removes the highlighting after search
"until I can fix the escape codes sent by the terminal, I'll have to press esc
"twice
nnoremap <silent> <esc><esc> :noh<CR>
" nnoremap <silent> <esc> :noh<CR>

"f5 triggers a povray render when in a .pov file
autocmd FileType pov nnoremap <F5> :!povray .<CR>:redraw!<CR>
