;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 14|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;14 Hacer una función que muestre por pantalla los submúltiplos de x (entero positivo)
(define (submultiplo x n)
  (if (> n 1)
      (if(= (modulo x n) 0)
          (begin
             (display n)
             (newline)
             (submultiplo x (- n 1))
          )
             (submultiplo x (- n 1))
      )
      1 
   ) 
)  

;llamado
(display "sacar los submultiplos de ")
(define x (read))
(newline)
(display "vuelva a ingresar el mismo numero")
(define n (read))

(submultiplo x n)
