augroup dracula_fzf
  autocmd!
augroup END

if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
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

  let s:laststatus = &laststatus
  let s:showmode = &showmode == 0 ? 'showmode' : 'noshowmode'
  let s:ruler = &ruler == 0 ? 'ruler' : 'noruler'
  augroup dracula_fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
          \| autocmd BufLeave <buffer> exec 'set laststatus=' .s:laststatus . ' ' . s:showmode . ' ' . s:ruler
  augroup END
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
