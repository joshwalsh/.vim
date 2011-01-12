" Fullscreen takes up entire screen

if has("gui_macvim")
  set fuoptions=maxhorz,maxvert
  " Command-T for CommandT
  " macmenu &File.New\ Tab key=<nop>
  macmenu &File.Open\ Tab\.\.\. key=<nop>
  map <D-T> :CommandT<CR>

  " Command-Shift-F for Ack
  " macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
  macmenu Edit.Find.Find\.\.\. key=<nop>
  map <D-f> :Ack<space>

  " Command-e for ConqueTerm
  map <D-e> :call StartTerm()<CR>

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
endif

" Start without the toolbar
set guioptions-=T

" Default gui color scheme
color molokai

