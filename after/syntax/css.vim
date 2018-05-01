if ! exists('b:current_syntax') || b:current_syntax !=# 'css'
    finish
endif

hi! link cssAttrComma         Delimiter
hi! link cssAttrRegion        DraculaPink
hi! link cssAttributeSelector DraculaGreenItalic
hi! link cssBraces            Delimiter
hi! link cssFunctionComma     Delimiter
hi! link cssNoise             DraculaPink
hi! link cssProp              DraculaCyan
hi! link cssPseudoClassId     DraculaGreenItalic
hi! link cssSelectorOp        Delimiter
hi! link cssUnitDecorators    DraculaPink
hi! link cssVendor            DraculaGreenItalic
