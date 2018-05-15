;Hacer una función reciba un vector de enteros y un numero X, busque el número X en el vector y devuelva la posición donde se encuentra la primera vez ese número en el vector. En caso de no estar debe devolver -1.
(define vector1 (vector 1 2 3 4 5))
(display"Ingrese el caracter que desea buscar:")
(newline)
(define caracter (read))
(define(funcion vector1 caracter posi posf)
  (if(< posi posf)
   (if(=(vector-ref vector1 posi) caracter)
   (begin
   (display"El caracter se encuentra en la posicion:")
   (newline)
    posi
    )
   (funcion vector1 caracter (+ posi 1) posf )
   )
  -1
   )
)
(funcion vector1 caracter 0 (vector-length vector1))

