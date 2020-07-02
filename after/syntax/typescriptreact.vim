if dracula#should_abort('typescriptreact', 'typescript.tsx')
    finish
endif

runtime! syntax/typescript.vim

" HerringtonDarkholme/yats.vim {{{

hi! link tsxTag                Comment
hi! link tsxCloseTag           Comment
hi! link tsxCloseString        Comment
hi! link tsxIntrinsicTagName   Function
hi! link tsxTagName            Function
hi! link tsxFragment           Function
hi! link tsxAttrib             Type
hi! link tsxEqual              Operator

" }}}

" maxmellon/vim-jsx-pretty {{{

hi! link jsxTagName         Function
hi! link jsxCloseTag        DraculaPurple
hi! link jsxCloseString     Comment
hi! link jsxOpenPunct       Comment

" }}}
