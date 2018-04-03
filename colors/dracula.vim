" Dracula Theme: v1.3.2 {{{
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
scriptencoding utf8
" }}}

" Configuration: {{{

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

" Palette: {{{2

let s:fg        = ['#F8F8F2', 255]

let s:bglighter = ['#424450', 238]
let s:bglight   = ['#343746', 237]
let s:bg        = ['#282A36', 236]
let s:bgdark    = ['#21222C', 235]
let s:bgdarker  = ['#191A21', 234]

let s:subtle    = ['#424450', 238]

let s:selection = ['#44475A', 239]
let s:comment   = ['#6272A4',  61]
let s:cyan      = ['#8BE9FD', 117]
let s:green     = ['#50FA7B',  84]
let s:orange    = ['#FFB86C', 215]
let s:pink      = ['#FF79C6', 212]
let s:purple    = ['#BD93F9', 141]
let s:red       = ['#FF5555', 203]
let s:yellow    = ['#F1FA8C', 228]

let s:none      = ['NONE', 'NONE']

if has('nvim')
  let g:terminal_color_0  = '#44475A'
  let g:terminal_color_1  = '#DE312B'
  let g:terminal_color_2  = '#2FD651'
  let g:terminal_color_3  = '#D0D662'
  let g:terminal_color_4  = '#9C6FCF'
  let g:terminal_color_5  = '#DE559C'
  let g:terminal_color_6  = '#6AC5D3'
  let g:terminal_color_7  = '#D7D4C8'
  let g:terminal_color_8  = '#656B84'
  let g:terminal_color_9  = '#FF5555'
  let g:terminal_color_10 = '#50FA7B'
  let g:terminal_color_11 = '#F1FA8C'
  let g:terminal_color_12 = '#BD93F9'
  let g:terminal_color_13 = '#FF79C6'
  let g:terminal_color_14 = '#8BE9FD'
  let g:terminal_color_15 = '#F8F8F2'
endif

" }}}2
" User Configuration: {{{2

if !exists('g:dracula_bold')
  let g:dracula_bold = 1
endif

if !exists('g:dracula_italic')
  let g:dracula_italic = 1
endif

if !exists('g:dracula_underline')
  let g:dracula_underline = 1
endif

if !exists('g:dracula_undercurl') && g:dracula_underline != 0
  let g:dracula_undercurl = 1
endif

if !exists('g:dracula_inverse')
  let g:dracula_inverse = 1
endif

if !exists('g:dracula_colorterm')
  let g:dracula_colorterm = 1
endif

"}}}2
" Script Helpers: {{{2

let s:attrs = {
      \ 'bold': g:dracula_bold == 1 ? 'bold' : 0,
      \ 'italic': g:dracula_italic == 1 ? 'italic' : 0,
      \ 'underline': g:dracula_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:dracula_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:dracula_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), {idx, val -> type(val) == 1})
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
" Dracula Highlight Groups: {{{2

call s:h('DraculaBgLight', s:none, s:bglight)
call s:h('DraculaBgLighter', s:none, s:bglighter)
call s:h('DraculaBgDark', s:none, s:bgdark)
call s:h('DraculaBgDarker', s:none, s:bgdarker)

call s:h('DraculaFg', s:fg)
call s:h('DraculaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('DraculaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('DraculaComment', s:comment)
call s:h('DraculaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('DraculaSelection', s:none, s:selection)

call s:h('DraculaSubtle', s:subtle)

call s:h('DraculaCyan', s:cyan)
call s:h('DraculaCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('DraculaGreen', s:green)
call s:h('DraculaGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('DraculaGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('DraculaGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('DraculaOrange', s:orange)
call s:h('DraculaOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('DraculaOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('DraculaOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('DraculaOrangeInverse', s:bg, s:orange)

call s:h('DraculaPink', s:pink)
call s:h('DraculaPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('DraculaPurple', s:purple)
call s:h('DraculaPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('DraculaPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('DraculaRed', s:red)
call s:h('DraculaRedInverse', s:fg, s:red)

call s:h('DraculaYellow', s:yellow)
call s:h('DraculaYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('DraculaError', s:red, s:none, [s:attrs.undercurl], s:red)
call s:h('DraculaWarn', s:orange, s:none, [s:attrs.undercurl], s:orange)

call s:h('DraculaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('DraculaWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('DraculaInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('DraculaTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('DraculaSearch', s:green, s:none, [s:attrs.inverse])
call s:h('DraculaBoundary', s:comment, s:bgdark)
call s:h('DraculaLink', s:cyan, s:none, [s:attrs.underline])

call s:h('DraculaDiffChange', s:none, s:none)
call s:h('DraculaDiffText', s:bg, s:orange)
call s:h('DraculaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: {{{

" Core: {{{2
set background=dark
call s:h('Normal', s:fg, g:dracula_colorterm == 1 ? s:bg : s:none)

hi! link Visual DraculaSelection
hi! link VisualNOS Visual
hi! link Search DraculaSearch
hi! link IncSearch DraculaOrangeInverse

" Status / Command Line
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])

" Tabs
hi! link TabLine DraculaBoundary
hi! link TabLineFill DraculaBgDarker
hi! link TabLineSel Normal

" Popup Menu
hi! link Pmenu DraculaBgDark
hi! link PmenuSel DraculaSelection
hi! link PmenuSbar DraculaBgDark
hi! link PmenuThumb DraculaSelection

" Messages
hi! link ErrorMsg DraculaRedInverse
hi! link WarningMsg DraculaOrangeInverse
hi! link MoreMsg DraculaFgBold
hi! link Question DraculaFgBold
hi! link Title DraculaGreenBold

" Folds
hi! link Folded DraculaBoundary
hi! link VertSplit DraculaBoundary
hi! link FoldColumn DraculaSubtle

" Line Numbers
hi! link CursorLineNr DraculaYellow
hi! link LineNr DraculaComment
hi! link SignColumn DraculaComment

" Whitespace / Non-text
call s:h('CursorLine', s:none, s:subtle) " Required as some plugins will overwrite
hi! link NonText DraculaSubtle
hi! link CursorColumn DraculaSelection
hi! link ColorColumn DraculaSelection

" Diffs
hi! link DiffAdd DraculaGreen
hi! link DiffChange DraculaDiffChange
hi! link DiffText DraculaDiffText
hi! link DiffDelete DraculaDiffDelete

"}}}2
" NetRW: {{{2

hi! link Directory DraculaPurpleBold

" }}}2
" GitGutter: {{{2
hi! link GitGutterAdd DraculaGreen
hi! link GitGutterChange DraculaYellow
hi! link GitGutterChangeDelete DraculaOrange
hi! link GitGutterDelete DraculaRed
"}}}2

" }}}
" Syntax: {{{

hi! link Comment DraculaComment
hi! link Underlined DraculaFgUnderline
hi! link Todo DraculaTodo

hi! link Error DraculaError
hi! link SpellBad DraculaErrorLine
hi! link SpellLocal DraculaWarnLine
hi! link SpellCap DraculaInfoLine
hi! link SpellRare DraculaInfoLine

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

hi! link Delimiter DraculaFg

hi! link Special DraculaPink
hi! link SpecialKey DraculaRed
hi! link SpecialComment DraculaCyanItalic
hi! link Tag DraculaCyan
hi! link helpHyperTextJump DraculaLink
hi! link helpCommand DraculaPurple
hi! link helpExample DraculaGreen

call s:h('MatchParen', s:fg, s:pink, [s:attrs.underline])
call s:h('Conceal', s:comment, s:bglight)

" CSS: {{{2

hi! link cssAttrComma Delimiter
hi! link cssBraces Delimiter
hi! link cssSelectorOp Delimiter
hi! link cssFunctionComma Delimiter
hi! link cssAttributeSelector DraculaGreenItalic
hi! link cssAttrRegion DraculaPink
hi! link cssUnitDecorators DraculaPink
hi! link cssProp DraculaCyan
hi! link cssPseudoClassId DraculaGreenItalic

"}}}2
" Git Commit: {{{2

" These groups appear when editing commit messages.
" They are not part of the Diff interface of vim diff

" The following two are misnomers. Colors are correct.
hi! link diffFile DraculaGreen
hi! link diffNewFile DraculaRed

hi! link diffLine DraculaCyanItalic
hi! link diffRemoved DraculaRed
hi! link diffAdded DraculaGreen

"}}}2
" HTML: {{{2

hi! link htmlTag DraculaFg
hi! link htmlArg DraculaGreenItalic
hi! link htmlTitle DraculaFg
hi! link htmlH1 DraculaFg
hi! link htmlSpecialChar DraculaPurple

"}}}2
" JavaScript: {{{2

hi! link javaScriptBraces Delimiter
hi! link javaScriptNumber Constant
hi! link javaScriptNull Constant
hi! link javaScriptFunction DraculaPink

"}}}2
" Markdown: {{{2

hi! link markdownH1 DraculaPurpleBold
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownHeadingDelimiter markdownH1
hi! link markdownHeadingRule markdownH1

hi! link markdownBold DraculaOrangeBold
hi! link markdownItalic DraculaYellowItalic
hi! link markdownBoldItalic DraculaOrangeBoldItalic

hi! link markdownBlockquote DraculaCyan

hi! link markdownCode DraculaGreenItalic
hi! link markdownCodeDelimiter DraculaGreen

hi! link markdownListMarker DraculaCyan
hi! link markdownOrderedListMarker DraculaCyan

hi! link markdownRule DraculaComment

hi! link markdownLinkText DraculaPink
hi! link markdownUrl DraculaLink

"}}}2
" Ruby: {{{2

let g:ruby_operators=1
hi! link rubyStringDelimiter DraculaYellow
hi! link rubyInterpolationDelimiter DraculaPink
hi! link rubyCurlyBlock DraculaPink
hi! link rubyBlockParameter DraculaOrangeItalic
hi! link rubyBlockArgument DraculaOrangeItalic
hi! link rubyInstanceVariable DraculaPurpleItalic
hi! link rubyGlobalVariable DraculaPurple
hi! link rubyRegexpDelimiter DraculaRed

"}}}2
" YAML: {{{2

hi! link yamlBlockMappingKey DraculaCyan
hi! link yamlPlainScalar DraculaYellow
hi! link yamlAnchor DraculaPinkItalic
hi! link yamlAlias DraculaGreenItalicUnderline
hi! link yamlNodeTag DraculaPink
hi! link yamlFlowCollection DraculaPink
hi! link yamlFlowIndicator Delimiter

"}}}2
" Vim Script: {{{2

hi! link vimOption DraculaCyanItalic
hi! link vimAutoEventList DraculaCyanItalic
hi! link vimAutoCmdSfxList DraculaCyanItalic
hi! link vimSetSep Delimiter
hi! link vimSetMod DraculaPink
hi! link vimHiBang DraculaPink
hi! link vimEnvVar DraculaPurple
hi! link vimUserFunc DraculaGreen
hi! link vimFunction DraculaGreen
hi! link vimUserAttrbCmpltFunc DraculaGreen

"}}}2

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2:
