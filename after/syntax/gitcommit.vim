if ! exists('b:current_syntax') || b:current_syntax !=# 'gitcommit'
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    DraculaGreen
hi! link diffNewFile DraculaRed

hi! link diffAdded   DraculaGreen
hi! link diffLine    DraculaCyanItalic
hi! link diffRemoved DraculaRed

