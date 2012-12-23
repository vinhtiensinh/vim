"Disable the blinking
:set guicursor+=a:blinkon0

call pathogen#infect()
call pathogen#helptags()

let mapleader = ' '
let maplocalleader = '\'

" Use undo file and no swap file
set undofile
set noswapfile

" Tab to be two space
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" indentation
set cindent
set smartindent
set autoindent
set title
set nocompatible

" line number
set number

set splitright

"note the space at the end
set fillchars+=vert:\ 


" syntax and filetype on
syntax on
filetype on
filetype plugin on
filetype indent on

" wild chars and ignore file type and folders
set wildchar=<Tab> wildmenu wildmode=list:longest
set wildignore=.o,.obj,.git,*.swp,*.*~,*.gif,*.png,*.ico,*.jpg,*.class,*.gem,*.gz,dependencies,tmp,_build,cover_db,public/stylesheets/*.css

"hightlight extra space
highlight ExtraWhitespace ctermbg=DarkGrey guibg=DarkGrey
match ExtraWhitespace /[ \t]\+$/

"better background
highlight Pmenu guibg=grey14 guifg=moccasin ctermbg=DarkGrey ctermfg=Black

" Color the status line
hi StatusLine ctermfg=blue ctermbg=lightgrey

" Status line always on
set laststatus=2

" Set tab title
set guitablabel='%N/\ %t\ %M'

" put cursor at last pos when you open file again
autocmd BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\  exe "normal! g`\"" |
\ endif

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" dont beep
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"quicker autocomplete
set complete -=i

"this is required other wise endwise will not works along side supertab
let g:SuperTabCrMapping = 0

" color scheme
colorscheme vividchalk

" =========================== PLUGIN CONFIGURATIONS ==============================================================

" minibufexplorer
let g:miniBufExplVSplit = 25
let g:miniBufExplMinSize = 31
let g:miniBufExplMaxSize = 31
"let g:miniBufExplAutoClose = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplorerMoreThanOne = 3
let g:miniBufExplModSelTarget = 1
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplUseSingleClick = 1

" nerd tree
let g:NERDTreeMapOpenSplit = '<S-Space>'
let g:NERDTreeMapOpenVSplit = '<S-CR>'
let g:NERDTreeWinSize = 31

" light house
autocmd VimEnter * call SwitchToProject()
autocmd TabEnter * execute ":UMiniBufExplorer"
map gt :call GTTabMove('next')<CR>
map gT :call GTTabMove('previous')<CR>
function! GTTabMove(direction)
  if IsBufExplorerOpen() && tabpagenr('$') == 1
    if a:direction == 'next'
      call NextBuffer()
    else
      call PreviousBuffer()
    endif
  elseif a:direction == 'next'
    normal! gt
  else
    normal! gT
  endif
endfunction

" commandT
let g:CommandTCancelMap = '<SPACE>'
let g:CommandTSelectNextMap = "<Tab>"
let g:CommandTSelectPrevMap = "<S-Tab>"
let g:CommandTAcceptSelectionSplitMap = '<S-Space>'
let g:CommandTAcceptSelectionVSplitMap = '<S-CR>'

" transparent
let g:transparency = 0
function! ToggleTransparency()
  if g:transparency == 0
    set transparency=25
    let g:transparency = 25
  else
    set transparency=0
    let g:transparency=0
  endif
endfunction

function! CommandW()
  if tabpagenr('$') == 1
    call feedkeys(":bd\<CR>")
  else
    call feedkeys(":tabclose\<CR>")
  endif
endfunction


" taglist
so $HOME/.vim/bundle/taglist-plus/plugin/taglist-plus.vim
:TlistAddFiles ./tags
:TlistAddFiles ./jsctags
let Tlist_Ctags_Cmd = '/opt/local/bin/ctags'
let Tlist_Exit_OnlyWindow = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Compact_Format = 1
let Tlist_Auto_Update = 1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_SingleClick = 1
let Tlist_Show_One_File = 1
let g:Tlist_GainFocus_On_ToggleOpen = 0
"let Tlist_Close_On_Select = 1
let Tlist_Use_Right_Window = 1

"use sign for checking syntax
" let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:syntastic_disabled_filetypes = ['cucumber', 'sass', 'scss']

" disable lighthouse if on terminal
if !has('gui_running')
  autocmd VimEnter * call ToggleDisableEnableMiniBufExplorer()
endif

" save and load last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal g`\"" |
    \ endif

silent! so ~/.vim/mapvimrc
silent! so ./.localvimrc

"extra file type
au BufRead,BufNewFile *.hamlc set ft=haml
