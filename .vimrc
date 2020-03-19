"not VI compatible
set nocompatible

"set the path where the plugins live
"in this case in the folder .vim in home
set packpath+=~/.vim

"lets vim search for files to open recursively
"for use with the find command
set path+=**

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

"Akin to intellisense
"I should set this up to work with <C-N>
filetype plugin on
set omnifunc=syntaxcomplete#Complete
"also autocomplete words which are hyphen-separated
set iskeyword+=\-

"colorscheme zellner
colorscheme gentooish "available in the void-package vim-colorschemes
"colorscheme holokai "available in the void-package vim-colorschemes

"always underline spelling errors instead of making their background red
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=red

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

"remove all trailing whitespace on lines with non-whitespace characters
" autocmd BufEnter * silent! :call <SID>StripTrailingWhitespaces()

"____________MAPPINGS______________
"
"disable the fucking F1 key
nmap <F1> <nop>

"remap leader to space
nnoremap <SPACE> <nop>
let mapleader = " "

"insert line-break
nnoremap <leader><CR> o<esc>

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


"AUTOCOMMANDS
"for povray files
augroup pov
autocmd!
	au BufWritePost *.pov !povray .
augroup END

"for the regular text
augroup txt
autocmd!
	au BufReadPost *.txt setlocal spell
	au BufReadPost *.txt setlocal tw=80
	au BufReadPost *.txt highlight Checked ctermfg=White ctermbg=DarkGreen
	au BufReadPost *.txt highlight Unchecked ctermfg=White ctermbg=DarkRed
	au BufReadPost *.txt syn match Unchecked /\[ \]/
	au BufReadPost *.txt syn match Checked /\[x\]/
augroup END

"for the regular text
augroup md
autocmd!
	au BufReadPost *.md setlocal spell
	au BufReadPost *.md setlocal tw=80
augroup END

"for tsv files - which I like to be nicely aligned
augroup tsv
autocmd!
	au BufReadPost *.tsv setlocal tabstop=20
augroup END

"for the twig templating language
augroup twig
autocmd!
	au BufReadPost *.twig set ft=html
augroup END
