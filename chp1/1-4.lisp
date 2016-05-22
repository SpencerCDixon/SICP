; Explain this:
;
; (define (a-plus-abs-b a b)
;   ((if (> b 0) + -) a b))

; You are able to dynamically select an operator using
; a condition in lisp.  In the above function we check to 
; see if b is a negative number, if so we subtract it from 
; a in order to get the effect of adding the absolute value of
; b otherwise if b is positive we just use normal addition

