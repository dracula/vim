if ! exists('b:current_syntax') || b:current_syntax !=# 'yaml'
    finish
endif

hi! link yamlAlias           KimbieGreenItalicUnderline
hi! link yamlAnchor          KimbiePinkItalic
hi! link yamlBlockMappingKey KimbieCyan
hi! link yamlFlowCollection  KimbiePink
hi! link yamlFlowIndicator   Delimiter
hi! link yamlNodeTag         KimbiePink
hi! link yamlPlainScalar     KimbieYellow

