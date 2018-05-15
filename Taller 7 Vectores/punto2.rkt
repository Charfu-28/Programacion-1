;Hacer una función que reciba un entero N y devuelva un vector de tamaño N,
;con enteros leidos por teclado.
(define(funcion n)
(funcion2 n (make-vector n) 0 (- n 1))
)
(define(funcion2 n nuevo posi posf)
(if(< posi n)
(begin
(display"Ingrese un numero entero:")
(newline)
(vector-set! nuevo posi (read))
(funcion2 n nuevo (+ posi 1) posf)
)
nuevo
)
)
;llamado
(display"Ingrese el tamaño del vector:")
(newline)
(funcion (read))