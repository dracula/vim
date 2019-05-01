if dracula#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! def link rubyBlockArgument          DraculaOrangeItalic
hi! def link rubyBlockParameter         DraculaOrangeItalic
hi! def link rubyCurlyBlock             DraculaPink
hi! def link rubyGlobalVariable         DraculaPurple
hi! def link rubyInstanceVariable       DraculaPurpleItalic
hi! def link rubyInterpolationDelimiter DraculaPink
hi! def link rubyRegexpDelimiter        DraculaRed
hi! def link rubyStringDelimiter        DraculaYellow
