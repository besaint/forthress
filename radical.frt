(
m" Zernov" string-hash 3 % ?
2
)

(
    Function returns:
        -1  -   if the input number was incorrect
        0   -   if the input number has not prime divisor
        A   -   product of prime divisors
)
: radical ( numA -> numB)
    dup 0 < if drop -1 else         ( true - 0, false - num )
        dup 1 +                     ( num num+1 )
        over rot - 1 + swap         ( 1 num+1 )
        dup 1 do                    
            dup 1 - r@ % not if     
                r@ prime if
                    swap            ( num+1 1/product )
                    r@ *            ( num+1 product )
                    swap            ( product num+1 )
                then
            then
        loop
        drop                        ( product )
        dup 1 = if drop 0 then      ( 0 )
    then
;