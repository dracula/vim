if dracula#should_abort()
  finish
endif

" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
        \ 'fg':      ['fg', 'Normal'],
        \ 'bg':      ['bg', 'Normal'],
        \ 'hl':      ['fg', 'Search'],
        \ 'fg+':     ['fg', 'Normal'],
        \ 'bg+':     ['bg', 'Normal'],
        \ 'hl+':     ['fg', 'DraculaOrange'],
        \ 'info':    ['fg', 'DraculaPurple'],
        \ 'border':  ['fg', 'Ignore'],
        \ 'prompt':  ['fg', 'DraculaGreen'],
        \ 'pointer': ['fg', 'Exception'],
        \ 'marker':  ['fg', 'Keyword'],
        \ 'spinner': ['fg', 'Label'],
        \ 'header':  ['fg', 'Comment'] }
endif
"}}}
" GitGutter: {{{

" FIXME: This can be removed once airblade/vim-gitgutter#520 closes
" see: https://github.com/airblade/vim-gitgutter/issues/520#issuecomment-389931281
if exists('g:gitgutter_enabled')
  hi! link GitGutterAdd DraculaGreen
  hi! link GitGutterChange DraculaYellow
  hi! link GitGutterChangeDelete DraculaOrange
  hi! link GitGutterDelete DraculaRed
endif

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2:
