set noexpandtab                         " use tabs, not spaces
set tabstop=8                           " tabstops of 8
set shiftwidth=8                        " indents of 8
set textwidth=78                        " screen in 80 columns wide, wrap at 78

set autoindent smartindent              " turn on auto/smart indenting
set smarttab                            " make <tab> and <backspace> smarter
set backspace=eol,start,indent          " allow backspacing over indent, eol, & start

filetype plugin indent on

nmap <C-J> vip=                         " forces (re)indentation of a block of code
syntax on				" enable syntax highlighting
" highligh kernel types
syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t 
syn keyword cType int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t
syn keyword cOperator likely unlikely
syn match ErrorLeadSpace /^ \+/         " highlight any leading spaces
syn match ErrorTailSpace / \+$/         " highlight any trailing spaces
syn match Error80        /\%>80v.\+/    " highlight anything past 80 in red
set formatoptions=tcqlron		" automatically add comment leaders
set cinoptions=:0,l1,t0,g0		" handle C indention
"set foldmethod=syntax			" fold on braces
"let $kernel_version=system('uname -r | tr -d "\n"')

