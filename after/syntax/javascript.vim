if dracula#should_abort('javascript')
    finish
endif

hi! def link javaScriptBraces   Delimiter
hi! def link javaScriptNumber   Constant
hi! def link javaScriptNull     Constant
hi! def link javaScriptFunction Keyword

" pangloss/vim-javascript {{{

hi! def link jsArrowFunction           Operator
hi! def link jsClassMethodType         Keyword
hi! def link jsDestructuringAssignment DraculaOrangeItalic
hi! def link jsDocParam                DraculaOrangeItalic
hi! def link jsDocTags                 Keyword
hi! def link jsDocType                 Type
hi! def link jsDocTypeBrackets         DraculaCyan
hi! def link jsFuncArgOperator         Operator
hi! def link jsFunction                Keyword
hi! def link jsTemplateBraces          Special

"}}}

" vim: set fdm=marker fdl=0:
