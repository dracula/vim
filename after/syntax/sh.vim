if dracula#should_abort('bash', 'ksh', 'posix', 'sh')
    finish
endif

hi! def link shCommandSub NONE
hi! def link shEscape     DraculaRed
hi! def link shParenError NONE
