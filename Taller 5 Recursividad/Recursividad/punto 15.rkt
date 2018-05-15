;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 15|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;15 Hacer una función booleana que indique si un número es primo o no.
(define (primo n x)
  (if (= n 1)
      (display "no es primo")
      (if (= x 1)
          (display "es primo")
          (if (= (modulo n x) 0)
              (display "no es primo")
              (primo n (- x 1))
          )
      )
   )
)

(display "ingrese el numero ")
(define n (read))
(define x (- n 1))

;llamado
(primo n x)