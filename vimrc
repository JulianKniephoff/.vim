syntax on

set autoindent

" Searching options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Remember cursor position between editing sessions
autocmd BufReadPost * call RestoreCursorPosition()
function! RestoreCursorPosition()
	if line("'\"") > 0 && line("'\"") <= line("$")
		normal! g`"
		normal! zz
	endif
endfunction
