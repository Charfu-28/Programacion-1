;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;7. Hacer una función que calcule el factorial de un número x
;funcion sumatoria
(define (num n)
  (if (= n 0)
      1
      (* n (num (- n 1)))
  )
)

;funcion suma
(define fac 
     (begin 
       (display "hallar el factorial de ")
       (num (read))
     )
)

;llamado 
fac