if ! exists('b:current_syntax') || b:current_syntax !=# 'ocaml'
    finish
endif

hi! link ocamlModule                DraculaCyanItalic
hi! link ocamlConstructor           DraculaCyanItalic
hi! link ocamlType                  DraculaPurple
hi! link ocamlModPath               DraculaPurple
hi! link ocamlTodo                  DraculaOrangeItalic
hi! link ocamlLabel                 DraculaGreen
hi! link ocamlFullMod               DraculaCyanItalic
hi! link ocamlWith                  DraculaCyanItalic
hi! link ocamlUnit                  DraculaPink
