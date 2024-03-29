" Custom status line
set statusline=%F\ %=[\ %{GetCurrentProject()}\ ]%=[\ %c\ :\ %l\ :\ %L\ ]\ %h\ (%P)

"enable mouse
set mouse=a
set selectmode=mouse

set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=m
set go+=b
set go+=a
set cursorline

nmap <RightMouse> :call ToggleBetweenNERDTreeAndBufExplorer()<CR>
nmap <MiddleMouse> :call OpenFilesFromClipboard('e')<CR>
" need if macvim
if has("gui_macvim")
  set guifont=Courier_New:h16
  silent! set macmeta
  :macm File.Close key=<M-w>
  :macm File.New\ Tab key=<nop>
  :macm File.New\ Window key=<nop>
  :macm Edit.Select\ All key=<nop>
  :macm Tools.List\ Errors key=<nop>
endif
