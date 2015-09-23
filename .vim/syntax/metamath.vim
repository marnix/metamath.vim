if exists("b:current_syntax")
        finish
endif

syn match metamathKeyword '\$[apfe]' skipwhite
syn match metamathBlock '\$[{}]'
syn match metamathUnlabeledKeyword '\$[d=.cv]' skipwhite
syn region metamathComment start="\$(" end="\$)" contains=metamathIllegalCharacter
syn region metamathInclude start="\$\[" end="\$\]"
syn match metamathLabelDeclaration '[-._a-zA-Z0-9]\+\(\(\s\|\n\)\+\$[apfe]\)\@='
syn match metamathIllegalCharacter '[^\t\r\n -~]'
syn match metamathIllegalKeyword '\$\([^apfed=.cv(){}\[\]]\|[apfed=.cv(){}\[\]]\S\+\)'

hi def link metamathKeyword Statement
hi def link metamathUnlabeledKeyword Statement
hi def link metamathComment Comment
hi def link metamathInclude PreProc
hi def link metamathLabelDeclaration Identifier
hi def link metamathIllegalCharacter Error
hi def link metamathIllegalKeyword Error
hi def link metamathBlock Statement
