" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    return ! exists('b:current_syntax') || index(a:000, b:current_syntax) < 0 || ! exists('g:colors_name') || g:colors_name !=# 'dracula'
endfunction
