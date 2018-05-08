if ! exists('b:current_syntax') || b:current_syntax !=# 'typescript'
    finish
endif

hi! link typescriptArrayMethod            DraculaCyan
hi! link typescriptArrowFunc              Operator
hi! link typescriptArrowFuncArg           DraculaOrangeItalic
hi! link typescriptAssign                 Operator
hi! link typescriptBinaryOp               Operator
hi! link typescriptBraces                 Normal
hi! link typescriptCall                   typescriptArrowFuncArg
hi! link typescriptClassHeritage          Type
hi! link typescriptClassName              Type
hi! link typescriptDateMethod             DraculaCyan
hi! link typescriptDateStaticMethod       Function
hi! link typescriptDecorator              DraculaGreenItalic
hi! link typescriptES6SetMethod           DraculaCyan
hi! link typescriptEndColons              Normal
hi! link typescriptEnum                   Type
hi! link typescriptEnumKeyword            Keyword
hi! link typescriptFuncKeyword            Keyword
hi! link typescriptGlobal                 Type
hi! link typescriptGlobalMethod           DraculaCyan
hi! link typescriptGlobalObjects          Type
hi! link typescriptIdentifier             Keyword
hi! link typescriptInterfaceHeritage      Type
hi! link typescriptInterfaceName          Type
hi! link typescriptInterpolationDelimiter Keyword
hi! link typescriptKeywordOp              Keyword
hi! link typescriptLogicSymbols           Operator
hi! link typescriptMember                 Normal
hi! link typescriptMemberOptionality      Special
hi! link typescriptObjectColon            Special
hi! link typescriptObjectLabel            Normal
hi! link typescriptObjectSpread           Operator
hi! link typescriptOperator               Operator
hi! link typescriptPredefinedType         Type
hi! link typescriptTernaryOp              Operator
hi! link typescriptTypeAnnotation         Special
hi! link typescriptTypeCast               Operator
hi! link typescriptUnaryOp                Operator
hi! link typescriptVariable               Keyword
