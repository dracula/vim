if ! exists('b:current_syntax') || b:current_syntax !=# 'vim'
    finish
endif

hi! link vimAutoCmdSfxList     KimbieCyanItalic
hi! link vimAutoEventList      KimbieCyanItalic
hi! link vimEnvVar             KimbiePurple
hi! link vimFunction           KimbieGreen
hi! link vimHiBang             KimbiePink
hi! link vimOption             KimbieCyanItalic
hi! link vimSetMod             KimbiePink
hi! link vimSetSep             Delimiter
hi! link vimUserAttrbCmpltFunc KimbieGreen
hi! link vimUserFunc           KimbieGreen
