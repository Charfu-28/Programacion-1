;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;10 Hacer una función que devuelva la sumatoria de los números dados por la expresión
; x^x Para todos los números entre 1 y n.

(define (sumatoria x n acu)
  (if(<= x n)
     (sumatoria (+ x 1) n (+ acu (funcion x)))
     (display acu)
  )
)

;la funcio x^x
(define (funcion x)
  (expt x x)
)

;llamado
(display "ingrese el numero de n para hacer la sumatoria ")
(sumatoria 1 (read) 0)
