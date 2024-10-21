" Syntax highlighting for .gitleaksignore files

if exists("b:current_syntax")
  finish
endif

" Define the syntax groups
syntax match gitleaksignoreComment "^#.*$"
syntax match gitleaksignoreHash "^[0-9a-f]\{40\}\ze:"
syntax match gitleaksignorePath "\v:[^:]+:\ze[^:]+:[0-9]+$"
syntax match gitleaksignoreKey "\v:[^:]+:[0-9]+$"
syntax match gitleaksignoreLineNumber "\v:[0-9]+$"

" Link the syntax groups to highlight groups
highlight link gitleaksignoreComment Comment
highlight link gitleaksignoreHash Identifier
highlight link gitleaksignorePath String
highlight link gitleaksignoreKey Type
highlight link gitleaksignoreLineNumber Number

let b:current_syntax = "gitleaksignore"
