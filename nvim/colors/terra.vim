" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@mossbayeng.com>
" Last Change:	2001 Jul 28

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "terra"
hi Normal		guifg=cyan	guibg=#181818
hi NonText		guifg=brown
hi comment		guifg=pink
hi constant		guifg=yellow	gui=bold
hi identifier	guifg=white	gui=NONE
hi statement	guifg=yellow	gui=NONE
hi preproc		guifg=Pink2
hi type			guifg=cyan	gui=bold
hi special		guifg=red
hi ErrorMsg		guifg=Black	guibg=Red
hi WarningMsg	guifg=Black	guibg=Green
hi Error		guibg=Red
hi Todo			guifg=white	guibg=lightslateblue
hi Cursor		guibg=#60a060 guifg=#00ff00
hi Search		guibg=lightslateblue
hi IncSearch	gui=NONE guibg=steelblue
hi LineNr		guifg=white
hi title		guifg=darkgrey
hi StatusLineNC	gui=NONE guifg=lightblue guibg=darkblue
hi StatusLine	gui=bold	guifg=cyan	guibg=blue
hi label		guifg=gold2
hi operator		guifg=#B0B0B0
hi clear Visual
hi Visual		term=reverse cterm=reverse gui=reverse
hi DiffChange   guibg=darkgreen
hi DiffText		guibg=olivedrab
hi DiffAdd		guibg=slateblue
hi DiffDelete   guibg=coral
hi Folded		guibg=gray30
hi FoldColumn	guibg=gray30 guifg=white
hi cIf0			guifg=gray

