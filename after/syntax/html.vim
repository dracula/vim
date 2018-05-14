if ! exists('b:current_syntax') || b:current_syntax !=# 'html'
    finish
endif

hi! link htmlTag         KimbieFg
hi! link htmlArg         KimbieGreenItalic
hi! link htmlTitle       KimbieFg
hi! link htmlH1          KimbieFg
hi! link htmlSpecialChar KimbiePurple
