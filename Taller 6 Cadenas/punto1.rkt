;Hacer una función que reciba una cadena de caracteres y
;devuelva otra mutable y con el contenido de la primera.
(define (cadena n)
(cadenau (string-length n) n)
)
(define (cadenau tamaño n)
(cadenap n (make-string tamaño) tamaño 0 (- tamaño 1) 2)
)
(define(cadenap n newcad tamaño posi posf resta)
  (if(< posi tamaño)
     (if(>= posf 0)
 (begin      
 (string-set! newcad posi (string-ref n posf))
 (cadenap n newcad tamaño (+ posi 1) (- posf 5) resta)
 )
 (cadenap n newcad tamaño posi  (- tamaño resta) (+ resta 1))
 )
  newcad
 )
 )
 ;llamado
(display"Ingrese la cadena:")
(newline)
(cadena (read-line))

 