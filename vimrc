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
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

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
