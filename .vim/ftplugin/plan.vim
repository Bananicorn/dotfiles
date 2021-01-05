"nice highlighting for my checklists
highlight Checked ctermfg=White ctermbg=DarkGreen
highlight Unchecked ctermfg=White ctermbg=DarkRed
highlight Optional ctermfg=Black ctermbg=Yellow
highlight Started ctermfg=Black ctermbg=LightBlue
syn match Unchecked /\[ \]/
syn match Checked /\[x\]/
syn match Optional /\[?\]/
syn match Started /\[-\]/
