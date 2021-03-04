if dracula#should_abort()
  finish
endif

" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Search'],
    \ 'fg+':     ['fg', 'Normal'],
    \ 'bg+':     ['bg', 'Normal'],
    \ 'hl+':     ['fg', 'DraculaOrange'],
    \ 'info':    ['fg', 'DraculaPurple'],
    \ 'border':  ['fg', 'Ignore'],
    \ 'prompt':  ['fg', 'DraculaGreen'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'],
    \}
endif
"}}}
" ALE: {{{
if exists('g:ale_enabled')
  hi! link ALEError              DraculaErrorLine
  hi! link ALEWarning            DraculaWarnLine
  hi! link ALEInfo               DraculaInfoLine

  hi! link ALEErrorSign          DraculaRed
  hi! link ALEWarningSign        DraculaOrange
  hi! link ALEInfoSign           DraculaCyan

  hi! link ALEVirtualTextError   Comment
  hi! link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: {{{
if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch     IncSearch
  hi! link CtrlPBufferHid Normal
endif
" }}}
" Tree-sitter: {{{
if exists('g:loaded_nvim_treesitter')
  " # Misc
  hi! link TSError DraculaRed
  hi! link TSPunctDelimiter Normal
  hi! link TSPunctBracket Normal
  hi! link TSPunctSpecial Normal
  " # Constants
  hi! link TSConstant DraculaPurple
  hi! link TSConstBuiltin DraculaPurple
  hi! link TSConstMacro DraculaCyan
  hi! link TSStringRegex DraculaYellow
  hi! link TSString DraculaYellow
  hi! link TSStringEscape DraculaCyan
  hi! link TSSymbol DraculaPurple
  hi! link TSCharacter DraculaGreen
  hi! link TSNumber DraculaPurple
  hi! link TSBoolean DraculaPurple
  hi! link TSFloat DraculaPurple
  hi! link TSAnnotation DraculaYellow
  hi! link TSAttribute DraculaCyan
  hi! link TSNamespace DraculaPink
  " # Functions
  hi! link TSFuncBuiltin DraculaCyan
  hi! link TSFunction DraculaGreen
  hi! link TSFuncMacro DraculaGreen
  hi! link TSParameter DraculaOrange
  hi! link TSParameterReference DraculaOrange
  hi! link TSMethod DraculaGreen
  hi! link TSField DraculaOrange
  hi! link TSProperty Normal
  hi! link TSConstructor DraculaCyan
  " # Keywords
  hi! link TSConditional DraculaPink
  hi! link TSRepeat DraculaPink
  hi! link TSLabel DraculaPurpleItalic
  hi! link TSKeyword DraculaPink
  hi! link TSKeywordFunction DraculaCyan
  hi! link TSKeywordOperator DraculaPink
  hi! link TSOperator DraculaPink
  hi! link TSException DraculaPurple
  hi! link TSType DraculaCyanItalic
  hi! link TSTypeBuiltin DraculaCyanItalic
  hi! link TSStructure DraculaPurple
  hi! link TSInclude DraculaPink
  " # Variable
  hi! link TSVariable Normal
  hi! link TSVariableBuiltin DraculaPurple
  " # Text
  hi! link TSText DraculaYellow
  hi! link TSStrong DraculaYellowBold
  hi! link TSEmphasis DraculaYellowItalic
  hi! link TSUnderline DraculaYellowUnderline
  hi! link TSTitle DraculaYellow
  hi! link TSLiteral DraculaYellow
  hi! link TSURI DraculaYellow
  " # Tags
  hi! link TSTag DraculaCyan
  hi! link TSTagDelimiter Normal
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
