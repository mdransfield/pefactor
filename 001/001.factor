! Copyright (C) 2012 mdransfield.
! See http://factorcode.org/license.txt for BSD license.
USING: kernel math sequences prettyprint ;
IN: 001

: sum1toN ( n -- sum )
    dup 1 + * 2 / ;

: sumMultiples ( n target -- sum )
    over /i sum1toN * ;

: intermediate ( target n -- sum target )
    over sumMultiples swap ;

: result ( target -- result )
    3 intermediate 5 intermediate 15 intermediate drop - + ;
! would like to run this a { 3 5 15 } [...] each but it complains about the stack effect decl.
! haven't figured out what the problem is yet.

: run001 ( -- )
    999 result . ;

