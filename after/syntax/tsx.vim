if dracula#should_abort('typescript.tsx')
    finish
endif

runtime! syntax/typescript.vim

hi! link tsxAttrib           DraculaGreenItalic
hi! link tsxEqual            Operator
hi! link tsxIntrinsicTagName Keyword
hi! link tsxTagName          Type
