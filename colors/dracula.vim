" vim: fdm=marker:
" Dracula Theme v1.2.7
"
" https://github.com/zenorocha/dracula-theme
"
" Copyright 2016, All rights reserved
"
" Code licensed under the MIT license
" http://zenorocha.mit-license.org
"
" @author Trevor Heins <@heinst>
" @author Éverton Ribeiro <nuxlli@gmail.com>
" @author Derek Sifford <dereksifford@gmail.com>
" @author Zeno Rocha <hi@zenorocha.com>
scriptencoding utf-8

" Section: Initialization {{{

if v:version > 580
    highlight clear
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'dracula'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
    finish
endif

" }}}

" Section: Palette {{{
" --------------------

let s:bg = ['#282A36', 236]
let s:fg = ['#F8F8F2', 255]
let s:selection = ['#44475A', 239]
let s:comment = ['#6272A4', 61]
let s:cyan = ['#8BE9FD', 117]
let s:green = ['#50FA7B', 84]
let s:orange = ['#FFB86C', 215]
let s:pink = ['#FF79C6', 212]
let s:purple = ['#BD93F9', 141]
let s:red = ['#FF5555', 203]
let s:yellow = ['#F1FA8C', 228]
let s:none = ['NONE', 'NONE']

" }}}

function! s:h(scope, fg, ...)
    " bg, attr_list, special
    let l:bg = get(a:, 1, copy(s:none))
    let l:attrs = a:0 >= 2 && len(a:2) > 0 ? join(a:2, ',') : 'NONE'
    let l:special = get(a:, 3, copy(s:none))

    let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . a:fg[0], 'ctermfg=' . a:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]
    execute join(l:hl_string, ' ')
endfunction

set background=dark

" Section: Dracula Highlight Groups {{{

" FIXME: Add override for this for various terminals
highlight Normal guibg=#282A36 guifg=#F8F8F2 ctermfg=NONE ctermbg=NONE

call s:h('DraculaFg', s:fg)
call s:h('DraculaFgUnderline', s:fg, s:none, ['underline'])


call s:h('DraculaComment', s:comment)
call s:h('DraculaCommentBold', s:comment, s:none, ['bold'])
call s:h('DraculaSelection', s:selection)

call s:h('DraculaCyan', s:cyan)
call s:h('DraculaCyanItalic', s:cyan, s:none, ['italic'])
call s:h('DraculaGreen', s:green)
call s:h('DraculaOrange', s:orange)
call s:h('DraculaPink', s:pink)
call s:h('DraculaPurple', s:purple)
call s:h('DraculaPurple', s:purple)
call s:h('DraculaRed', s:red)
call s:h('DraculaYellow', s:yellow)

" TODO: should this also be inverted?
call s:h('DraculaError', s:red, s:none, ['undercurl'])
call s:h('DraculaTodo', s:green, s:none, ['bold', 'inverse'])

" }}}

" Section: UI {{{

hi! link LineNr DraculaComment

" }}}

" Section: Generic Syntax {{{

hi! link Comment DraculaComment
hi! link Folded DraculaCommentBold
hi! link Underlined DraculaFgUnderline
hi! link Error DraculaError
hi! link Todo DraculaTodo

" TODO: What is this exactly?
" 	*Ignore		left blank, hidden  |hl-Ignore|

hi! link Constant DraculaPurple
hi! link String DraculaYellow
hi! link Character DraculaPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier DraculaFg
hi! link Function DraculaGreen

hi! link Statement DraculaPink
hi! link Conditional DraculaPink
hi! link Repeat DraculaPink
hi! link Label DraculaPink
hi! link Operator DraculaPink
hi! link Keyword DraculaPink
hi! link Exception DraculaPink

hi! link PreProc DraculaPink
hi! link Include DraculaPink
hi! link Define DraculaPink
hi! link Macro DraculaPink
hi! link PreCondit DraculaPink
hi! link StorageClass DraculaPink
hi! link Structure DraculaPink
hi! link Typedef DraculaPink

hi! link Type DraculaCyanItalic

" TODO: need a consensus here
" 	*Special	any special symbol
" 	 SpecialChar	special character in a constant
" 	 Tag		you can use CTRL-] on this
" 	 Delimiter	character that needs attention
" 	 SpecialComment	special things inside a comment
" 	 Debug		debugging statements


" }}}

" TODO {{{

"ColorColumn	used for the columns set with 'colorcolumn'
"							*hl-Conceal*
"Conceal		placeholder characters substituted for concealed
"		text (see 'conceallevel')
"							*hl-Cursor*
"Cursor		the character under the cursor
"							*hl-CursorIM*
"CursorIM	like Cursor, but used when in IME mode |CursorIM|
"							*hl-CursorColumn*
"CursorColumn	the screen column that the cursor is in when 'cursorcolumn' is
"		set
"							*hl-CursorLine*
"CursorLine	the screen line that the cursor is in when 'cursorline' is
"		set
"							*hl-Directory*
"Directory	directory names (and other special names in listings)
"							*hl-DiffAdd*
"DiffAdd		diff mode: Added line |diff.txt|
"							*hl-DiffChange*
"DiffChange	diff mode: Changed line |diff.txt|
"							*hl-DiffDelete*
"DiffDelete	diff mode: Deleted line |diff.txt|
"							*hl-DiffText*
"DiffText	diff mode: Changed text within a changed line |diff.txt|
"						 {Nvim} *hl-EndOfBuffer*
"EndOfBuffer	filler lines (~) after the end of the buffer.
"		By default, this is highlighted like |hl-NonText|.
"						 {Nvim} *hl-TermCursor*
"TermCursor	cursor in a focused terminal
"						 {Nvim} *hl-TermCursorNC*
"TermCursorNC	cursor in an unfocused terminal
"							*hl-ErrorMsg*
"ErrorMsg	error messages on the command line
"							*hl-VertSplit*
"VertSplit	the column separating vertically split windows
"							*hl-Folded*
"Folded		line used for closed folds
"							*hl-FoldColumn*
"FoldColumn	'foldcolumn'
"							*hl-SignColumn*
"SignColumn	column where |signs| are displayed
"							*hl-IncSearch*
"IncSearch	'incsearch' highlighting; also used for the text replaced with
"		":s///c"
"							*hl-Substitute*
"Substitute	|:substitute| replacement text highlighting

"							*hl-LineNr*
"LineNr		Line number for ":number" and ":#" commands, and when 'number'
"		or 'relativenumber' option is set.
"							*hl-CursorLineNr*
"CursorLineNr	Like LineNr when 'cursorline' or 'relativenumber' is set for
"		the cursor line.
"							*hl-MatchParen*
"MatchParen	The character under the cursor or just before it, if it
"		is a paired bracket, and its match. |pi_paren.txt|

"							*hl-ModeMsg*
"ModeMsg		'showmode' message (e.g., "-- INSERT --")
"							*hl-MoreMsg*
"MoreMsg		|more-prompt|
"							*hl-NonText*
"NonText		'@' at the end of the window, characters from 'showbreak'
"		and other characters that do not really exist in the text
"		(e.g., ">" displayed when a double-wide character doesn't
"		fit at the end of the line). See also |hl-EndOfBuffer|.
"							*hl-Normal*
"Normal		normal text
"							*hl-NormalNC*
"NormalNC	normal text in non-current windows
"							*hl-Pmenu*
"Pmenu		Popup menu: normal item.
"							*hl-PmenuSel*
"PmenuSel	Popup menu: selected item.
"							*hl-PmenuSbar*
"PmenuSbar	Popup menu: scrollbar.
"							*hl-PmenuThumb*
"PmenuThumb	Popup menu: Thumb of the scrollbar.
"							*hl-Question*
"Question	|hit-enter| prompt and yes/no questions
"							*hl-QuickFixLine*
"QuickFixLine	Current |quickfix| item in the quickfix window. Combined with
"                |hl-CursorLine| when the cursor is there.
"							*hl-Search*
"Search		Last search pattern highlighting (see 'hlsearch').
"		Also used for similar items that need to stand out.
"							*hl-SpecialKey*
"SpecialKey	Unprintable characters: text displayed differently from what
"		it really is. But not 'listchars' whitespace. |hl-Whitespace|
"							*hl-SpellBad*
"SpellBad	Word that is not recognized by the spellchecker. |spell|
"		Combined with the highlighting used otherwise.
"							*hl-SpellCap*
"SpellCap	Word that should start with a capital. |spell|
"		Combined with the highlighting used otherwise.
"							*hl-SpellLocal*
"SpellLocal	Word that is recognized by the spellchecker as one that is
"		used in another region. |spell|
"		Combined with the highlighting used otherwise.
"							*hl-SpellRare*
"SpellRare	Word that is recognized by the spellchecker as one that is
"		hardly ever used. |spell|
"		Combined with the highlighting used otherwise.
"							*hl-StatusLine*
"StatusLine	status line of current window
"							*hl-StatusLineNC*
"StatusLineNC	status lines of not-current windows
"		Note: if this is equal to "StatusLine" Vim will use "^^^" in
"		the status line of the current window.
"							*hl-TabLine*
"TabLine		tab pages line, not active tab page label
"							*hl-TabLineFill*
"TabLineFill	tab pages line, where there are no labels
"							*hl-TabLineSel*
"TabLineSel	tab pages line, active tab page label
"							*hl-Title*
"Title		titles for output from ":set all", ":autocmd" etc.
"							*hl-Visual*
"Visual		Visual mode selection
" 							*hl-VisualNOS*
"VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
"							*hl-WarningMsg*
"WarningMsg	warning messages
"							*hl-Whitespace*
"Whitespace	"nbsp", "space", "tab" and "trail" in 'listchars'
"							*hl-WildMenu*
"WildMenu	current match in 'wildmenu' completion

" }}}

" FIXME: Old stuff {{{

"hi Cursor ctermfg=17 ctermbg=231 cterm=NONE guifg=#282a36 guibg=#f8f8f0 gui=NONE
"hi Visual ctermfg=NONE ctermbg=241 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
"hi CursorLine ctermbg=234 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
"hi CursorColumn ctermbg=234 cterm=NONE guifg=NONE guibg=#44475a gui=NONE
"hi ColorColumn ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#3d3f49 gui=NONE
"hi LineNr ctermfg=60 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=#282a36 gui=NONE
"hi CursorLineNr ctermfg=228 ctermbg=234 cterm=NONE guifg=#f1fa8c guibg=#44475a gui=NONE
"hi VertSplit ctermfg=231 ctermbg=236 cterm=bold guifg=#64666d guibg=#64666d gui=bold
"hi MatchParen ctermfg=212 ctermbg=NONE cterm=underline guifg=#ff79c6 guibg=NONE gui=underline
"hi StatusLine ctermfg=231 ctermbg=236 cterm=bold guifg=#f8f8f2 guibg=#64666d gui=bold
"hi StatusLineNC ctermfg=231 ctermbg=236 cterm=NONE guifg=#f8f8f2 guibg=#64666d gui=NONE
"hi Pmenu ctermfg=15 ctermbg=61 cterm=NONE guifg=#f8f8f2 guibg=#646e96 gui=NONE
"hi PmenuSel ctermfg=16 ctermbg=84 cterm=bold guifg=#282a36 guibg=#50fa7b gui=NONE
"hi IncSearch ctermfg=17 ctermbg=215 cterm=none guifg=#282a36 guibg=#ffb86c gui=none
"hi Search ctermfg=17 ctermbg=84 cterm=none guifg=#282a36 guibg=#50fa7b gui=none
"hi Directory ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi Folded ctermfg=61 ctermbg=235 cterm=NONE guifg=#6272a4 guibg=#282a36 gui=NONE
"hi SignColumn ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
"hi FoldColumn ctermfg=246 ctermbg=235 cterm=NONE guifg=#909194 guibg=#44475a gui=NONE
"hi Normal guifg=#f8f8f2 guibg=#282a36 gui=NONE
"hi Boolean ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi Character ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi Comment ctermfg=61 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=NONE gui=NONE
"hi Conditional ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi Define ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f2 guibg=#468410 gui=bold
"hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b080b guibg=NONE gui=NONE
"hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f2 guibg=#243a5f gui=NONE
"hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f2 guibg=#204a87 gui=bold
"hi ErrorMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
"hi WarningMsg ctermfg=231 ctermbg=212 cterm=NONE guifg=#f8f8f0 guibg=#ff79c6 gui=NONE
"hi Float ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi Function ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi Identifier ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
"hi Keyword ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi Label ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi NonText ctermfg=231 ctermbg=NONE cterm=NONE guifg=#525563 guibg=NONE gui=NONE
"hi Number ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi Operator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi PreProc ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f2 guibg=NONE gui=NONE
"hi SpecialComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=NONE gui=NONE
"hi SpecialKey ctermfg=231 ctermbg=235 cterm=NONE guifg=#525563 guibg=NONE gui=NONE
"hi Statement ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi StorageClass ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
"hi String ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi SpellBad ctermfg=red ctermbg=NONE cterm=underline
"hi Tag ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f2 guibg=NONE gui=bold
"hi Todo ctermfg=61 ctermbg=NONE cterm=inverse,bold guifg=#6272a4 guibg=NONE gui=inverse,bold
"hi Type ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
"hi rubyClass ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi rubyFunction ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi rubySymbol ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi rubyConstant ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
"hi rubyStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi rubyBlockParameter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
"hi rubyInstanceVariable ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=NONE
"hi rubyInclude ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi rubyRegexp ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi rubyRegexpDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi rubyEscape ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi rubyControl ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi rubyOperator ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi rubyException ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi rubyRailsUserClass ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic
"hi rubyRailsARAssociationMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi rubyRailsARMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi rubyRailsRenderMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi rubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi erubyComment ctermfg=61 ctermbg=NONE cterm=NONE guifg=#6272a4 guibg=NONE gui=NONE
"hi erubyRailsMethod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi htmlSpecialChar ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi javaScriptFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
"hi javaScriptRailsFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi yamlKey ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi yamlDocumentHeader ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi cssURL ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
"hi cssFunctionName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=NONE
"hi cssColor ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi cssPseudoClassId ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi cssClassName ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi cssValueLength ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi cssCommonAttr ctermfg=81 ctermbg=NONE cterm=NONE guifg=#6be5fd guibg=NONE gui=NONE
"hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi TabLineFill  cterm=NONE ctermbg=236 guifg=#333333 guibg=#282a36 gui=none
"hi TabLine      cterm=NONE ctermfg=7 ctermbg=240 guifg=#666666 guibg=#282a36 gui=none
"hi TabLineSel   guifg=WHITE guibg=#282a36 gui=none

"" Elixir {{{
"hi elixirAtom ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic"
"hi elixirModuleDeclaration ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic"
"hi elixirAlias ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE gui=italic"
"hi elixirInterpolationDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi elixirStringDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
""}}}
""
"" Vim Script {{{
"hi vimGroupName ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
"hi vimGroup ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
"hi vimOption ctermfg=81 ctermbg=NONE cterm=NONE guifg=#66d9ef guibg=NONE
"hi vimHiCtermFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
"hi vimHiGuiFgBg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE
"" }}}
"" Markdown: {{{
"hi markdownH1 ctermfg=141 ctermbg=NONE cterm=bold guifg=#bd93f9 guibg=NONE gui=bold"
"hi markdownH2 ctermfg=141 ctermbg=NONE cterm=bold guifg=#bd93f9 guibg=NONE gui=bold"
"hi markdownH3 ctermfg=212 ctermbg=NONE cterm=bold guifg=#ff79c6 guibg=NONE gui=bold"
"hi markdownH4 ctermfg=212 ctermbg=NONE cterm=bold guifg=#ff79c6 guibg=NONE gui=bold"
"hi markdownH5 ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"hi markdownH6 ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE

"hi markdownCode ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi markdownCodeBlock ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE
"hi markdownCodeDelimiter ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f1fa8c guibg=NONE gui=NONE

"hi markdownBlockquote ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi markdownListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi markdownOrderedListMarker ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi markdownRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi markdownHeadingRule ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE

"hi markdownUrlDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic"
"hi markdownLinkDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic"
"hi markdownLinkTextDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic"

"hi markdownHeadingDelimiter ctermfg=117 ctermbg=NONE cterm=bold guifg=#8be9fd guibg=NONE gui=bold"
"hi markdownUrl ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi markdownUrlTitleDelimiter ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"" }}}
"" OCaml {{{
"hi ocamlModule ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
"hi ocamlConstructor ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
"hi ocamlType ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi ocamlModPath ctermfg=141 ctermbg=NONE cterm=NONE guifg=#bd93f9 guibg=NONE gui=NONE
"hi ocamlTodo ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb86c guibg=NONE gui=italic
"hi ocamlLabel ctermfg=84 ctermbg=NONE cterm=NONE guifg=#50fa7b guibg=NONE gui=NONE
"hi ocamlFullMod ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
"hi ocamlWith ctermfg=117 ctermbg=NONE cterm=NONE guifg=#8be9fd guibg=NONE gui=italic
"hi ocamlUnit ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff79c6 guibg=NONE gui=NONE
"" }}}

"" Neovim Terminal Colors {{{
"if has("nvim")
"  let g:terminal_color_0 = "#000000"
"  let g:terminal_color_1 = "#FF5555"
"  let g:terminal_color_2 = "#50FA7B"
"  let g:terminal_color_3 = "#F1FA8C"
"  let g:terminal_color_4 = "#BD93F9"
"  let g:terminal_color_5 = "#FF79C6"
"  let g:terminal_color_6 = "#8BE9FD"
"  let g:terminal_color_7 = "#BFBFBF"
"  let g:terminal_color_8 = "#4D4D4D"
"  let g:terminal_color_9 = "#FF6E67"
"  let g:terminal_color_10 = "#5AF78E"
"  let g:terminal_color_11 = "#F4F99D"
"  let g:terminal_color_12 = "#CAA9FA"
"  let g:terminal_color_13 = "#FF92D0"
"  let g:terminal_color_14 = "#9AEDFE"
"  let g:terminal_color_15 = "#E6E6E6"
"endif
"" }}}

" TODO: Verify this
" Must be at EOF. See: https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
" set background=dark

" }}}

