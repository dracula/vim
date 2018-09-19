if dracula#should_abort('xml')
    finish
endif

hi! link xmlTag Delimiter
hi! link xmlTagName Statement
hi! link xmlAttrib DraculaGreenItalic
hi! link xmlEqual Operator

" Fixes missing highlight over end tags
syn region xmlTagName
	\ matchgroup=xmlTag start=+</[^ /!?<>"']\@=+
	\ matchgroup=xmlTag end=+>+
