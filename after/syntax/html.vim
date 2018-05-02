if ! exists('b:current_syntax') || b:current_syntax !=# 'html'
    finish
endif

hi! link htmlTag         DraculaFg
hi! link htmlArg         DraculaGreenItalic
hi! link htmlTitle       DraculaFg
hi! link htmlH1          DraculaFg
hi! link htmlSpecialChar DraculaPurple
