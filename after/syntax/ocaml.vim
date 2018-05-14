if ! exists('b:current_syntax') || b:current_syntax !=# 'ocaml'
    finish
endif

hi! link ocamlModule  Type
hi! link ocamlModPath Normal
hi! link ocamlLabel   DraculaOrangeItalic
