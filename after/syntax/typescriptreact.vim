if dracula#should_abort('typescriptreact')
    finish
endif

runtime! syntax/typescript.vim

hi! def link tsxAttrib           DraculaGreenItalic
hi! def link tsxEqual            Operator
hi! def link tsxIntrinsicTagName Keyword
hi! def link tsxTagName          Type
