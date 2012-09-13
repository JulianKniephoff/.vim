source ~/.vim/bundle/pathogen/autoload/pathogen.vim

" Allow for hidden files
set hidden

" Setup pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin on
filetype indent on
" Fix vim-latex
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='Skim'

" Make using marks a bit easier
nnoremap ' `
nnoremap ` '

" Map the leader to an actual usable position
let mapleader=","

" Color setup
syntax on
" Fix filetype recognition
au BufRead,BufNewFile *.jstalk set filetype=javascript
au BufRead,BufNewFile *.as set filetype=actionscript
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.m set filetype=objc
au BufRead,BufNewFile *.mm set filetype=objcpp
set background=dark
" TODO Maybe consider using the solarized colors in your terminal emulators
let g:solarized_termcolors=256
" Fix the above in Ubuntu
set t_Co=256
" colorscheme solarized
" TODO Install via pathogen
colorscheme zenburn

" Searching options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Formatting options
set autoindent
" Some sensible indentation options
set tabstop=4
set shiftwidth=4

set colorcolumn=80
set textwidth=79
" For those older vim versions also color long lines
" TODO Only activate this in versions of vim not supporting colorcolumn
" TODO Or maybe make a shortcut to show/hide this
" call matchadd('ErrorMsg', '\%>79v.\+', -1)
" autocmd WinEnter * call matchadd('ErrorMsg', '\%>79v.\+', -1)

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
" TODO This only works with sourcing vimrc in .vimrc, not with symlinking
" source <sfile>:h/.vim/keymap.vim

" TODO Maybe use dedicated highlight groups for long lines and extra space
