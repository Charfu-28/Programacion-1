#lang racket
;Dado un vector, hacer una función que invierta sus datos en el mismo y devuelva el vector invertido.
(display"Ingrese el vector a invertir:")
(newline)
(define vector1 (vector 1 2 3 4 5))
(define tamaño (vector-length vector1))
(define nuevo (make-vector tamaño))
(define(invertir vector1 nuevo posi posf)
  (if(<= posi posf)
     (begin
       (vector-set! nuevo (- posf posi)(vector-ref vector1 posi))
       (invertir vector1 nuevo (+ posi 1) posf )
       )
     nuevo
     )
  )
(invertir vector1 nuevo 0 (- tamaño 1))