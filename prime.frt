( prime - check for prime number )
: prime ( num -> bool )
    dup 0 < if ." Incorrect input number: " . cr else
        dup 2 < if drop 0 else
            dup 4 < if drop 1 else
                dup                             ( num num )
                dup 2 / 1 +                     ( num num limit )
                2 do               
                    r@ % 0 = if                 ( num )
                        drop                    (     )
                        0 r>                    ( 0 diviser )
                        drop                    ( 0 )
                        r@ >r                   ( 0 )
                    else dup then               ( num num )
                loop
                0 = if 0 else drop 1 then       ( bool )
            then
        then
    then
;