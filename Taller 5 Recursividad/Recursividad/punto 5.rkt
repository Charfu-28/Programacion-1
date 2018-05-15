;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;5. Hacer una función que imprima las tablas de multiplicar desde 1 hasta N.
(define (tabla2 n i j k)
  (if(<= i j)
     (begin
        (display n)
        (display "*")
        (display i)
        (display "=")
        (display (* n i))
        (newline)
        (tabla2 n (+ i 1) j k)
      )
     (if(< n k)
        (tabla2 (+ n 1) 1 j k)
        (display "fin")
      )
   )
)
(display "ingrese hasta que numero la tabla de multiplicar")
(tabla2 1 1 10 (read))