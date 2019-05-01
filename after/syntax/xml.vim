if dracula#should_abort('xml')
    finish
endif

hi! def link xmlAttrib  DraculaGreenItalic
hi! def link xmlEqual   Operator
hi! def link xmlTag     Delimiter
hi! def link xmlTagName Statement

" Fixes missing highlight over end tags
syn region xmlTagName
	\ matchgroup=xmlTag start=+</[^ /!?<>"']\@=+
	\ matchgroup=xmlTag end=+>+
