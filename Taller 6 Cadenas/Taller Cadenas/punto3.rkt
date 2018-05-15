#lang racket
;Hacer una función que reciba un entero N y devuelva una cadena de longitud N,
;leyendo por pantalla cada uno de los N caracteres de la cadena.
(define(cadena2 n)
(cadena3 n (make-string n) 0 (- n 1))
)
(define(cadena3 n nueva posi posf)
(if(< posi n)
(begin
(display"Ingrese cada caracter separado de un enter:")
(newline)
(string-set! nueva posi (read))
(cadena3 n nueva (+ posi 1) posf)
)
nueva
)
)
;llamado
(display"Ingrese el numero de caracteres de la cadena:")
(newline)
(cadena2 (read))