if dracula#should_abort('sass')
    finish
endif

hi! def link sassClass                  cssClassName
hi! def link sassClassChar              cssClassNameDot
hi! def link sassId                     cssIdentifier
hi! def link sassIdChar                 cssIdentifier
hi! def link sassInterpolationDelimiter DraculaPink
hi! def link sassMixinName              Function
hi! def link sassProperty               cssProp
hi! def link sassVariableAssignment     Operator
