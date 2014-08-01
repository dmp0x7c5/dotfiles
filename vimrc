" dmp's .vimrc
" 	dmp0x7c5@gmail.com
"

syntax on
filetype on

set autoindent
set cindent

set showcmd
set incsearch  
set nocompatible
set viminfo='20,\"50
set ruler
set encoding=utf-8

filetype plugin on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

let c_space_errors = 1

"setlocal spell spelllang=pl

set ofu=syntaxcomplete#Complete

" for change tab to [-----
set nolist
set listchars=tab:[-,trail:\

"colorscheme elflord
"colorscheme slate_dmp
"colorscheme bluegreen
"colorscheme koehler
"colorscheme brookstream
"colorscheme night
"colorscheme zenburn
colorscheme dusk

"if &t_Co > 2 || has("gui_running")
"	colorscheme hemisu
"endif

"set background=dark

"set guifont=Luxi\ Mono\ Bold\ 10
set guifont=Inconsolata\ 11

""set guioptions=m
set guioptions-=T

" ViM spell
"let spell_executable = "aspell"
"let spell_language_list = "polish,english"
"let spell_guess_language_ft = ""
"let spell_auto_type = ""
"let spell_insert_mode = 0
"


" LaTeX
" Anti-Vim-Latex
let g:Tex_SmartKeyBS = 0
let g:Tex_SmartKeyQuote = 0
let g:Tex_SmartKeyDot = 0
let g:Imap_UsePlaceHolders = 0
let g:Tex_Leader = '`tex'
let g:Tex_Leader2 = ',tex'

"" folding
inoremap <F2> <C-O>za
nnoremap <F2> za
onoremap <F2> <C-C>za
vnoremap <F2> zf
"" 

autocmd FileType text setlocal textwidth=78

au Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim


let g:html_tag_case = 'lowercase'
let g:do_xhtml_mappings = 'yes'
let b:do_xhtml_mappings = 'yes'
let g:no_html_tab_mapping = 'yes'



"" ctags:
" create ctags
map <c-f12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .

let g:miniBufExplMapWindowNavVim = 0
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

set tags+=tags
set tags+=./tags
set tags+=./../tags

function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-Y>"
        endif
    endif
endfunction
inoremap <Tab> <C-R>=SuperCleverTab()<cr>

set completeopt=menuone,menu

let OmniCpp_ShowPrototypeInAbbr = 0 "show prototype in pop-up
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_SelectFirstItem = 2
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "boost", "_GLIBCXX_STD"]


"" cscope::
	if has("cscope")
		set csprg=/usr/bin/cscope
		set csto=0
		set cst
		set nocsverb
		" add any database in current directory
		if filereadable("cscope.out")
		    cs add cscope.out
		" else add database pointed to by environment
		elseif $CSCOPE_DB != ""
		    cs add $CSCOPE_DB
		endif
		set csverb
	endif

	map <C-_> :cstag <C-R>=expand("<cword>")<CR><CR>

	
	map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
	map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>


	nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

	" Using 'CTRL-spacebar' then a search type makes the vim window
	" split horizontally, with search result displayed in
	" the new window.

	nmap <C-Space>s :scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>c :scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>t :scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>e :scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-Space>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-Space>d :scs find d <C-R>=expand("<cword>")<CR><CR>

	" Hitting CTRL-space *twice* before the search type does a vertical
	" split instead of a horizontal one

	nmap <C-Space><C-Space>s
		\:vert scs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>g
		\:vert scs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>c
		\:vert scs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>t
		\:vert scs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>e
		\:vert scs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-Space><C-Space>i
		\:vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-Space><C-Space>d
		\:vert scs find d <C-R>=expand("<cword>")<CR><CR>



"" endOfCscope

set nospell


if has("autocmd")

""

" Support editing of gpg-encrypted files
augroup gnupg
  " Remove all gnupg autocommands
  au!

  " Enable editing of gpg-encrypted files
  "	  read:	set binary mode before reading the file
  "		decrypt text in buffer after reading
  "	 write:	encrypt file after writing
  "	append:	decrypt file, append, encrypt file

  autocmd BufReadPre,FileReadPre	*.gpg set bin
  autocmd BufReadPre,FileReadPre	*.gpg let ch_save = &ch|set ch=2
  autocmd BufReadPost,FileReadPost	*.gpg '[,']!gpg --use-agent -d 2>/dev/null
  autocmd BufReadPost,FileReadPost	*.gpg set nobin
  autocmd BufReadPost,FileReadPost	*.gpg let &ch = ch_save|unlet ch_save
  autocmd BufReadPost,FileReadPost	*.gpg execute ":doautocmd BufReadPost " . expand("%:r")

  autocmd BufWritePost,FileWritePost	*.gpg !mv <afile> <afile>:r
  autocmd BufWritePost,FileWritePost	*.gpg !gpg --use-agent --default-recipient-self -e <afile>:r
  autocmd BufWritePost,FileWritePost	*.gpg !rm <afile>:r

  autocmd FileAppendPre			*.gpg !gpg --use-agent -d 2>/dev/null <afile>
  autocmd FileAppendPre			*.gpg !mv <afile>:r <afile>
  autocmd FileAppendPost		*.gpg !mv <afile> <afile>:r
  autocmd FileAppendPost		*.gpg !gpg --use-agent --default-recipient-self -e <afile>:r
  autocmd FileAppendPost		*.gpg !rm <afile>:r

  " Same as above, but for ASCII-armored files
  autocmd BufRead			*.asc GiFULLDATE<CR><ESC>
  autocmd BufReadPre,FileReadPre	*.asc set bin
  autocmd BufReadPre,FileReadPre	*.asc let ch_save = &ch|set ch=2
  autocmd BufReadPost,FileReadPost	*.asc '[,']!gpg --use-agent -d 2>/dev/null
  autocmd BufReadPost,FileReadPost	*.asc set nobin
  autocmd BufReadPost,FileReadPost	*.asc let &ch = ch_save|unlet ch_save
  autocmd BufReadPost,FileReadPost	*.asc execute ":doautocmd BufReadPost " . expand("%:r")

  autocmd BufWritePost,FileWritePost	*.asc !mv <afile> <afile>:r
  autocmd BufWritePost,FileWritePost	*.asc !gpg --use-agent --default-recipient-self -a -e <afile>:r
  autocmd BufWritePost,FileWritePost	*.asc !rm <afile>:r

  autocmd FileAppendPre			*.asc !gpg --use-agent -d 2>/dev/null <afile>
  autocmd FileAppendPre			*.asc !mv <afile>:r <afile>
  autocmd FileAppendPost		*.asc !mv <afile> <afile>:r
  autocmd FileAppendPost		*.asc !gpg --use-agent --default-recipient-self -a -e <afile>:r
  autocmd FileAppendPost		*.asc !rm <afile>:r
augroup END

endif

if has('autocmd')
	filetype plugin indent on
	autocmd BufEnter *.c,*.h,*.cpp,*.hpp,*.cc source ~/.vim/scripts/c.vim
endif

filetype plugin on
set grepprg=grep\ -nH\ $*

"re-map rcsvers.vim keys
map <F8> \rlog
map <F5> \older
map <F6> \newer

"" omni no longer pink:
highlight Pmenu guibg=black guifg=white gui=bold
highlight PmenuSel guibg=white guifg=black gui=bold
""

" ========================================================================
" dmp's vimrc
" ========================================================================



" ========================================================================
" Ruby Section
" ========================================================================
syntax on                 " Enable syntax highlighting
filetype plugin indent on " Enable filetype-specific indenting and plugins

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?

  " Clojure
  "autocmd FileType clojure setlocal colorcolumn=80
  "autocmd FileType clojure map <Leader>t :!lein test %<cr>
augroup END


" ========================================================================
" Map
" ========================================================================
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>



