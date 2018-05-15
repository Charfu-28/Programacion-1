;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;18 Hacer una función que encuentre y devuelva el mínimo común múltiplo de dos
;números a y b (enteros positivos).
(define (mcm a b)
  (lcm a b)
)

;ejemplo
(mcm 2 5)