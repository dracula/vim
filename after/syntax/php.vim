if ! exists('b:current_syntax') || b:current_syntax !=# 'php'
    finish
endif

hi! link phpClass           Type
hi! link phpDocTags         DraculaCyanItalic
hi! link phpFunction        Function
hi! link phpParent          Normal
hi! link phpSpecialFunction DraculaCyan
