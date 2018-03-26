: prime-allot ( num -> addr )
    prime           ( bool )
    cell% allot     ( bool addr )
    dup             ( bool addr addr )
    rot             ( addr addr bool )
    swap            ( addr bool addr )
    !               ( addr )
;