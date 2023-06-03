#lang racket



;test
;(define M '( (1.1 2 3)    (3 3.5 4)    (-3 2.6 1) ) ) 

;test
;(define M '( (0.1 2 3)    (3.7 3 4)    (3 12.8 1) ) ) 

;test
;(define M '( (-21 -2 -3)    (3.6 3 4.43)    (3.3 2 1) ) ) 

;given matrix
(define M '( (1 2 3)    (3 3 4)    (3 2 1) ) ) 

; row max function
 (define (row-max m)
  (map (lambda (row)
         (let ((max-val (apply max row)))
           (if (integer? max-val)
               (inexact->exact (exact->inexact max-val))
               max-val)))
       m))
; row-avg function
(define (row-avg m)
  (map (lambda (row)
         (let ((avg (/ (apply + row) (length row))))
           (if (number? avg)
               (if (integer? avg)
                   avg
                   (/ (round (* avg 100)) 100.0))
               avg)))
       m))

; norm-inf function
(define (norm-inf m)
  (let ((max-row-sum 0))
    (for-each (lambda (row)
                (let ((row-sum (apply + (map abs row))))
                  (set! max-row-sum (max max-row-sum row-sum))))
              m)
    max-row-sum))

  

  
; output
(display "Row Max: ")
(for-each (lambda (x) (display x) (display " ")) (row-max M))
(newline)

(display "Row Average: ")
(for-each (lambda (x) (display x) (display " ")) (row-avg M))
(newline)

(display "Norm-inf: ")
(let ((norm (norm-inf M)))
  (display (if (integer? norm)
               (number->string norm)
               (exact->inexact norm))))

