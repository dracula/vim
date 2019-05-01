if dracula#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown {{{1
  hi! def link htmlBold       DraculaOrangeBold
  hi! def link htmlBoldItalic DraculaOrangeBoldItalic
  hi! def link htmlH1         DraculaPurpleBold
  hi! def link htmlItalic     DraculaYellowItalic
  hi! def link mkdBlockquote  DraculaYellowItalic
  hi! def link mkdBold        DraculaOrangeBold
  hi! def link mkdBoldItalic  DraculaOrangeBoldItalic
  hi! def link mkdCode        DraculaGreen
  hi! def link mkdCodeEnd     DraculaGreen
  hi! def link mkdCodeStart   DraculaGreen
  hi! def link mkdHeading     DraculaPurpleBold
  hi! def link mkdInlineUrl   DraculaLink
  hi! def link mkdItalic      DraculaYellowItalic
  hi! def link mkdLink        DraculaPink
  hi! def link mkdListItem    DraculaCyan
  hi! def link mkdRule        DraculaComment
  hi! def link mkdUrl         DraculaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: {{{1
  hi! def link markdownBlockquote        DraculaCyan
  hi! def link markdownBold              DraculaOrangeBold
  hi! def link markdownBoldItalic        DraculaOrangeBoldItalic
  hi! def link markdownCodeBlock         DraculaGreen
  hi! def link markdownCode              DraculaGreen
  hi! def link markdownCodeDelimiter     DraculaGreen
  hi! def link markdownH1                DraculaPurpleBold
  hi! def link markdownH2                markdownH1
  hi! def link markdownH3                markdownH1
  hi! def link markdownH4                markdownH1
  hi! def link markdownH5                markdownH1
  hi! def link markdownH6                markdownH1
  hi! def link markdownHeadingDelimiter  markdownH1
  hi! def link markdownHeadingRule       markdownH1
  hi! def link markdownItalic            DraculaYellowItalic
  hi! def link markdownLinkText          DraculaPink
  hi! def link markdownListMarker        DraculaCyan
  hi! def link markdownOrderedListMarker DraculaCyan
  hi! def link markdownRule              DraculaComment
  hi! def link markdownUrl               DraculaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2:
