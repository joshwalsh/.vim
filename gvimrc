" Disable the toolbar and scroll bars
set guioptions=egm

set antialias

set guifont=menlo:h12
set linespace=1

set lines=405
set columns=160
set transparency=0

" Fullscreen takes up entire screen
set fuoptions=maxhorz,maxvert

if has("gui_macvim")
  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
endif

" Start without the toolbar
set guioptions-=T

" Default gui color scheme
color ir_black
"
" Disable netrw's autocmd, since we're ALWAYS using NERDTree
runtime plugin/netRwPlugin.vim
augroup FileExplorer
  au!
augroup END

let g:NERDTreeHijackNetrw = 0
