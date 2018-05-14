" Fzf: {{{
if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
        \ 'fg':      ['fg', 'Normal'],
        \ 'bg':      ['bg', 'Normal'],
        \ 'hl':      ['fg', 'Search'],
        \ 'fg+':     ['fg', 'Normal'],
        \ 'bg+':     ['bg', 'Normal'],
        \ 'hl+':     ['fg', 'KimbieOrange'],
        \ 'info':    ['fg', 'KimbiePurple'],
        \ 'border':  ['fg', 'Ignore'],
        \ 'prompt':  ['fg', 'KimbieGreen'],
        \ 'pointer': ['fg', 'Exception'],
        \ 'marker':  ['fg', 'Keyword'],
        \ 'spinner': ['fg', 'Label'],
        \ 'header':  ['fg', 'Comment'] }

  augroup kimbie_fzf
    autocmd!
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
          \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
  augroup END
endif
"}}}
" GitGutter: {{{

if exists('g:gitgutter_enabled')
  hi! link GitGutterAdd KimbieGreen
  hi! link GitGutterChange KimbieYellow
  hi! link GitGutterChangeDelete KimbieOrange
  hi! link GitGutterDelete KimbieRed
endif

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2:
