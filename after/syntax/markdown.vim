if ! exists('b:current_syntax')
  finish
endif

if b:current_syntax ==# 'mkd'
  " plasticboy/vim-markdown {{{1
  hi! link htmlBold       KimbieOrangeBold
  hi! link htmlBoldItalic KimbieOrangeBoldItalic
  hi! link htmlH1         KimbiePurpleBold
  hi! link htmlItalic     KimbieYellowItalic
  hi! link mkdBlockquote  KimbieYellowItalic
  hi! link mkdBold        KimbieOrangeBold
  hi! link mkdBoldItalic  KimbieOrangeBoldItalic
  hi! link mkdCode        KimbieGreen
  hi! link mkdCodeEnd     KimbieGreen
  hi! link mkdCodeStart   KimbieGreen
  hi! link mkdInlineUrl   KimbieLink
  hi! link mkdItalic      KimbieYellowItalic
  hi! link mkdLink        KimbiePink
  hi! link mkdListItem    KimbieCyan
  hi! link mkdRule        KimbieComment
  hi! link mkdUrl         KimbieLink
  "}}}1
elseif b:current_syntax ==# 'markdown'
  " Builtin: {{{1
  hi! link markdownBlockquote        KimbieCyan
  hi! link markdownBold              KimbieOrangeBold
  hi! link markdownBoldItalic        KimbieOrangeBoldItalic
  hi! link markdownCode              KimbieGreen
  hi! link markdownCodeDelimiter     KimbieGreen
  hi! link markdownH1                KimbiePurpleBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            KimbieYellowItalic
  hi! link markdownLinkText          KimbiePink
  hi! link markdownListMarker        KimbieCyan
  hi! link markdownOrderedListMarker KimbieCyan
  hi! link markdownRule              KimbieComment
  hi! link markdownUrl               KimbieLink
  "}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2:
