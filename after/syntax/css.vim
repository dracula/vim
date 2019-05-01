if dracula#should_abort('css')
    finish
endif

hi! def link cssAttrComma         Delimiter
hi! def link cssAttrRegion        DraculaPink
hi! def link cssAttributeSelector DraculaGreenItalic
hi! def link cssBraces            Delimiter
hi! def link cssFunctionComma     Delimiter
hi! def link cssNoise             DraculaPink
hi! def link cssProp              DraculaCyan
hi! def link cssPseudoClass       DraculaPink
hi! def link cssPseudoClassId     DraculaGreenItalic
hi! def link cssUnitDecorators    DraculaPink
hi! def link cssVendor            DraculaGreenItalic
