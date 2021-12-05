" Vim Compiler File
" Compiler:    dotnet test
" Maintainer: kaykay38
" Last Change: 2019 Aug 30
" URL:         https://github.com/kaykay38/dotfiles

if exists("current_compiler")
  finish
endif
let current_compiler = "dotnet_test"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=dotnet\ test\ /p:GenerateFullPaths=true
CompilerSet errorformat=
	\%.%#=%f(%l\\\,%c):\ %tarning\ %m\ [%.%#],
	\%.%#=%f(%l\\\,%c):\ %trror\ %m\ [%.%#],
	\%f(%l\\\,%c):\ %tarning\ %m\ [%.%#],
	\%f(%l\\\,%c):\ %trror\ %m\ [%.%#],
    \%EError\ Message:\ %m,
    \%-G%.%#,
    \%.%#\ at\ %.%#\ in\ %f:line\ %l,
    \%C%.%#,
    \%-G%.%#
