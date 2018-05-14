if ! exists('b:current_syntax') || b:current_syntax !=# 'css'
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        KimbiePink
hi! link cssAttributeSelector KimbieGreenItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             KimbiePink
hi! link cssProp              KimbieCyan
hi! link cssPseudoClassId     KimbieGreenItalic
hi! link cssSelectorOp        Delimiter
hi! link cssUnitDecorators    KimbiePink
hi! link cssVendor            KimbieGreenItalic
