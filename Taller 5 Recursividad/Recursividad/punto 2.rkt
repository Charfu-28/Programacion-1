;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 2|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;2. El mismo programa anterior pero mostrando el mensaje n veces.
(define (saludo2 cad n1 n2)
  (if(<= n1 n2)
     (begin
        (display cad)
        (newline)
        (saludo2 cad (+ n1 1) n2)
      )
     (display "fin")
   )
)

(define misaludo
  (begin
    (display "cuantas veces mostrar saludo")
    (saludo2 "hola" 1 (read))
  )
)
;lammado
misaludo