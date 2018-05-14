if ! exists('b:current_syntax') || b:current_syntax !=# 'ruby'
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          KimbieOrangeItalic
hi! link rubyBlockParameter         KimbieOrangeItalic
hi! link rubyCurlyBlock             KimbiePink
hi! link rubyGlobalVariable         KimbiePurple
hi! link rubyInstanceVariable       KimbiePurpleItalic
hi! link rubyInterpolationDelimiter KimbiePink
hi! link rubyRegexpDelimiter        KimbieRed
hi! link rubyStringDelimiter        KimbieYellow
