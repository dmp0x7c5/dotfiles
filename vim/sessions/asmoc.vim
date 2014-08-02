let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> *
map Q gq
nmap <silent> \ucs :call C_Handle()
nmap <silent> \lcs :call C_Handle()
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetBrowseX(expand("<cWORD>"),0)
map <F6> \newer
map <F5> \older
map <F8> \rlog
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=2
set cindent
set fileencodings=ucs-bom,utf-8,default
set grepprg=grep\ -nH\ $*
set guifont=DejaVu\ Sans\ Mono\ 10
set helplang=pl
set hlsearch
set incsearch
set listchars=tab:[-,trail:\\
set modelines=0
set mouse=a
set mousemodel=popup
set ruler
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.info,.aux,.log,.dvi,.bbl,.out,.o,.lo
set termencoding=utf-8
set viminfo='20,\"50
set window=47
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/devel/c/asmoc/src/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +9 asmoc.c
badd +6 asmoc.h
badd +1 asmoc_curl.c
badd +1 asmoc_curl.h
badd +41 mocinfo.c
badd +36 mocinfo.h
badd +8 asmoc_proto.c
badd +11 asmoc_proto.h
badd +1 asmoc_useful.c
badd +0 asmoc_useful.h
args asmoc.c
edit asmoc.c
set splitbelow splitright
set nosplitbelow
colorscheme slate_dmp
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
nmap <buffer> <silent> \ir oassert));2F)r(a
nmap <buffer> <silent> \iz isizeof))hr(a
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
nmap <buffer> <silent> \s{ :call C_Block("a")
nmap <buffer> <silent> \sc ocase 0:	
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
nmap <buffer> <silent> \sd :call C_DoWhile("a")
nmap <buffer> <silent> \co :call C_CommentCode("a")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
nmap <buffer> <silent> \ci o/*
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 01l
tabnew
edit asmoc_curl.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
nmap <buffer> <silent> \ir oassert));2F)r(a
nmap <buffer> <silent> \iz isizeof))hr(a
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
nmap <buffer> <silent> \s{ :call C_Block("a")
nmap <buffer> <silent> \sc ocase 0:	
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
nmap <buffer> <silent> \sd :call C_DoWhile("a")
nmap <buffer> <silent> \co :call C_CommentCode("a")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
nmap <buffer> <silent> \ci o/*
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 146 - ((31 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
146
normal! 07l
tabnew
edit asmoc_curl.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
nmap <buffer> <silent> \ir oassert));2F)r(a
nmap <buffer> <silent> \iz isizeof))hr(a
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
nmap <buffer> <silent> \s{ :call C_Block("a")
nmap <buffer> <silent> \sc ocase 0:	
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
nmap <buffer> <silent> \sd :call C_DoWhile("a")
nmap <buffer> <silent> \co :call C_CommentCode("a")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
nmap <buffer> <silent> \ci o/*
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnew
edit mocinfo.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
nmap <buffer> <silent> \ir oassert));2F)r(a
nmap <buffer> <silent> \iz isizeof))hr(a
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
nmap <buffer> <silent> \s{ :call C_Block("a")
nmap <buffer> <silent> \sc ocase 0:	
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
nmap <buffer> <silent> \sd :call C_DoWhile("a")
nmap <buffer> <silent> \co :call C_CommentCode("a")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
nmap <buffer> <silent> \ci o/*
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 53 - ((28 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 038l
tabnew
edit mocinfo.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
nmap <buffer> <silent> \rd :call C_Indent("a")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
nmap <buffer> <silent> \ir oassert));2F)r(a
nmap <buffer> <silent> \iz isizeof))hr(a
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
nmap <buffer> <silent> \s{ :call C_Block("a")
nmap <buffer> <silent> \sc ocase 0:	
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
nmap <buffer> <silent> \sd :call C_DoWhile("a")
nmap <buffer> <silent> \co :call C_CommentCode("a")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
nmap <buffer> <silent> \ci o/*
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 013l
tabnew
edit asmoc_proto.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
nmap <buffer> <silent> \ci o/*
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
nmap <buffer> <silent> \co :call C_CommentCode("a")
nmap <buffer> <silent> \sd :call C_DoWhile("a")
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
nmap <buffer> <silent> \sc ocase 0:	
nmap <buffer> <silent> \s{ :call C_Block("a")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
nmap <buffer> <silent> \iz isizeof))hr(a
nmap <buffer> <silent> \ir oassert));2F)r(a
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
nmap <buffer> <silent> \rd :call C_Indent("a")
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 017l
tabnew
edit asmoc_proto.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
nmap <buffer> <silent> \ci o/*
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
nmap <buffer> <silent> \co :call C_CommentCode("a")
nmap <buffer> <silent> \sd :call C_DoWhile("a")
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
nmap <buffer> <silent> \sc ocase 0:	
nmap <buffer> <silent> \s{ :call C_Block("a")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
nmap <buffer> <silent> \iz isizeof))hr(a
nmap <buffer> <silent> \ir oassert));2F)r(a
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
nmap <buffer> <silent> \rd :call C_Indent("a")
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 036l
tabnew
edit asmoc_useful.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
nmap <buffer> <silent> \rd :call C_Indent("a")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
nmap <buffer> <silent> \ir oassert));2F)r(a
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
nmap <buffer> <silent> \iz isizeof))hr(a
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
nmap <buffer> <silent> \s{ :call C_Block("a")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
nmap <buffer> <silent> \sc ocase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
nmap <buffer> <silent> \sd :call C_DoWhile("a")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
nmap <buffer> <silent> \co :call C_CommentCode("a")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
nmap <buffer> <silent> \ci o/*
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 058l
tabnew
edit asmoc_useful.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link()
imap <buffer> <silent> <M-F9> :call C_Compile()
map <buffer> <silent> \h :call C_HelpCsupport()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
map <buffer> <silent> \rs :call C_Settings()
vmap <buffer> <silent> \rh :call C_Hardcopy("v")
nmap <buffer> <silent> \rh :call C_Hardcopy("n")
omap <buffer> <silent> \rh :call C_Hardcopy("n")
vmap <buffer> <silent> \rd :call C_Indent("v")
nmap <buffer> <silent> \rd :call C_Indent("a")
omap <buffer> <silent> \rd :call C_Indent("a")
map <buffer> <silent> \ri :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck()
map <buffer> <silent> \rg :call C_MakeArguments()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link()
map <buffer> <silent> \rc :call C_Compile()
vmap <buffer> <silent> \+. :call C_CodeCatch("v","...")
nmap <buffer> <silent> \+. :call C_CodeCatch("a","...")
omap <buffer> <silent> \+. :call C_CodeCatch("a","...")
vmap <buffer> <silent> \+h :call C_CodeCatch("v"," const &ExceptObj ")
nmap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
omap <buffer> <silent> \+h :call C_CodeCatch("a"," const &ExceptObj ")
vmap <buffer> <silent> \+y :call C_CodeTryCatch("v")
nmap <buffer> <silent> \+y :call C_CodeTryCatch("a")
omap <buffer> <silent> \+y :call C_CodeTryCatch("a")
map <buffer> <silent> \+f :call C_CodeTemplateFunct()
map <buffer> <silent> \+w :call C_CommentTemplates("CppTemplateClassUsingNew")
map <buffer> <silent> \+t :call C_CommentTemplates("CppTemplateClass")
map <buffer> <silent> \+o :call C_CommentTemplates("CppErrorClass")
map <buffer> <silent> \+n :call C_CommentTemplates("CppClassUsingNew")
map <buffer> <silent> \+l :call C_CommentTemplates("CppClass")
map <buffer> <silent> \+d :call C_CodeMethod()
map <buffer> <silent> \ns :call C_ProtoShow()
map <buffer> <silent> \nc :call C_ProtoClear()
map <buffer> <silent> \ni :call C_ProtoInsert()
vmap <buffer> <silent> \np :call C_ProtoPick("v")
nmap <buffer> <silent> \np :call C_ProtoPick("n")
omap <buffer> <silent> \np :call C_ProtoPick("n")
map <buffer> <silent> \ne :call C_CodeSnippet("e")
vmap <buffer> <silent> \nw :call C_CodeSnippet("wv")
nmap <buffer> <silent> \nw :call C_CodeSnippet("w")
omap <buffer> <silent> \nw :call C_CodeSnippet("w")
map <buffer> <silent> \nr :call C_CodeSnippet("r")
map <buffer> <silent> \io :call C_CodeFopen("output")
map <buffer> <silent> \ii :call C_CodeFopen("input")
vmap <buffer> <silent> \ir diassert));2F)r(pa
nmap <buffer> <silent> \ir oassert));2F)r(a
omap <buffer> <silent> \ir oassert));2F)r(a
vmap <buffer> <silent> \iz disizeof))hr(pa
nmap <buffer> <silent> \iz isizeof))hr(a
omap <buffer> <silent> \iz isizeof))hr(a
map <buffer> <silent> \ia :call C_CodeMalloc("m")
map <buffer> <silent> \il :call C_CodeMalloc("c")
map <buffer> <silent> \ic oscanf )"", & );2F)r(f"a
map <buffer> <silent> \ip oprintf )"\n");2F)r(f\i
map <buffer> <silent> \iu :call C_EST("union")
map <buffer> <silent> \is :call C_EST("struct")
map <buffer> <silent> \ie :call C_EST("enum")
map <buffer> <silent> \in :call C_CodeFor("down")
map <buffer> <silent> \i0 :call C_CodeFor("up"  )
map <buffer> <silent> \im :call C_CodeMain()
vmap <buffer> <silent> \it :call C_CodeFunction("sv")
nmap <buffer> <silent> \it :call C_CodeFunction("sa")
omap <buffer> <silent> \it :call C_CodeFunction("sa")
vmap <buffer> <silent> \if :call C_CodeFunction("v")
nmap <buffer> <silent> \if :call C_CodeFunction("a")
omap <buffer> <silent> \if :call C_CodeFunction("a")
vmap <buffer> <silent> \s{ :call C_Block("v")
nmap <buffer> <silent> \s{ :call C_Block("a")
omap <buffer> <silent> \s{ :call C_Block("a")
vmap <buffer> <silent> \sc DOcase 0:	
nmap <buffer> <silent> \sc ocase 0:	
omap <buffer> <silent> \sc ocase 0:	
map <buffer> <silent> \ss :call C_CodeSwitch()f(la
vmap <buffer> <silent> \sh :call C_StatBlock("v","while (  )")f(la
nmap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
omap <buffer> <silent> \sh :call C_StatBlock("a","while (  )")f(la
vmap <buffer> <silent> \sw :call C_Stat("v","while (  )")f(la
nmap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
omap <buffer> <silent> \sw :call C_Stat("a","while (  )")f(la
vmap <buffer> <silent> \sl :call C_IfBlockElse("v")f(la
nmap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
omap <buffer> <silent> \sl :call C_IfBlockElse("a")f(la
vmap <buffer> <silent> \sf :call C_StatBlock("v","if (  )")f(la
nmap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
omap <buffer> <silent> \sf :call C_StatBlock("a","if (  )")f(la
vmap <buffer> <silent> \se :call C_IfElse("v")f(la
nmap <buffer> <silent> \se :call C_IfElse("a")f(la
omap <buffer> <silent> \se :call C_IfElse("a")f(la
vmap <buffer> <silent> \si :call C_Stat("v","if (  )")f(la
nmap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
omap <buffer> <silent> \si :call C_Stat("a","if (  )")f(la
vmap <buffer> <silent> \sr :call C_StatBlock("v","for ( ; ; )")f;i
nmap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
omap <buffer> <silent> \sr :call C_StatBlock("a","for ( ; ; )")f;i
vmap <buffer> <silent> \so :call C_Stat("v","for ( ; ; )")f;i
nmap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
omap <buffer> <silent> \so :call C_Stat("a","for ( ; ; )")f;i
vmap <buffer> <silent> \sd :call C_DoWhile("v")
nmap <buffer> <silent> \sd :call C_DoWhile("a")
omap <buffer> <silent> \sd :call C_DoWhile("a")
map <buffer> <silent> \cy :call C_Toggle_C_Cpp()
map <buffer> <silent> \ct a=strftime("%x %X %Z")
map <buffer> <silent> \cd a=strftime("%x")
map <buffer> <silent> \ca :call C_CommentTemplates("class")
map <buffer> <silent> \cm :call C_CommentTemplates("method")
map <buffer> <silent> \cu :call C_CommentTemplates("function")
map <buffer> <silent> \cf :call C_CommentTemplates("frame")
vmap <buffer> <silent> \co :call C_CommentCode("v")
nmap <buffer> <silent> \co :call C_CommentCode("a")
omap <buffer> <silent> \co :call C_CommentCode("a")
vmap <buffer> <silent> \c\ :call C_CodeComment("v","no")
nmap <buffer> <silent> \c\ :call C_CodeComment("a","no")
omap <buffer> <silent> \c\ :call C_CodeComment("a","no")
vmap <buffer> <silent> \c* :call C_CodeComment("v","yes")
nmap <buffer> <silent> \c* :call C_CodeComment("a","yes")
omap <buffer> <silent> \c* :call C_CodeComment("a","yes")
vmap <buffer> <silent> \ci :call C_CodeComment("v","yes")
nmap <buffer> <silent> \ci o/*
omap <buffer> <silent> \ci o/*
map <buffer> <silent> \cl :call C_GetLineEndCommCol()
vmap <buffer> <silent> \cn :call C_MultiLineEndComments("// ")
nmap <buffer> <silent> \cn :call C_LineEndComment("// ")
omap <buffer> <silent> \cn :call C_LineEndComment("// ")
vmap <buffer> <silent> \ce :call C_MultiLineEndComments("/*  */")
nmap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
omap <buffer> <silent> \ce :call C_LineEndComment("/*  */")
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link()
map <buffer> <silent> <M-F9> :call C_Compile()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/wordlists/c-c++-keywords.list,~/.vim/wordlists/k+r.list,~/.vim/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=ccomplete#Complete
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=8
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=8
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 05l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :