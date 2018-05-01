if ! exists('b:current_syntax') || b:current_syntax !=# 'vim'
    finish
endif

hi! link vimAutoCmdSfxList     DraculaCyanItalic
hi! link vimAutoEventList      DraculaCyanItalic
hi! link vimEnvVar             DraculaPurple
hi! link vimFunction           DraculaGreen
hi! link vimHiBang             DraculaPink
hi! link vimOption             DraculaCyanItalic
hi! link vimSetMod             DraculaPink
hi! link vimSetSep             Delimiter
hi! link vimUserAttrbCmpltFunc DraculaGreen
hi! link vimUserFunc           DraculaGreen
