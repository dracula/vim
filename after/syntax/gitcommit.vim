if ! exists('b:current_syntax') || b:current_syntax !=# 'gitcommit'
    finish
endif

" The following two are misnomers. Colors are correct.
hi! link diffFile    KimbieGreen
hi! link diffNewFile KimbieRed

hi! link diffAdded   KimbieGreen
hi! link diffLine    KimbieCyanItalic
hi! link diffRemoved KimbieRed

