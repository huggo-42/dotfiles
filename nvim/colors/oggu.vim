" Vim color file
" Maintainer: Victor Huggo <victorhuggocontato42@gmail.com>
" Last Change: 2024-09-17 10:42 pm
" URL: not yet
"
" Special thanks for Camila for choosing the name.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="oggu"

hi Normal       guifg=white     guibg=#181818
hi Type         guifg=cyan
hi Todo         guifg=white	    guibg=lightslateblue
hi Cursor		    guibg=#60a060   guifg=#00ff00
hi String       guifg=#60a060
hi Constant     guifg=darkgray
hi Statement    guifg=yellow
hi Identifier   guifg=white
