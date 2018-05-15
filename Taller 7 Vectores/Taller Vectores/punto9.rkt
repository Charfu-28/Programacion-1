#lang racket
;Hacer una función que reciba un vector de enteros y devuelva el promedio de los datos existentes.
;(display"Ingrese un vector:")
(newline)
(define vector1 (vector 1 2 3 4 5))
(define tamaño (vector-length vector1))
(define(promedio tamaño posi posf)
  (if(< posi posf)
     (+ (vector-ref vector1 posi) (vector-ref vector1 (+ posi 1)))
     (promedio tamaño (+ posi 1) posf)
     ))
(display"El promedio de los elementos del vector es:")
(newline)
(promedio vector1 0 (- tamaño 1))