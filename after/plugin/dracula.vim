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

  augroup dracula_fzf
    autocmd!
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
          \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
  augroup END
endif
"}}}
" GitGutter: {{{

if exists('g:gitgutter_enabled')
  hi! link GitGutterAdd DraculaGreen
  hi! link GitGutterChange DraculaYellow
  hi! link GitGutterChangeDelete DraculaOrange
  hi! link GitGutterDelete DraculaRed
endif

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2:
