" Kimbie Theme: v1.0.0 {{{
"
" https://github.com/rdavison/kimbie-vim
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
" @author Richard Davison <@rdavison>
" @author Jan T. Sott <@idleberg>
scriptencoding utf8
" }}}

" Configuration: {{{

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'kimbie'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: {{{2

let s:kimbie_bg="#291804"
let s:kimbie_green="#088649"
let s:kimbie_black="#0f0c08"
let s:kimbie_dark_gray="#131510"
let s:kimbie_blue="#1b60a5"
let s:kimbie_brown0="#221a0f"
let s:kimbie_purple="#2b2a42"
let s:kimbie_brown1="#362712"
let s:kimbie_brown2="#423523"
let s:kimbie_brown3="#51412c"
let s:kimbie_cyan="#5b7e7a"
let s:kimbie_brown4="#5e452b"
let s:kimbie_dark_red="#5f0d0d"
let s:kimbie_brown5="#645342"
let s:kimbie_brown6="#6e583b"
let s:kimbie_orange1="#7c5021"
let s:kimbie_dark_yellow="#7e602c"
let s:kimbie_brown7="#7f5d38"
let s:kimbie_brown8="#84613d"
let s:kimbie_yellow_green="#889b4a"
let s:kimbie_light_blue="#8ab1b0"
let s:kimbie_salmon="#98676a"
let s:kimbie_tomato="#9d2f23"
let s:kimbie_brown9="#a57a4c"
let s:kimbie_gray="#adadad"
let s:kimbie_brown10="#d3af86"
let s:kimbie_hot_pink="#f73759"
let s:kimbie_hot_pink2="#e3546c"
let s:kimbie_brown11="#e3b583"
let s:kimbie_orange="#f06431"
let s:kimbie_goldenrod="#f79a32"
let s:kimbie_eggshell="#f8f8f0"
let s:kimbie_eggshell2="#e8c097"

let s:fg        = [s:kimbie_eggshell2, 255]

let s:bglighter = [s:kimbie_brown5, 238]
let s:bglight   = [s:kimbie_brown4, 237]
let s:bg        = [s:kimbie_brown0, 236]
let s:bgdark    = [s:kimbie_brown2, 235]
let s:bgdarker  = [s:kimbie_brown1, 234]

let s:subtle    = [s:kimbie_brown1, 238]

let s:selection = [s:kimbie_brown4, 239]
let s:comment   = [s:kimbie_brown7,  61]
let s:cyan      = [s:kimbie_light_blue, 117]
let s:green     = [s:kimbie_yellow_green,  84]
let s:orange    = [s:kimbie_orange, 215]
let s:pink      = [s:kimbie_hot_pink, 212]
let s:purple    = [s:kimbie_salmon, 141]
let s:red       = [s:kimbie_tomato, 203]
let s:yellow    = [s:kimbie_goldenrod, 228]

let s:none      = ['NONE', 'NONE']

let g:kimbie_palette = {
      \ 'fg': s:fg,
      \ 'bg': s:bg,
      \ 'selection': s:selection,
      \ 'comment': s:comment,
      \ 'cyan': s:cyan,
      \ 'green': s:green,
      \ 'orange': s:orange,
      \ 'pink': s:pink,
      \ 'purple': s:purple,
      \ 'red': s:red,
      \ 'yellow': s:yellow,
      \
      \ 'bglighter': s:bglighter,
      \ 'bglight': s:bglight,
      \ 'bgdark': s:bgdark,
      \ 'bgdarker': s:bgdarker,
      \ 'subtle': s:subtle,
      \}

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

if !exists('g:kimbie_bold')
  let g:kimbie_bold = 1
endif

if !exists('g:kimbie_italic')
  let g:kimbie_italic = 1
endif

if !exists('g:kimbie_underline')
  let g:kimbie_underline = 1
endif

if !exists('g:kimbie_undercurl') && g:kimbie_underline != 0
  let g:kimbie_undercurl = 1
endif

if !exists('g:kimbie_inverse')
  let g:kimbie_inverse = 1
endif

if !exists('g:kimbie_colorterm')
  let g:kimbie_colorterm = 1
endif

"}}}2
" Script Helpers: {{{2

let s:attrs = {
      \ 'bold': g:kimbie_bold == 1 ? 'bold' : 0,
      \ 'italic': g:kimbie_italic == 1 ? 'italic' : 0,
      \ 'underline': g:kimbie_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:kimbie_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:kimbie_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
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

function! s:Background()
  if g:kimbie_colorterm || has('gui_running')
    return s:bg
  else
    return s:none
  endif
endfunction

"}}}2
" Kimbie Highlight Groups: {{{2

call s:h('KimbieBgLight', s:none, s:bglight)
call s:h('KimbieBgLighter', s:none, s:bglighter)
call s:h('KimbieBgDark', s:none, s:bgdark)
call s:h('KimbieBgDarker', s:none, s:bgdarker)

call s:h('KimbieFg', s:fg)
call s:h('KimbieFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('KimbieFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('KimbieComment', s:comment)
call s:h('KimbieCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('KimbieSelection', s:none, s:selection)

call s:h('KimbieSubtle', s:subtle)

call s:h('KimbieCyan', s:cyan)
call s:h('KimbieCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('KimbieGreen', s:green)
call s:h('KimbieGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('KimbieGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('KimbieGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('KimbieOrange', s:orange)
call s:h('KimbieOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('KimbieOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('KimbieOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('KimbieOrangeInverse', s:bg, s:orange)

call s:h('KimbiePink', s:pink)
call s:h('KimbiePinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('KimbiePurple', s:purple)
call s:h('KimbiePurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('KimbiePurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('KimbieRed', s:red)
call s:h('KimbieRedInverse', s:fg, s:red)

call s:h('KimbieYellow', s:yellow)
call s:h('KimbieYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('KimbieError', s:red, s:none, [s:attrs.undercurl], s:red)
call s:h('KimbieWarn', s:orange, s:none, [s:attrs.undercurl], s:orange)

call s:h('KimbieErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('KimbieWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('KimbieInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('KimbieTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('KimbieSearch', s:green, s:none, [s:attrs.inverse])
call s:h('KimbieBoundary', s:comment, s:bgdark)
call s:h('KimbieLink', s:cyan, s:none, [s:attrs.underline])

call s:h('KimbieDiffChange', s:none, s:none)
call s:h('KimbieDiffText', s:bg, s:orange)
call s:h('KimbieDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: {{{

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, s:Background())
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  KimbieSelection
hi! link CursorColumn KimbieSelection
hi! link CursorLineNr KimbieYellow
hi! link DiffAdd      KimbieGreen
hi! link DiffChange   KimbieDiffChange
hi! link DiffDelete   KimbieDiffDelete
hi! link DiffText     KimbieDiffText
hi! link Directory    KimbiePurpleBold
hi! link ErrorMsg     KimbieRedInverse
hi! link FoldColumn   KimbieSubtle
hi! link Folded       KimbieBoundary
hi! link IncSearch    KimbieOrangeInverse
hi! link LineNr       KimbieComment
hi! link MoreMsg      KimbieFgBold
hi! link NonText      KimbieSubtle
hi! link Pmenu        KimbieBgDark
hi! link PmenuSbar    KimbieBgDark
hi! link PmenuSel     KimbieSelection
hi! link PmenuThumb   KimbieSelection
hi! link Question     KimbieFgBold
hi! link Search       KimbieSearch
hi! link SignColumn   KimbieComment
hi! link TabLine      KimbieBoundary
hi! link TabLineFill  KimbieBgDarker
hi! link TabLineSel   Normal
hi! link Title        KimbieGreenBold
hi! link VertSplit    KimbieBoundary
hi! link Visual       KimbieSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   KimbieOrangeInverse

" }}}
" Syntax: {{{

" Required as some plugins will overwrite
call s:h('MatchParen', s:fg, s:pink, [s:attrs.underline])
call s:h('Conceal', s:comment, s:bglight)

hi! link Comment KimbieComment
hi! link Underlined KimbieFgUnderline
hi! link Todo KimbieTodo

hi! link Error KimbieError
hi! link SpellBad KimbieErrorLine
hi! link SpellLocal KimbieWarnLine
hi! link SpellCap KimbieInfoLine
hi! link SpellRare KimbieInfoLine

hi! link Constant KimbieYellow
hi! link String KimbieYellow
hi! link Character KimbiePink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier KimbieCyan
hi! link Function KimbieGreen

hi! link Statement KimbiePink
hi! link Conditional KimbiePink
hi! link Repeat KimbiePink
hi! link Label KimbiePink
hi! link Operator KimbiePink
hi! link Keyword KimbiePink
hi! link Exception KimbiePink

hi! link PreProc KimbiePink
hi! link Include KimbiePink
hi! link Define KimbiePink
hi! link Macro KimbiePink
hi! link PreCondit KimbiePink
hi! link StorageClass KimbiePink
hi! link Structure KimbiePink
hi! link Typedef KimbiePink

hi! link Type KimbieCyanItalic

hi! link Delimiter KimbieFg

hi! link Special KimbiePink
hi! link SpecialKey KimbieRed
hi! link SpecialComment KimbieCyanItalic
hi! link Tag KimbieCyan
hi! link helpHyperTextJump KimbieLink
hi! link helpCommand KimbiePurple
hi! link helpExample KimbieGreen

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2:
