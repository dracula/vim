if ! exists('b:current_syntax') || b:current_syntax !=# 'ocaml'
    finish
endif

hi! link ocamlModule                KimbieCyanItalic
hi! link ocamlConstructor           KimbieCyanItalic
hi! link ocamlType                  KimbiePurple
hi! link ocamlModPath               KimbiePurple
hi! link ocamlTodo                  KimbieOrangeItalic
hi! link ocamlLabel                 KimbieGreen
hi! link ocamlFullMod               KimbieCyanItalic
hi! link ocamlWith                  KimbieCyanItalic
hi! link ocamlUnit                  KimbiePink
