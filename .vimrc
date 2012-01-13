" Pathogen load
filetype off

set nocompatible
autocmd!

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
syntax on

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set backspace=indent,eol,start
set smartindent
set smarttab
set fileencodings=utf-8,latin-1
set number
set noeol
set grepprg=ack

colorscheme ir_black

if has("gui_running")
	set guioptions=egmrt
	let macvim_hig_shift_movement = 1
	set guifont=Monaco:h13
endif

" Add custom snippets
let g:snippets_dir = "~/.vim/bundle/snipmate/snippets/,~/.vim/snippets/"

autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
