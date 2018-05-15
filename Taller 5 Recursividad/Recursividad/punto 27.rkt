;27 Construir una función que reciba como parámetro un número natural N,
;y calcule la suma de todos los naturales menores que el número recibido.
(define (suma n m)
      (if (= n 0)
          (begin
            (display "la suma de los naturales menores igual a n")
            (display "es: ")
            (display m)
          )
         (suma (- n 1)(+ n m))
      )
)

;llamado
(display "ingrese un numero natural ")
(suma (read) 0)
