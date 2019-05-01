if dracula#should_abort('gitcommit')
    finish
endif

" The following two are misnomers. Colors are correct.
hi! def link diffFile    DraculaGreen
hi! def link diffNewFile DraculaRed

hi! def link diffAdded   DraculaGreen
hi! def link diffLine    DraculaCyanItalic
hi! def link diffRemoved DraculaRed

