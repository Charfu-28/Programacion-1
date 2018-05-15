;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Factorial) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(display"R/7:")
(newline)
;Hacer una función que calcule el factorial de un número x.
(define(Factorial n)
  (begin
  (if(< n 2)
   1
  (* n (Factorial(- n 1)))
  )
)
  )
; llamado
(display"Calcular factorial de:")
(newline)
(Factorial (read))
    
             