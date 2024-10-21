" Syntax highlighting for .gitleaksignore files

if exists("b:current_syntax")
  finish
endif

" Define the syntax groups
" For a line like :
" 71d82f65323dcec336266757d88e40df0f1c5aca:proto/proto-elastic-iframe/src/app/samplegraph/samplegraph.component.ts:generic-api-key:17
"
" will capture :  "71d82f65323dcec336266757d88e40df0f1c5aca"
syntax match gitleaksignoreHash "^[0-9a-f]\{40\}\ze:"
" will capture proto/proto-elastic-iframe/src/app/samplegraph/samplegraph.component.ts
syntax match gitleaksignorePath "\v:[^:]+:\ze[^:]+:[0-9]+$"
" will capture rule name "generic-api-key"
syntax match gitleaksignoreKey "\v:[^:]+:[0-9]+$"
" will capture "17"
syntax match gitleaksignoreLineNumber "\v:[0-9]+$"

syntax match gitleaksignoreComment "^#.*$"

" Link the syntax groups to highlight groups
highlight link gitleaksignoreComment Comment
highlight link gitleaksignoreHash Identifier
highlight link gitleaksignorePath String
highlight link gitleaksignoreKey Type
highlight link gitleaksignoreLineNumber Number

let b:current_syntax = "gitleaksignore"
