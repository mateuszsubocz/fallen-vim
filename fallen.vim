" Theme:   fallen
" File:    fallen.vim
" Author:  mateuszsubocz
" requires :set termguicolors

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'fallen1'

hi Cursor        guifg=#080808 guibg=#ced2d6  ctermfg=232 ctermbg=188
hi lCursor       guifg=#080808 guibg=#ced2d6  ctermfg=232 ctermbg=188
hi CursorIM      guifg=#080808 guibg=#ced2d6  ctermfg=232 ctermbg=188
hi Directory     guifg=#a38a8a guibg=#080808  ctermfg=237 ctermbg=232 gui=bold
hi ErrorMsg      guifg=#ee1111 guibg=#080808  ctermbg=232
hi VertSplit     guifg=#080808 guibg=#7474a6  ctermfg=232 ctermbg=103
hi LineNr        guifg=#b5b9bd guibg=#101010  ctermfg=145 ctermbg=16
hi ModeMsg       guifg=#6a6d70 guibg=#080808  ctermfg=59 ctermbg=232
hi MoreMsg       guifg=#6a6d70 guibg=#080808  ctermfg=59 ctermbg=232
hi Normal        guifg=#ced2d6 guibg=#080808  ctermfg=188 ctermbg=232
hi SpellBad      guifg=#ff0000 guibg=#080808  ctermfg=red ctermbg=232 gui=underline cterm=underline
hi Question      guifg=#6a6d70 guibg=#080808  ctermfg=59 ctermbg=232
hi Search        guifg=#b5b9bd guibg=#171717 gui=none  ctermfg=188 ctermbg=16
hi NonText       gui=none
hi SpecialKey    guifg=#6a6d70 ctermfg=59
"\n, \0, %d, %s, etc...
hi Special       guifg=#7474a6 ctermfg=103 gui=bold
" status line
hi Title         guifg=#7474a6 guibg=#080808 gui=bold  ctermfg=103 ctermbg=232
hi Visual        guibg=#171717 gui=none  ctermbg=16
hi VisualNOS     guibg=#080808 ctermbg=232
hi WarningMsg    guifg=#a38a8a guibg=#080808  ctermfg=237 ctermbg=232
hi Number        guifg=#9e6f68 ctermfg=235
hi Char          guifg=#7a5a47 gui=italic ctermfg=95
hi String        guifg=#7a5a47 ctermfg=95
hi Boolean       guifg=#a45a52  ctermfg=131
hi Comment       guifg=#6a6d70  ctermfg=59
hi Constant      guifg=#a45a52 ctermfg=131
hi Identifier    guifg=#a38a8a  ctermfg=237
hi Statement     guifg=#7474a6 gui=none  ctermfg=103
hi CursorLine    guibg=#171717  ctermbg=16
hi CursorLineNR  guifg=#7474a6 gui=bold  ctermfg=103

"Procedure name
hi Function      guifg=#a67ba6  ctermfg=139

"Define, def
hi PreProc       guifg=#a38a8a gui=bold  ctermfg=237
hi Type          guifg=#7474a6 gui=bold  ctermfg=103
hi Underlined    guifg=#a38a8a gui=underline  ctermfg=237
hi Error         guifg=#ee1111 guibg=#080808  ctermbg=232
hi Todo          guifg=#080808 guibg=#6a6d70 gui=none  ctermfg=232 ctermbg=59
hi SignColumn    guibg=#080808  ctermbg=232

if version >= 700
  " Pmenu
  hi Pmenu        guifg=#ced2d6 guibg=#171717  ctermfg=188 ctermbg=16
  hi PmenuSel     guifg=#7474a6 guibg=#080808  ctermfg=103 ctermbg=232
  hi PmenuSbar    guibg=#101010  ctermbg=16

  " Tab
  hi TabLine      guifg=#ced2d6 guibg=#101010 gui=bold  ctermfg=188 ctermbg=16
  hi TabLineFill  guifg=#080808 guibg=#080808 gui=bold  ctermfg=232 ctermbg=232
  hi TabLineSel   guifg=#7474a6 guibg=#171717 gui=bold  ctermfg=103 ctermbg=16
endif

hi diffAdded ctermfg=green guifg=#00FF00
hi diffRemoved ctermfg=red guifg=#FF0000

if has('nvim')
  if has('nvim-0.9')
    hi! link  @lsp.type.class Type
    hi! link  @lsp.type.decorator Function
    hi! link  @lsp.type.enum Type
    hi! link  @lsp.type.enumMember Constant
    hi! link  @lsp.type.function Function
    hi! link  @lsp.type.interface Function
    hi! link  @lsp.type.macro Function
    hi! link  @lsp.type.method Function
    hi! link  @lsp.type.namespace Type
    hi! link  @lsp.type.parameter Type
    hi! link  @lsp.type.property Constant
    hi! link  @lsp.type.struct Type
    hi! link  @lsp.type.type Type
    hi! link  @lsp.type.typeParameter Type
    hi! link  @lsp.type.variable Normal
  elseif has('nvim-0.8.1')
    hi! link @type Type
    hi! link @function Function
    hi! link @number Number
    hi! link @string String
    hi! link @comment Comment
    hi! link @keyword Keyword
    hi! link @variable  Normal
    hi! link @constant  Constant
    hi! link @module    Constant
    hi! link @namespace Constant
  endif
else
  " Highlight function names
  syn match    cCustomParen    "(" contains=cParen,cCppParen
  syn match    cCustomFunc     "\w\+\s*(" contains=cCustomParen

  hi cCustomFunc guifg=#a67ba6 gui=bold  ctermfg=139
endif
