if dracula#should_abort('typescriptreact')
    finish
endif

runtime! syntax/typescript.vim

hi! link jsxTag         Keyword
hi! link jsxCloseTag    jsxTag
hi! link jsxCloseString jsxTag
hi! link jsxAttrib      DraculaGreenItalic
