syntax on

set autoindent

" Searching options
set incsearch
set hlsearch
set ignorecase
set smartcase

set number

set scrolloff=3

" Make spotting of unwanted whitespace easy
" TODO Use *_space_errors?
set list
set listchars=tab:▸\ 
" TODO The guibg option actually belongs into gvimrc
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/

" Remember cursor position between editing sessions
autocmd BufReadPost * call RestoreCursorPosition()
function! RestoreCursorPosition()
	if line("'\"") > 0 && line("'\"") <= line("$")
		normal! g`"
		normal! zz
	endif
endfunction
