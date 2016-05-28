; the first process generated is recursive and creates the sideways hump shape
; of going out and then coming back in.  We know this because we have a
; procedure calling the original + procedure meaning the interpreter has to do
; the substitution first and then condenses it all:

 ; (+ 4 5) 
 ; (inc (+ (dec 4) 5)) 
 ; (inc (+ 3 5)) 
 ; (inc (inc (+ (dec 3) 5))) 
 ; (inc (inc (+ 2 5))) 
 ; (inc (inc (inc (+ (dec 2) 5)))) 
 ; (inc (inc (inc (+ 1 5)))) 
 ; (inc (inc (inc (inc (+ (dec 1) 5))))) 
 ; (inc (inc (inc (inc (+ 0 5))))) 
 ; (inc (inc (inc (inc 5)))) 
 ; (inc (inc (inc 6))) 
 ; (inc (inc 7)) 
 ; (inc 8) 

; the second process generated is a linear iterative procedure and will maintain
; state at any point in time:

 ; (+ 4 5) 
 ; (+ (dec 4) (inc 5)) 
 ; (+ 3 6) 
 ; (+ (dec 3) (inc 6)) 
 ; (+ 2 7) 
 ; (+ (dec 2) (inc 7)) 
 ; (+ 1 8) 
 ; (+ (dec 1) (inc 8)) 
 ; (+ 0 9) 
