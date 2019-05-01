if dracula#should_abort('yaml')
    finish
endif

hi! def link yamlAlias           DraculaGreenItalicUnderline
hi! def link yamlAnchor          DraculaPinkItalic
hi! def link yamlBlockMappingKey DraculaCyan
hi! def link yamlFlowCollection  DraculaPink
hi! def link yamlFlowIndicator   Delimiter
hi! def link yamlNodeTag         DraculaPink
hi! def link yamlPlainScalar     DraculaYellow

