;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;1. Hacer un programa que muestre por pantalla 10 veces el mensaje de texto “hola”.
(define (saludo cad n1 n2)
  (if(<= n1 n2)
     (begin
        (display cad)
        (newline)
        (saludo cad (+ n1 1) n2)
      )
     (display "fin")
   )
)

;lammado
(saludo "hola" 1 10)