#lang racket

; Given matrix for test
(define M '(
           (1 2 3)
           (3 3 4)
           (3 2 1) )
 )


; row max function
(define (row-max m)
  (map (lambda (row) (apply max row)) m))

;row-avg function
(define (row-avg m)
  (map (lambda (row)
         (let ((avg (/ (apply + row) (length row))))
           (if (integer? avg)
               avg
               (exact->inexact (* (round (* avg 100.0)) 0.01)))))
       m))

; norm-inf function
(define (norm-inf m)
  (apply max (map (lambda (row) (apply + (map abs row))) m)))

; output
(display "Row Max: ")
(display (row-max M))
(newline)

(display "Row Average: ")
(display (row-avg M))
(newline)

(display "Norm-inf: ")
(display (norm-inf M))
(newline)