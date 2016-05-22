; Define a procedure takes 3 nums as args
; and returns sum of the squares of the two larger numbers

(define (square x) (* x x))

(define (sum-of-large-squares x y z)
  (- (+ (square x) (square y) (square z))
     (cond ((and (< (square x) (square y)) (< (square x) (square z))) (square x))
           ((and (< (square y) (square x)) (< (square y) (square z))) (square y))
           (else square z))))

(sum-of-large-squares 2 4 6) ; 52
