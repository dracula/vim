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
  hi! link TSError ErrorMsg
  hi! link TSPunctDelimiter Delimiter
  hi! link TSPunctBracket Normal
  hi! link TSPunctSpecial Special
  " # Constants
  hi! link TSConstant Constant
  hi! link TSConstBuiltin Constant
  hi! link TSConstMacro Macro
  hi! link TSStringRegex String
  hi! link TSString String
  hi! link TSStringEscape Character
  hi! link TSSymbol DraculaPurple
  hi! link TSCharacter Character
  hi! link TSNumber Number
  hi! link TSBoolean Boolean
  hi! link TSFloat Float
  hi! link TSAnnotation DraculaYellow
  hi! link TSAttribute DraculaGreenItalic
  hi! link TSNamespace Structure
  " # Functions
  hi! link TSFuncBuiltin DraculaCyan
  hi! link TSFunction Function
  hi! link TSFuncMacro Function
  hi! link TSParameter DraculaOrangeItalic
  hi! link TSParameterReference DraculaOrange
  hi! link TSMethod Function
  hi! link TSField DraculaOrange
  hi! link TSProperty Normal
  hi! link TSConstructor DraculaCyan
  " # Keywords
  hi! link TSConditional Conditional
  hi! link TSRepeat DraculaPink
  hi! link TSLabel DraculaPurpleItalic
  hi! link TSKeyword Keyword
  hi! link TSKeywordFunction DraculaCyan
  hi! link TSKeywordOperator Operator
  hi! link TSOperator Operator
  hi! link TSException DraculaPurple
  hi! link TSType Type
  hi! link TSTypeBuiltin Type
  hi! link TSStructure Structure
  hi! link TSInclude Include
  " # Variable
  hi! link TSVariable Normal
  hi! link TSVariableBuiltin DraculaPurpleItalic
  " # Text
  hi! link TSText Normal
  hi! link TSStrong DraculaFgBold
  hi! link TSEmphasis DraculaFg
  hi! link TSUnderline Underlined
  hi! link TSTitle DraculaYellow
  hi! link TSLiteral DraculaYellow
  hi! link TSURI DraculaYellow
  " # Tags
  hi! link TSTag DraculaCyan
  hi! link TSTagDelimiter Normal
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
