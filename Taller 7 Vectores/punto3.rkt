;Hacer lo mismo que en el punto anterior, pero generando los datos aleatoriamente.
(define(funcion n)
(funcion2 n (make-vector n) 0 (- n 1))
)
(define(funcion2 n nuevo posi posf)
(if(> posf 0)
(begin
(display"Ingrese un numero entero:")
(newline)
(vector-set! nuevo posf (read))
(funcion2 n nuevo posi (- posf 1))
)
nuevo
)
)
;llamado
(display"Ingrese el tamaño del vector:")
(newline)
(funcion (+ (read) 1))