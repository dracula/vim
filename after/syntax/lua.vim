if dracula#should_abort('lua')
    finish
endif

hi! link luaFunc  DraculaCyan
hi! link luaTable DraculaFg

" tbastos/vim-lua {{{

hi! link luaBraces       DraculaFg
hi! link luaBuiltIn      DraculaPurpleItalic
hi! link luaDocTag       Keyword
hi! link luaFuncArgName  DraculaOrangeItalic
hi! link luaFuncCall     Function
hi! link luaFuncKeyword  Keyword
hi! link luaLocal        Keyword
hi! link luaSpecialTable DraculaPurple
hi! link luaSpecialValue DraculaCyan

" }}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
