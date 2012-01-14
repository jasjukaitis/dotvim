" Pathogen load
filetype off

set nocompatible
autocmd!

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
syntax on

autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 omnifunc=pythoncomplete#Complete

" General options
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set backspace=indent,eol,start
set smartindent
set smarttab
set fileencodings=utf-8,latin-1
set laststatus=2
set statusline=%F%m%r%h%w\ %{fugitive#statusline()}\ [pos=%04l,%04v][%p%%]\ [len=%L]
set number
set noeol
set grepprg=ack
set autoread
set noswapfile
set nobackup
set completeopt=menuone,longest,preview

colorscheme ir_black

let g:SuperTabDefaultCompletionType = "context"

" Mappings
let mapleader = ","
map <leader>td <Plug>TaskList
nmap <leader>a <Esc>:Ack! 
map <leader>dt :set makeprg=python\ manage.py\ test\|:call MakeGreen()<CR>

if has("gui_running")
	set guioptions=egmrt
	let macvim_hig_shift_movement = 1
	set guifont=Monaco:h13
endif

" Add custom snippets
let g:snippets_dir = "~/.vim/bundle/snipmate/snippets/,~/.vim/snippets/"
