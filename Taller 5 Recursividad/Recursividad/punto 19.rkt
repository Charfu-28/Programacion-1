;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;19 Hacer una función que encuentre y retorne el máximo común divisor entre dos
;números a y b (enteros positivos).
(define (mcd a b)
  (gcd a b)
)

;ejemplo
(display "ingrese un valor: ")
(define a (read))
(display "ingrese el segundo valor: ")
(define b (read))
(mcd a b)