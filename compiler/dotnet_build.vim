" Vim Compiler File
" Compiler:    dotnet build
" Maintainer:  kaykay38
" Last Change: 2021
" URL:         https://github.com/kaykay38/dotfiles

if exists("current_compiler")
  finish
endif
let current_compiler = "dotnet_build"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=dotnet\ build\ /clp:Verbosity=quiet\ /p:GenerateFullPaths=true\ \"%:p:h\" 

CompilerSet errorformat=
    \%-A%.%#Microsoft%.%#,
    \%-ZBuild\ FAILED%.%#,\%C%.%#,\%-G\\s%#,%f(%l\\,%v):\ %t%*[^:]\ %m\ \[%.%#\.csproj\],
    \%-G%.%#
