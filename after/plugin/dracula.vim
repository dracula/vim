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
" ALE: {{{
if exists('g:ale_enabled')
  hi! def link ALEError              DraculaErrorLine
  hi! def link ALEWarning            DraculaWarnLine
  hi! def link ALEInfo               DraculaInfoLine

  hi! def link ALEErrorSign          DraculaRed
  hi! def link ALEWarningSign        DraculaOrange
  hi! def link ALEInfoSign           DraculaCyan

  hi! def link ALEVirtualTextError   Comment
  hi! def link ALEVirtualTextWarning Comment
endif
" }}}
" CtrlP: {{{
if exists('g:loaded_ctrlp')
  hi! def link CtrlPMatch IncSearch
  hi! def link CtrlPBufferHid Normal
endif
" }}}

" vim: fdm=marker ts=2 sts=2 sw=2:
