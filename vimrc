syntax on          					" syntax highlight
set hidden							" hide buffer
set encoding=utf-8                  " encoding

set wrap        					" wrap lines
set shiftwidth=4					" ident with n spaces
set softtabstop=4
set tabstop=4     					" a tab has n spaces
set expandtab							" use spaces
set backspace=indent,eol,start  	" allow backspacing over everything in insert mode
set autoindent    					" set autoindenting on
set copyindent    					" copy the previous indentation on autoindenting

set ruler							" add a line / column display in the bottom right-hand section
"set number							" show line numbers
set cursorline

set ignorecase						" ignore case when searching
set smartcase						" case-sensitive otherwise
set hlsearch      					" highlight the search terms
set incsearch     					" show search matches as you type

set history=1000         			" history size
set undolevels=1000      			" levels of undo
set title                			" change the title of the terminal
set visualbell           			" do not beep
set noerrorbells         			" do not beep

set nobackup						" no backup file
set noswapfile						" no swap file
	
set guioptions-=r					"remove scrollbar right
set guioptions-=L					"remove scrollbar left in nerdtree

let NERDTreeSortOrder=[]
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1				"automatically close NerdTree when you open a file

colorscheme molokai

filetype indent on

autocmd VimEnter * command T NERDTreeToggle
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p


autocmd StdinReadPre * let s:std_in=1
" open a NERDTree automatically when vim starts up if no files were specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree automatically when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" automatically close a tab if the only remaining window is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

