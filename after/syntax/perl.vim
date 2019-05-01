if dracula#should_abort('perl')
    finish
endif

" Regex
hi! def link perlMatchStartEnd       DraculaRed

" Builtin functions
hi! def link perlOperator            DraculaCyan
hi! def link perlStatementFiledesc   DraculaCyan
hi! def link perlStatementFiles      DraculaCyan
hi! def link perlStatementFlow       DraculaCyan
hi! def link perlStatementHash       DraculaCyan
hi! def link perlStatementIOfunc     DraculaCyan
hi! def link perlStatementIPC        DraculaCyan
hi! def link perlStatementList       DraculaCyan
hi! def link perlStatementMisc       DraculaCyan
hi! def link perlStatementNetwork    DraculaCyan
hi! def link perlStatementNumeric    DraculaCyan
hi! def link perlStatementProc       DraculaCyan
hi! def link perlStatementPword      DraculaCyan
hi! def link perlStatementRegexp     DraculaCyan
hi! def link perlStatementScalar     DraculaCyan
hi! def link perlStatementSocket     DraculaCyan
hi! def link perlStatementTime       DraculaCyan
hi! def link perlStatementVector     DraculaCyan

" Highlighting for quoting constructs, tied to existing option in vim-perl
if get(g:, 'perl_string_as_statement', 0)
  hi! def link perlStringStartEnd DraculaRed
endif

" Signatures
hi! def link perlSignature           DraculaOrangeItalic
hi! def link perlSubPrototype        DraculaOrangeItalic

" Hash keys
hi! def link perlVarSimpleMemberName DraculaPurple
