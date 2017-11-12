syntax on          					" syntax highlight
set hidden							" hide buffer
set encoding=utf-8                  " encoding

set wrap        					" wrap lines
set shiftwidth=2					" ident with four spaces
set tabstop=2     					" a tab has four spaces
set backspace=indent,eol,start  	" allow backspacing over everything in insert mode
set autoindent    					" set autoindenting on
set copyindent    					" copy the previous indentation on autoindenting

set ruler							" add a line / column display in the bottom right-hand section
"set number							" show line numbers
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

colorscheme molokai

filetype indent on
