" " Vim color file
" " Maintainer: Victor Huggo <victorhuggocontato42@gmail.com>
" " Last Change: 2024-09-17 10:42 pm
" " URL:
" https://github.com/huggo-42/vim-colorscheme/blob/main/oggu-transparent.vim
" "
" " Special thanks for Camila for choosing the name.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "oggu-transparent"

hi Normal          guifg=#e4e4ef      guibg=NONE
hi Comment         guifg=#cc8c3c
hi Constant        guifg=#95a99f
hi String          guifg=#73c936
hi Identifier      guifg=#ffffff
hi Keyword         guifg=#ffdd33      gui=bold
hi Function        guifg=cyan
hi Type            guifg=#95a99f
hi Error           guifg=#f43841
hi Todo            guifg=#ffffff      guibg=#ffdd33
hi LineNr          guifg=#ffffff
hi CursorLineNr   guifg=#ffdd33
hi Visual          guibg=#282828
hi StatusLine      guifg=#ffffff      guibg=NONE
