" " Vim color file
" " Maintainer: Victor Huggo <victorhuggocontato42@gmail.com>
" " Last Change: 2024-09-17 10:42 pm
" " URL: https://github.com/huggo-42/vim-colorscheme/blob/main/oggu.vim
" "
" " Special thanks for Camila for choosing the name.

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "oggu"
hi Normal          guifg=#e4e4ef      guibg=#181818
hi Comment         guifg=#cc8c3c
" #9e95c7 | #cc8c3c
hi Constant        guifg=#95a99f
hi String          guifg=#73c936
hi Identifier      guifg=#e4e4ef
hi Keyword         guifg=#ffdd33      gui=bold
hi Function        guifg=cyan
hi Type            guifg=#95a99f
hi Error           guifg=#f43841
hi Todo            guifg=#e4e4ef      guibg=#ffdd33
hi LineNr          guifg=#453d41
hi CursorLineNr    guifg=#ffdd33
hi Visual          guibg=#282828
hi StatusLine      guifg=#e4e4ef      guibg=#181818
hi CursorLine      guibg=NONE         guifg=NONE
hi CursorColumn    guifg=NONE         guibg=NONE
hi Visual          guibg=#44475a      guifg=NONE
" hi Cursor          guifg=#ffdd33      guibg=#44475a ctermfg=1 ctermbg=2
hi Cursor guifg=#181818 guibg=#ffdd33
set guicursor=n-v-c:block-Cursor
