" Vim syntax file
" Language: ObjC++
" Maintainer: ?
" Last change: 2003 January 28

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
syntax clear
elseif exists("b:current_syntax")
finish
endif

" Read in C++ and ObjC syntax files
if version < 600
so <sfile>:p:h/cpp.vim
so <sflie>:p:h/objc.vim
else
runtime! syntax/cpp.vim
unlet b:current_syntax
runtime! syntax/objc.vim
unlet b:current_syntax
endif

" If version < 508, we can't override old highlights,
" so we give up
if version >= 508
syn region objCFunc start="^[\t\s]*[-+]" end="$"
contains=ALLBUT,cErrInParen,cErrInBracket
syn keyword objCppNonStructure class contained
endif

let b:current_syntax = "objcpp"

