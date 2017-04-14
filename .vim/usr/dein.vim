"--------------------
"dein scripts
"--------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundle/dein')
  call dein#begin('~/.vim/bundle/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundle/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tomasr/molokai')
"  call dein#add('itchyny/lightline.vim')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('tpope/vim-fugitive')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/vimproc.vim')
  call dein#add('justmao945/vim-clang')
  call dein#add('Shougo/neoinclude.vim')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" molokai
colorscheme molokai
set t_Co=256
syntax enable

" lightline.vim
set laststatus=2
set showmode
set showcmd
set ruler

" vim-fugitive
  set statusline=%<     " wrap line position
  set statusline+=[%n]  " buffer number
  set statusline+=%m    " edit flag
  set statusline+=%r    " read only flag
  set statusline+=%h    " help buffer flag
  set statusline+=%w    " preview window flag
  set statusline+=%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}  " show fenc and ff
  set statusline+=%y    " file type in buffer
  set statusline+=\     " whitespace
if winwidth(0) >= 130
  set statusline+=%F    " full file path in buffer
else
  set statusline+=%t    " file name in buffer
endif
  set statusline+=%=    "separator between left justified and right justified
  set statusline+=%{fugitive#statusline()}  " git branch name
  set statusline+=\ \   " two whitespaces
  set statusline+=%1l   " cursor position (line)
  set statusline+=/
  set statusline+=%L    " lines in buffer
  set statusline+=,
  set statusline+=%c    " cursor position (column)
  set statusline+=%V    " cursor position (column) on screen
  set statusline+=\ \   " two whitespaces
  set statusline+=%P    " relative position in buffer

