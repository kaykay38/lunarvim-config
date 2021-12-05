" Vim Compiler File
" Compiler:    javac
" Maintainer:  kaykay38
" Last Change: 2021
" URL:         https://github.com/kaykay38/dotfiles

if exists("current_compiler")
  finish
endif
let current_compiler = "javac"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" CompilerSet makeprg=javac\ -g\ -d\ bin\ -Xlint:unchecked\ \'%\' 
" CompilerSet makeprg=javac\ -g\ -d\ bin\ -Xlint:all\ \'%\' 
CompilerSet makeprg=javac\ -g\ -d\ bin\ \'%\' 

CompilerSet errorformat=%A%f:%l:\ %m,%+Z%p^,%+C%.%#,%-G%.%#
