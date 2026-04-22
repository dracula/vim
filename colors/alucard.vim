runtime autoload/dracula.vim

" let g:dracula#palette = get(g:, 'dracula#palette', {})

let g:dracula#palette.comment   = ['#6C664B', 59]
let g:dracula#palette.selection = ['#CFCFDE', 188]
let g:dracula#palette.subtle    = ['#DCDEEF', 189]

let g:dracula#palette.bglighter = ['#ECE9DF', 224]
let g:dracula#palette.bglight   = ['#DEDCCF', 188]
let g:dracula#palette.bg        = ['#FFFBEB', 230]
let g:dracula#palette.bgdark    = ['#CECCC0', 187]
let g:dracula#palette.bgdarker  = ['#BCBAB3', 145]

" This cterm value adjusted by hand. Conversion function gives 66, which is too
" blue compared to the grey. 242 (0x6C6C6C) is visually closer.
let g:dracula#palette.fg        = ['#1F1F1F', 234]

let g:dracula#palette.cyan      = ['#036A96', 24]
let g:dracula#palette.green     = ['#14710A', 22]
let g:dracula#palette.orange    = ['#A34D14', 130]
let g:dracula#palette.pink      = ['#A3144D', 125]
let g:dracula#palette.purple    = ['#644AC9', 62]
let g:dracula#palette.red       = ['#CB3A2A', 166]
let g:dracula#palette.yellow    = ['#846E15', 94]

" ANSI
" Note that these blacks and whites are swapped because this is a light
" colorscheme. Also, MacVim (not sure about GVim) always uses a black terminal
" background, which is unhelpful in this case.

" black (background)
let g:dracula#palette.color_0  = g:dracula#palette.bg[0]
" dark red
let g:dracula#palette.color_1  = g:dracula#palette.red[0]
" dark green
let g:dracula#palette.color_2  = g:dracula#palette.green[0]
" brown/yellow
let g:dracula#palette.color_3  = g:dracula#palette.yellow[0]
" dark blue
let g:dracula#palette.color_4  = g:dracula#palette.purple[0]
" dark magenta
let g:dracula#palette.color_5  = g:dracula#palette.pink[0]
" dark cyan
let g:dracula#palette.color_6  = g:dracula#palette.cyan[0]
" light grey/white (foreground)
let g:dracula#palette.color_7  = g:dracula#palette.fg[0]
" dark grey
let g:dracula#palette.color_8  = g:dracula#palette.comment[0]
" (bright) red
let g:dracula#palette.color_9  = '#D74C3D'
" (bright) green
let g:dracula#palette.color_10 = '#198D0C'
" (bright) yellow
let g:dracula#palette.color_11 = '#9E841A'
" (bright) blue/purple
let g:dracula#palette.color_12 = '#7862D0'
" (bright) magenta/pink
let g:dracula#palette.color_13 = '#BF185A'
" bright cyan
let g:dracula#palette.color_14 = '#047FB4'
" white (bright foreground)
let g:dracula#palette.color_15 = '#2C2B31'

runtime colors/dracula_base.vim

" Fix Pmenu. The BgDark is too close to the selection value.
highlight! link Pmenu        DraculaBgLighter
highlight! link PmenuSbar    DraculaBgLighter
highlight! link StatusLineNC TabLine

let g:colors_name = 'alucard'
