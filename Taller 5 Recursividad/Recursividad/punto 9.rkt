;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que calcule la sumatoria de los números dados por la expresión
;x^2/2 Para todos los números entre 1 y n.
(define (sumatoria x n acu)
  (if(<= x n)
     (sumatoria (+ x 1) n (+ acu (funcion x)))
     (display acu)
   )
)

;la funcion X^2/2
(define (funcion x)
  (/(expt x 2)2)
)

;llamado
(display "ingrese el valor de n para hacer la sumatoria ")
(sumatoria 1 (read) 0)