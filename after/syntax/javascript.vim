if dracula#should_abort('javascript', 'javascript.jsx') 
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
hi! link jsModuleAsterisk          DraculaPurpleItalic
hi! link jsVariableDef             DraculaPurple

"}}}

" maxmellon/vim-jsx-pretty 

hi! link jsxComponentName   Type
hi! link jsxAttrib          DraculaGreenItalic
hi! link jsxCloseString     DraculaFg

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
