;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;4. Hacer una función que muestre la tabla de multiplicar de un número N.
(define (tabla n i j)
  (if(<= i j)
     (begin
        (display n)
        (display "*")
        (display i)
        (display "=")
        (display (* n i))
        (newline)
        (tabla n (+ i 1) j)
      )
      (display "fin")
   )
)

;llamado
(display "ingrese el numero para la tabla de multiplicar" )
(tabla (read) 1 10)