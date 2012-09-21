" I hate leftover highlighting
nnoremap // :noh<CR>

noremap <Leader>/ :FufLine<CR>

" Some often used combinations
noremap E ea
noremap <C-S> :w<CR>
" Correct capitalization in insert mode
inoremap ~~ <Esc>mzb~`za
" Correct double capitalization
inoremap ~~~ <Esc>mzbl~`za

" Quickly exit insert mode
" Deprecated due to mapping Caps Lock to Escape
" inoremap jk <Esc>
