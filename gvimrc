" Custom status line
set statusline=%F\ %=[\ %{GetCurrentProject()}\ ]%=[\ %c\ :\ %l\ :\ %L\ ]\ %h\ (%P)

"enable mouse
set mouse=a
set selectmode=mouse

set guioptions-=T
set guioptions-=L
set guioptions-=r
set go+=b
set guifont=Courier_New:h16
set cursorline

" need if macvim
silent! set macmeta
:macm File.Close key=<M-w>
:macm Tools.List\ Errors key=<M-l>
:macm Tools.Make key=<M-b>
