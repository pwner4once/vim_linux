"Set font.. 
set guifont=Monaco:h12

" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" change the mapleader from \ to ,
let mapleader=","

" GUI
set cursorline cursorcolumn
set guioptions-=T " get rid of Toolbars at top
set cursorline
hi cursorline guibg=#bf4d36
hi cursorcolumn guibg=#bf4d36
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set nowrap        " don't wrap lines
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwiseset history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set novisualbell           " don't beep
set noerrorbells         " don't beep
set smarttab             " insert tabs on the start of a line according to
                         "    shiftwidth, not tabstop
set hlsearch             " highlight search terms
set incsearch            " show search matches as you type
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)] "Informative status line

"Smart indentation
set cindent
set smartindent
set tabstop=2 "set tab character to 4 characters
set expandtab "turn tabs into whitespace
set shiftwidth=2 "indent width for autoindent



" File saving
set nobackup
set noswapfile

" Syntax highlighting
au BufNewFile,BufRead *.t set filetype=perl

" set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" Enable Syntax Highlighting
"if &t_Co >= 256 || has("gui_running")
   colorscheme desert
"endif

if &t_Co > 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has colors
   syntax on
endif

"Change editing behavior
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

"Pasting large amounts of text into Vim
set pastetoggle=<F2>

"Shortcut Mapping
  nnoremap ; :
  "new tab with old content in old tab
  imap ,t <Esc>:enew<CR>:split<CR>:bn<CR><C-W><C-W>
  "Local Variable Renaming
  nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

""Global Variable Renaming
"nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


nmap <silent> ,/ :let @/=""<CR>

cmap w!! w !sudo tee % >/dev/null

" Plugin related options
nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>
map ,T :TlistToggle<CR>

" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

let NERDTreeShowBookmarks=1       " Show the bookmarks table on startup
let NERDTreeShowFiles=1           " Show hidden files, too
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1          " Quit on opening files from the tree
let NERDTreeHighlightCursorline=1 " Highlight the selected entry in the tree
let NERDTreeMouseMode=2           " Use a single click to fold/unfold directories
                                  " and a double click to open files

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Show hidden files, too
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1

" Quit on opening files from the tree
let NERDTreeQuitOnOpen=1

" Highlight the selected entry in the tree
let NERDTreeHighlightCursorline=1

" Use a single click to fold/unfold directories and a double click to open
" files
let NERDTreeMouseMode=2

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$', '^\.git$' ]

nmap ,cw :CompView<CR>
nmap ,b :BufExplorerHorizontalSplit<CR>

"match current directory of vim to current file
"autocmd BufEnter * lcd%:p:h


"Set *.t file to have perl syntax highlight feature
au BufNewFile,BufRead *.t set filetype=perl
au BufNewFile,BufRead *.vs set filetype=verilog

"new tab with old content in old tab
"imap ,t <Esc>:enew<CR>:split<CR>:bn<CR><C-W><C-W>


"Shortcut to auto indent entire file
nmap <F11> 1G=G
imap <F11> <ESC>1G=Ga


"Informative status line
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ [%l/%L\ (%p%%)]

"Enable indent folding
set foldenable
set fdm=manual


"Set space to toggle a fold
nnoremap <space> za


"Hide buffer when not in window (to prevent relogin with FTP edit)
set bufhidden=hide

"Have 3 lines of offset (or buffer) when scrolling
set scrolloff=3

"Local Variable Renaming
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>
