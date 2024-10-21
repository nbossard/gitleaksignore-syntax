" Syntax highlighting for .gitleaksignore files

if exists("b:current_syntax")
  finish
endif

syntax match gitleaksignoreComment "^#.*$"

highlight link gitleaksignoreComment Comment

let b:current_syntax = "gitleaksignore"

