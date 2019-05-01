if dracula#should_abort('typescript.tsx')
    finish
endif

runtime! syntax/typescript.vim

hi! def link tsxAttrib           DraculaGreenItalic
hi! def link tsxEqual            Operator
hi! def link tsxIntrinsicTagName Keyword
hi! def link tsxTagName          Type
