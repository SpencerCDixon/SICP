; Test to determine whether intepreter is using
; applicative-order evaluation or normal-order evaluation

(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y)
  )

(test 0 (p))

; normal-order evaluation involves fully expanding all expressions and then
; evaluating them.  When expanding the expression above in normal-order it will
; eventually evaluate to 0:

; if (= 0 0) 0 (p)  --> will return 0 and ignore (p)

; applicative-orer evaluation evaluates the arguments and then applies them to
; future expressions thus saving in repetition.  Because of this, the above
; implementation would create an infinite loop.

