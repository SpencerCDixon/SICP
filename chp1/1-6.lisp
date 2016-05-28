; the if built into the program is in a special form, meaning that even though
; it follow applicative substiution it won't evaluate both the arguments.  It
; will wait to see what the predicate returns and then evaluate the appropriate
; next procedure.

; in the new-if that Eva creates, it will always execute all the arguments
; making it so the program turns into an infinite loop
