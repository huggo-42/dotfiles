" Solarized Light colorscheme for Vim
" Author: Estudante's request
" Save this file as ~/.vim/colors/solarized_light.vim or
" ~/.config/nvim/colors/solarized_light.vim

hi clear
if exists("syntax_on")
  syntax reset
endif
set background=light
let g:colors_name = "solarized_light"

" Solarized Light palette
let s:base03   = "#002b36"
let s:base02   = "#073642"
let s:base01   = "#586e75"
let s:base00   = "#657b83"
let s:base0    = "#839496"
let s:base1    = "#93a1a1"
let s:base2    = "#eee8d5"
let s:base3    = "#fdf6e3"
let s:yellow   = "#b58900"
let s:orange   = "#cb4b16"
let s:red      = "#dc322f"
let s:magenta  = "#d33682"
let s:violet   = "#6c71c4"
let s:blue     = "#268bd2"
let s:cyan     = "#2aa198"
let s:green    = "#859900"

" Normal text
hi Normal guifg=s:base00 guibg=s:base3

" Comments
hi Comment guifg=s:base1 cterm=italic

" Keywords and constants
hi Keyword guifg=s:violet
hi Constant guifg=s:cyan

" Strings
hi String guifg=s:green

" Functions
hi Function guifg=s:blue

" Numbers
hi Number guifg=s:orange

" Visual mode selection
hi Visual guibg=s:base2

" Status line
hi StatusLine guifg=s:base1 guibg=s:base2
hi StatusLineNC guifg=s:base00 guibg=s:base2

" Search highlighting
hi Search guifg=s:base3 guibg=s:yellow
hi IncSearch guifg=s:base3 guibg=s:orange

" Matching parentheses
hi MatchParen guibg=s:base2 guifg=s:base01

" Line numbers
hi LineNr guifg=#AC7B52
hi CursorLineNr guifg=#AC7B52

" Cursor line
hi CursorLine guibg=s:base2

" End of buffer
hi EndOfBuffer guifg=s:base3

" Tabs
hi TabLine guifg=s:base0 guibg=s:base2
hi TabLineSel guifg=s:base3 guibg=s:blue
hi TabLineFill guibg=s:base2

" Errors and warnings
hi Error guifg=s:red guibg=s:base3
hi WarningMsg guifg=s:yellow

" Diff
hi DiffAdd guibg=s:green guifg=s:base3
hi DiffChange guibg=s:yellow guifg=s:base3
hi DiffDelete guibg=s:red guifg=s:base3
hi DiffText guibg=s:blue guifg=s:base3
