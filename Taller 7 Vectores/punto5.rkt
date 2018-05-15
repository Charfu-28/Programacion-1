;Dado un vector V de enteros y un número X, devolver el valor de veces que está X en el vector.
(define vector1 (vector 1 2 3 4 5))
(display"Ingrese el numero que desea buscar:")
(newline)
(define numero (read))
(define(funcion vector1 numero posi posf acu)
  (if(< posi posf)
     (if(= (vector-ref vector1 posi) numero)
        (begin
        (display"Las veces que esta numero en vector es:")
        (newline)
        (+ acu 1))
        (funcion vector1 numero (+ posi 1) posf acu) 
        )
        acu
)
)
(funcion vector1 numero 0 (vector-length vector1) 0)
  

