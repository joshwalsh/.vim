call pathogen#runtime_append_all_bundles() 

set nocompatible

set number
set ruler
syntax on

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

set cursorline                " show a line at the row of the cursor
set cursorcolumn              " show a line at the column of the cursor
set directory=/tmp      " Where temporary files will go.
set splitright
set splitbelow

" Change leader to ,
let mapleader=","

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Turn of highlighting after search
map <C-l> :noh<CR>

" Control-c is Escape
map <C-c> <esc>

" Reuse open buffers when opening a file that's already open
set switchbuf=useopen

" Show Line Numbers
map <leader>ln :set number!<CR>

" <leader><leader> switches to the last buffer used
map <leader><leader> <C-^>

" Show invisible characters
set list listchars=tab:\ \ ,trail:·,nbsp:%,extends:>,precedes:<
map <F6> :set nolist!<CR>:set nolist?<CR>
imap <F6> <ESC>:set nolist!<CR>:set nolist?<CR>a

" Clear all trailing spaces
fun! ClearAllTrailingSpaces()
  %s/\s\+$//
endfun
map <leader>c :call ClearAllTrailingSpaces()<CR>

" visual shifting (builtin-repeat)
vnoremap < <gv
vnoremap > >gv

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']

map <Leader>n :NERDTreeToggle<CR>

" Setup vimwiki to store in dropbox
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/'}]

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Include Sandstone Stuff
source ~/.vim/sandstone
"
" Default gui color scheme
color ir_black
