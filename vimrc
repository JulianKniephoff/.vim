source ~/.vim/bundle/pathogen/autoload/pathogen.vim

" Setup pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

" Make using marks a bit easier
nnoremap ' `
nnoremap ` '

" Map the leader to an actual usable position
let mapleader=","

" Color setup
syntax on
set background=dark
" TODO Maybe consider using the solarized colors in your terminal emulators
let g:solarized_termcolors=256
" Fix the above in Ubuntu
set t_Co=256
colorscheme solarized

" Searching options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Formatting options
set autoindent

set colorcolumn=80
set textwidth=79
" For those older vim versions also color long lines
call matchadd('ErrorMsg', '\%>79v.\+', -1)
autocmd WinEnter * call matchadd('ErrorMsg', '\%>79v.\+', -1)

set number

set scrolloff=3

" Make spotting of unwanted whitespace easy
" TODO Use *_space_errors?
set list
" set listchars=tab:▸\ 
set listchars=tab:>\ 
call matchadd('ErrorMsg', '\s\+\%#\@<!$', -1)
autocmd WinEnter * call matchadd('ErrorMsg', '\s\+\%#\@<!$', -1)
autocmd InsertLeave * redraw!

" Remember cursor position between editing sessions
autocmd BufReadPost * call RestoreCursorPosition()
function! RestoreCursorPosition()
	if line("'\"") > 0 && line("'\"") <= line("$")
		normal! `"
		normal! zz
		" TODO Maybe rather also restore viewport position?
	endif
endfunction

" Make AutoClose a bit more useful
inoremap "" "
inoremap "" "
inoremap '' '
inoremap (( (
inoremap )) )
inoremap [[ [
inoremap ]] ]
inoremap {{ {
inoremap }} }

source <sfile>:h/keymap.vim

" TODO Maybe use dedicated highlight groups for long lines and extra space
