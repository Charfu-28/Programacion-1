;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;11 Implementar una función que eleve un número x a la y (siendo y un entero positivo)
;sin usar la funcion expt.
(define (elevar base exponente acumulador)
  (if (= exponente 0)
      (display acumulador)
      (if (< exponente 0) 
          (elevar base (+ exponente 1) (+ 0 (* base acumulador)))
          (elevar base (- exponente 1) (+ 0 (* base acumulador)))
      )
  )
)
;llamado
(display "ingrese la base ")
(define base (read))
(display "ingrese el exponente ")
(define exponente (read))
(elevar base exponente 1)