if dracula#should_abort('javascript', 'javascriptreact', 'javascript.jsx')
  finish
endif

hi! link javaScriptBraces   Delimiter
hi! link javaScriptNumber   Constant
hi! link javaScriptNull     Constant
hi! link javaScriptFunction Keyword

" pangloss/vim-javascript {{{

hi! link jsArrowFunction           Operator
hi! link jsClassMethodType         Keyword
hi! link jsDestructuringAssignment DraculaOrangeItalic
hi! link jsDocParam                DraculaOrangeItalic
hi! link jsDocTags                 Keyword
hi! link jsDocType                 Type
hi! link jsDocTypeBrackets         DraculaCyan
hi! link jsFuncArgOperator         Operator
hi! link jsFunction                Keyword
hi! link jsTemplateBraces          Special

"}}}

" maxmellon/vim-jsx-pretty {{{

hi! link jsxTagName         Function
hi! link jsxCloseTag        DraculaPurple
hi! link jsxCloseString     Comment
hi! link jsxOpenPunct       Comment

" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
