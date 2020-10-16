if dracula#should_abort('rst')
    finish
endif

hi! link rstComment                             DraculaComment
hi! link rstCitationReference                   DraculaCyan
hi! link rstFootnoteReference                   DraculaCyan
hi! link rstHyperLinkReference                  DraculaCyan
hi! link rstHyperlinkTarget                     DraculaCyan
hi! link rstInlineInternalTargets               DraculaCyan
hi! link rstInterpretedTextOrHyperlinkReference DraculaCyan
hi! link rstCodeBlock                           DraculaGreen
hi! link rstInlineLiteral                       DraculaGreen
hi! link rstLiteralBlock                        DraculaGreen
hi! link rstQuotedLiteralBlock                  DraculaGreen
hi! link rstStandaloneHyperlink                 DraculaLink
hi! link rstStrongEmphasis                      DraculaOrangeBold
hi! link rstDirective                           DraculaPink
hi! link rstSubstitutionDefinition              DraculaPink
hi! link rstSections                            DraculaPurpleBold
hi! link rstTransition                          DraculaPurpleBold
hi! link rstTodo                                DraculaTodo
hi! link rstCitation                            DraculaYellow
hi! link rstExDirective                         DraculaYellow
hi! link rstFootnote                            DraculaYellow
hi! link rstEmphasis                            DraculaYellowItalic
