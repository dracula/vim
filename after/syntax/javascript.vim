if ! exists('b:current_syntax') || b:current_syntax !=# 'javascript'
    finish
endif

hi! link javaScriptBraces   Delimiter
hi! link javaScriptNumber   Constant
hi! link javaScriptNull     Constant
hi! link javaScriptFunction DraculaPink

