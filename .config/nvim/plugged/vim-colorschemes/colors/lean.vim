" Settings
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif
set t_Co=256
let g:colors_name = "lean"

" Generated by bytefluent.com/vivify/
hi IncSearch guifg=#C4BE89 guibg=#000000 guisp=#000000 gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi WildMenu guifg=#66D9EF guibg=#000000 guisp=#000000 gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SignColumn guifg=#A6E22E guibg=#232526 guisp=#232526 gui=NONE ctermfg=106 ctermbg=237 cterm=NONE
hi SpecialComment guifg=#465457 guibg=NONE guisp=NONE gui=bold ctermfg=240 ctermbg=NONE cterm=bold
hi Typedef guifg=#66D9EF guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Title guifg=#ef5939 guibg=NONE guisp=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
hi Folded guifg=#465457 guibg=#000000 guisp=#000000 gui=NONE ctermfg=240 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#87875f guibg=NONE guisp=NONE gui=bold ctermfg=101 ctermbg=NONE cterm=bold
hi Include guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Float guifg=#AE81FF guibg=NONE guisp=NONE gui=NONE ctermfg=141 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#808080 guibg=#080808 guisp=#080808 gui=NONE ctermfg=8 ctermbg=232 cterm=NONE
hi NonText guifg=#BCBCBC guibg=#3B3A32 guisp=#3B3A32 gui=NONE ctermfg=240 ctermbg=237 cterm=NONE
hi DiffText guifg=NONE guibg=#4C4745 guisp=#4C4745 gui=bold,italic ctermfg=NONE ctermbg=239 cterm=bold
hi ErrorMsg guifg=#F92672 guibg=#232526 guisp=#232526 gui=bold ctermfg=197 ctermbg=235 cterm=bold
hi Ignore guifg=#808080 guibg=#272822 guisp=#272822 gui=NONE ctermfg=8 ctermbg=235 cterm=NONE
hi Debug guifg=#BCA3A3 guibg=NONE guisp=NONE gui=bold ctermfg=138 ctermbg=NONE cterm=bold
hi PMenuSbar guifg=NONE guibg=#080808 guisp=#080808 gui=NONE ctermfg=NONE ctermbg=232 cterm=NONE
hi Identifier guifg=#FD971F guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#88d700 guibg=NONE guisp=NONE gui=bold ctermfg=106 ctermbg=NONE cterm=bold
hi Conditional guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#FD971F guibg=NONE guisp=NONE gui=italic ctermfg=208 ctermbg=NONE cterm=NONE
hi Todo guifg=#FFFFFF guibg=#272822 guisp=#272822 gui=bold ctermfg=15 ctermbg=235 cterm=bold
hi Special guifg=#66D9EF guibg=#272822 guisp=#272822 gui=italic ctermfg=81 ctermbg=235 cterm=NONE
hi LineNr guifg=#BCBCBC guibg=#3B3A32 guisp=#3B3A32 gui=NONE ctermfg=240 ctermbg=237 cterm=NONE
hi StatusLine guifg=#455354 guibg=#F8F8F2 guisp=#F8F8F2 gui=NONE ctermfg=240 ctermbg=230 cterm=NONE
hi Normal guifg=#e4e4e4 guibg=#303030 guisp=#303030 gui=NONE ctermfg=253 ctermbg=237 cterm=NONE
hi Label guifg=#E6DB74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=NONE guibg=#808080 guisp=#808080 gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi Search guifg=#FFFFFF guibg=#455354 guisp=#455354 gui=NONE ctermfg=15 ctermbg=240 cterm=NONE
hi Delimiter guifg=#8F8F8F guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
hi Statement guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Comment guifg=#949494 guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
hi Character guifg=#E6DB74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=NONE guibg=#a9a9a9 guisp=#a9a9a9 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi Number guifg=#949494 guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
hi Boolean guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Operator guifg=#e4e4e4 guibg=NONE guisp=NONE gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#3E3D32 guisp=#3E3D32 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi CursorLineNr guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLineFill guifg=#000000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Question guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#FFFFFF guibg=#333333 guisp=#333333 gui=bold ctermfg=15 ctermbg=237 cterm=bold
hi VisualNOS guifg=NONE guibg=#403D3D guisp=#403D3D gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi DiffDelete guifg=#960050 guibg=#1E0010 guisp=#1E0010 gui=NONE ctermfg=89 ctermbg=53 cterm=NONE
hi ModeMsg guifg=#E6DB74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#3E3D32 guisp=#3E3D32 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi Define guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Function guifg=#e4e4e4 guibg=NONE guisp=NONE gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#465457 guibg=#000000 guisp=#000000 gui=NONE ctermfg=240 ctermbg=237 cterm=NONE
hi PreProc guifg=#e4e4e4 guibg=NONE guisp=NONE gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE
hi Visual guifg=NONE guibg=#403D3D guisp=#403D3D gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi MoreMsg guifg=#E6DB74 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#808080 guibg=#080808 guisp=#080808 gui=bold ctermfg=240 ctermbg=237 cterm=NONE
hi Exception guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Keyword guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Type guifg=#87d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi DiffChange guifg=#89807D guibg=#4C4745 guisp=#4C4745 gui=NONE ctermfg=245 ctermbg=239 cterm=NONE
hi Cursor guifg=#000000 guibg=#F8F8F0 guisp=#F8F8F0 gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi Error guifg=#960050 guibg=#1E0010 guisp=#1E0010 gui=NONE ctermfg=89 ctermbg=53 cterm=NONE
hi PMenu guifg=#66D9EF guibg=#000000 guisp=#000000 gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#87875f guibg=NONE guisp=NONE gui=italic ctermfg=101 ctermbg=NONE cterm=NONE
hi Constant guifg=#88d700 guibg=NONE guisp=NONE gui=bold ctermfg=106 ctermbg=NONE cterm=bold
hi Tag guifg=#88d700 guibg=NONE guisp=NONE gui=italic ctermfg=106 ctermbg=NONE cterm=NONE
hi String guifg=#949494 guibg=NONE guisp=NONE gui=NONE ctermfg=246 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#66D9EF guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#000000 guibg=#FD971F guisp=#FD971F gui=bold ctermfg=208 ctermbg=237 cterm=bold
hi Repeat guifg=#88d700 guibg=NONE guisp=NONE gui=bold ctermfg=106 ctermbg=NONE cterm=bold
hi Directory guifg=#88d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Structure guifg=#87d700 guibg=NONE guisp=NONE gui=NONE ctermfg=106 ctermbg=NONE cterm=NONE
hi Macro guifg=#C4BE89 guibg=NONE guisp=NONE gui=italic ctermfg=186 ctermbg=NONE cterm=NONE
hi Underlined guifg=#808080 guibg=NONE guisp=NONE gui=underline ctermfg=8 ctermbg=NONE cterm=underline
hi DiffAdd guifg=NONE guibg=#13354A guisp=#13354A gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
hi TabLine guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi colorcolumn guifg=NONE guibg=#000000 guisp=#000000 gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

" HTML
hi javaScript ctermfg=253 ctermbg=237

" Vim
hi vimVar ctermfg=253
hi vimMapModKey ctermfg=111
hi vimFuncSID ctermfg=111
hi vimNotation ctermfg=111
hi vimContinue ctermfg=240

" YAML
hi yamlKeyValueDelimiter ctermfg=246 ctermbg=237
hi yamlBlockMappingKey ctermfg=106
hi yamlFlowMappingKey ctermfg=253
hi yamlFlowIndicator ctermbg=237
hi yamlConstant ctermfg=253
hi yamlInteger ctermfg=253

" Python
hi pythonBuiltinType ctermfg=253
hi pythonDecorator ctermfg=246
hi pythonDottedName ctermfg=246
hi pythonExtraOperator ctermfg=246
hi pythonStrFormat ctermfg=246 ctermbg=237
hi pythonSelf ctermfg=253
hi pythonRepeat ctermfg=106
hi pythonFunction ctermfg=253
hi pythonEscape ctermfg=246

" CSS
hi cssBoxProp ctermfg=253
hi cssPositioningProp ctermfg=253
hi cssTableProp ctermfg=253
hi cssBorderProp ctermfg=253
hi cssFontProp ctermfg=253
hi cssFlexibleBoxProp ctermfg=253
hi cssBackgroundProp ctermfg=253
hi cssTextProp ctermfg=253
hi cssListProp ctermfg=253
hi cssUIProp ctermfg=253
hi cssBorderAttr ctermfg=253
hi cssBackgroundAttr ctermfg=253
hi cssPositioningAttr ctermfg=253
hi cssColor ctermfg=253
hi cssTextAttr ctermfg=253
hi cssBoxAttr ctermfg=253
hi cssUIAttr ctermfg=253
hi cssFontAttr ctermfg=253
hi cssCommonAttr ctermfg=253
hi cssTableAttr ctermfg=253
hi cssDimensionProp ctermfg=253
hi cssAttrComma ctermfg=253
hi cssSelectorOp ctermfg=253
hi cssSelectorOp2 ctermfg=253
hi cssColorProp ctermfg=253
hi cssFlexibleBoxAttr ctermfg=253
hi cssMediaProp ctermfg=253
hi cssMediaType ctermfg=253
hi cssCascadeAttr ctermfg=253
hi cssIdentifier ctermfg=106
hi cssClassName ctermfg=106
hi cssPseudoClass ctermfg=106
hi cssVendor ctermfg=111
hi cssImportant ctermfg=111 ctermbg=237

" SASS
hi sassVariable ctermfg=253
hi sassId ctermfg=106
hi sassIdChar ctermfg=106
hi sassClassChar ctermfg=106
hi sassMixin ctermfg=106
hi sassMixinName ctermfg=106

" CoffeeScript
hi CoffeeParen ctermfg=253
hi CoffeeBracket ctermfg=253
hi CoffeeSpecialOp ctermfg=253
hi CoffeeSpecialIdent ctermfg=253
hi CoffeeSpecialVar ctermfg=106 ctermbg=237
hi CoffeeObjAssign ctermfg=106
hi coffeeExtendedOp ctermfg=246
hi coffeeSpecialOp ctermfg=246
hi coffeeDotAccess ctermfg=246

" JavaScript
hi javaScriptIdentifier ctermfg=106
hi xmlTag ctermfg=106
hi xmlTagName ctermfg=106
hi xmlEndTag ctermfg=106
hi javaScriptFunction ctermfg=106
hi javaScriptFuncArg ctermfg=253
hi javaScriptBrowserObjects ctermfg=253
hi javaScriptEventListenerKeywords ctermfg=253
hi javaScriptWebAPI ctermfg=253
hi javaScriptHtmlElemProperties ctermfg=253
hi javaScriptDOMObjects ctermfg=253
hi javaScriptDOMMethods ctermfg=253
hi javaScriptGlobalObjects ctermfg=253
hi javaScriptExceptions ctermfg=253
hi javaScriptAjaxMethods ctermfg=253
hi javaScriptDocTags ctermfg=240
hi javaScriptEmbed ctermfg=253

" TypeScript
hi typescriptIdentifier ctermfg=106
hi typescriptStorageClass ctermfg=106
hi typescriptType ctermfg=111
hi typescriptGlobalObjects ctermfg=253
hi typescriptExceptions ctermfg=253
hi typescriptBraces ctermfg=253
hi typescriptHtmlEvents ctermfg=253
hi typescriptMessage ctermfg=253
hi xmlError ctermfg=253
