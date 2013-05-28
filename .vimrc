" Created by meddle@2013-05-25
"
" This is a portable vimrc configuration file using Vundle for plugin
" management.
"
" Set Vim to be Vim and clean up the runtimepath; The runtime path will
" include the system directories and the directory containing this file.
set nocp

let s:current = expand('%:p:h')
while s:current != '/'

  if isdirectory(s:current . '/.vim')
    let s:parent = s:current . '/.vim'
    break
  endif
  let s:current = fnamemodify(s:current, ':h')
endwhile

let s:clean_path = $VIM . '/vimfiles,' . $VIMRUNTIME . ',' . $VIM . '/vimfiles/after'
let &runtimepath = s:parent . ',' . s:clean_path . ',' . s:parent . '/after'
" Setup Vundle to manage your plugins:
filetype off
let &runtimepath = &runtimepath . ',' . s:parent . '/bundle/vundle'
call vundle#rc(s:parent . '/bundle')

" List of the plugins managed by Vundle:

au BufRead,BufNewFile VundleFile set filetype=vim
if filereadable("VundleFile")
    so VundleFile
endif

" End of the list of plugins
filetype plugin indent on

" Option list:
syntax on
