;24 Hacer una función que reciba como parámetro un número entero N,
;lea N números y devuelva el promedio de los datos leídos.

(define (promedio n)
  (if (= n 0)
      0
      (begin
        (display n)
        (newline)
        (promedio (- n 1))
      )
  )
)
(define (promedio1 n m acu)
  (if (> n 0)
      (promedio1 (- n 1) m(+ acu n))
      (begin
        (display "el promedio es ")
        (exact->inexact (/ acu m))
      )
  )
)

;llamado
(display "ingrese el valor de n ")
(define n (read))
(define m n)
(promedio1 n m 0)
(promedio n)