
"not VI compatible
set nocompatible

"set the path where the plugins live
"in this case in the folder .vim in home
set packpath+=~/.vim

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

"NO, I don't want ANSI.
set fileencodings=utf-8
set encoding=utf-8
set fileencoding=utf-8

"turn on syntax highlighting and indentation
"syntax on
filetype indent plugin on

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

"colors
syntax on
colorscheme desert

"send all backups to home/vimbackups
set backupdir=./vimbackups,../vimbackups,~/vim/backups,.
set directory=./vimbackups,../vimbackups,~/vim/backups,.

" Persistent undo
set undodir=~/.vim/undofiles
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
"let mapleader = "\<SPACE>"
let mapleader = " "

"move screen
nnoremap <C-h> 4zh
nnoremap <C-l> 4zl
nnoremap<C-j> 4<C-E>
nnoremap <C-k> 4<C-Y>

"getting the next match of f or t, but more logical - at least on a german
"keyboard
nnoremap ; ,
nnoremap , ;

"mapping to adapt indentation when pasting converts spaces to tabs, not always wanted
" nmap P ]P
" nmap p ]p

"for keeping indentation on lines where I don't write anything
"(leftover habit from eclipse)
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>


"copying and pasting the standard windows way - doesn't really work if I don't
"have a clipboard manager
inoremap <silent> <C-v> <C-R>+
nnoremap <silent> <C-v> "+p
nnoremap <silent> <C-c> "+Y<esc>
vnoremap <silent> <C-c> "+y<esc>
vnoremap <silent> <C-v> "+p
" nnoremap <silent> <C-a> <esc>ggVG

"removes the highlighting after search
"until I can fix the escape codes sent by the terminal, I'll have to press esc
"twice
nnoremap <silent> <esc><esc> :noh<CR>
" nnoremap <silent> <esc> :noh<CR>


"_____________AUX FUNCTIONS_________________

"doesn't remove lines with ONLY whitespace
fun! <SID>StripTrailingWhitespaces()
	let l = line(".")
	let c = col(".")
	%s/\v([^\t])(\t|\s)+$/\1/g
	call cursor(l, c)
endfun

"PLUGINS
 let g:NERDSpaceDelims = 1
