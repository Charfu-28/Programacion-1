#lang racket
;Hacer una función que reciba dos cadenas de caracteres e indique si la segunda está
;incluida en la primera (es decir si es substring).
(display"Ingrese la primera cadena:")
(newline)
(define cadena1 (read-line))
(display"Ingrese la segunda cadena:")
(newline)
(define cadena2 (read-line))
(define tamañocad2 (string-length cadena2))
(define(incluida posi tamañocad2)
  (if(> (string-length cadena1) tamañocad2)
     (if
      (equal? (substring cadena1 posi tamañocad2) cadena2)
       (display"La cadena2 es substring de cadena1")
       (incluida (+ posi 1) (+ tamañocad2 1))
     )
    (display"La cadena2 no es substring de cadena1")
   )
 )
(incluida 0  tamañocad2)