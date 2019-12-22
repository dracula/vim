if dracula#should_abort('yaml')
    finish
endif

hi! link yamlAlias           DraculaGreenItalicUnderline
hi! link yamlAnchor          DraculaPinkItalic
hi! link yamlBlockMappingKey DraculaCyan
hi! link yamlFlowCollection  DraculaPink
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         DraculaPink
hi! link yamlPlainScalar     DraculaYellow

" Links for stephpy/yaml

" yamlConstant
hi! link Keyword DraculaPurple
" yamlIndicator
hi! link PreCondit DraculaPink
" yamlAnchor, yamlAlias
hi! link Function DraculaPinkItalic
" yamlKey
hi! link Identifier DraculaCyan
" yamlType
hi! link Type DraculaPink

" yamlComment
hi! link Comment DraculaComment
" yamlInline, yamlBlock
hi! link Operator Delimiter
" yamlString
hi! link String DraculaYellow
" yamlEscape
hi! link Special DraculaPink
