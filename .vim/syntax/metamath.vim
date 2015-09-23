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
syn keyword metamathVariable +t +w -t -w .+ ./\\ .< .<_ .Morphism .Object .\\/ .cod .dom .graph .id .t .w /t 0t 0w 1t <_a <_b A A" A' A0 A1 A1_ A2 B B" B' B0 B1 B1_ B2 C C" C' C0 C1 C1_ C2 D D" D' D0 D1 D1_ D2 E E" E' E0 E1 F F" F' F0 F1 F1_ F2 F3 G G" G' G0 G1 G1_ G2 H H" H' H0 H1 H1_ H2 I I" I' I0 I1 I1_ I2 J J" J' J0 J1 K K" K' K0 K1 L L" L' L0 L1 L1_ L2 L3 M M" M' M0 M1 M1_ M2 N N" N' N0 N1 O O" O' O0 O1 O1_ O2 P P" P' P0 P1 Q Q" Q' Q0 Q1 R R" R' R0 R1_ Ro1 Ro2 S S" S' S0 S1 S1_ S2 T T" T' T0 T1 U U" U' U0 U1 V V" V' V0 V1 V1_ V2 V3 W W" W' W0 W1 W2 X X" X' X0 X1 Y Y" Y' Y0 Y1 Z Z" Z' Z0 Z1 a a" a' a0 a0_ a1 a1_ b b" b' b0 b0_ b1 b1_ c c" c' c0_ c1_ ch ch" ch' ch0_ ch1 d d" d' d0 d1 e e" e' e0 e1 et et" et' et0 et1 f f" f' f0_ f1 g g" g' g0 g1 h h" h' h0 h1 i i" i' i0 i1 j j" j' j0 j1 k k" k' k0 k1 ka l l" l' l0 l1 la m m" m' m0 m1 mu n n" n' n0_ n1 o o" o"_ o' o'_ o0 o0_ o1 o1_ p p" p' p0 p1 ph ph" ph' ph0 ph1 ps ps" ps' ps0 ps1 q q" q' q0 q1 r r" r' r0 r1 rh rh" rh' rh0 rh1 s s" s"_ s' s'_ s0 s1 si si" si' si0 si1 t t" t' t0 t1 ta ta" ta' ta0 ta1 th th" th' th0 th1 u u" u' u0 u1 v v" v"_ v' v'_ v0 v1 v2 w w" w' w0 w1 x x" x' x0 x1 y y" y' y0 y1 z z" z' z0 z1 ze ze" ze' ze0 ze1 ~t ~w

hi def link metamathKeyword Statement
hi def link metamathUnlabeledKeyword Statement
hi def link metamathComment Comment
hi def link metamathInclude PreProc
hi def link metamathLabelDeclaration Identifier
hi def link metamathIllegalCharacter Error
hi def link metamathIllegalKeyword Error
hi def link metamathBlock Statement
hi def link metamathVariable Identifier

setlocal iskeyword=33-255
