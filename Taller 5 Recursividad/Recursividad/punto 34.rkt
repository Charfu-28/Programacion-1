;34 Escriba un programa que calcule el valor promedio de los
;números naturales que existen entre dos límites dados.
;Debe considerar ambos límites.
(define (promedio n m acu)
  (if (= n m)
      (begin
        (display "el promedio de los numeros entre n y m tomando a n y m es: ")
        (exact->inexact (/ acu (+ n m)))
      )
      (if(< n m)
         (promedio n (- m 1)(+ acu m))
         (promedio (- n 1) m (+ acu n))
      )
   )
)


;llamado
(display "sacar el promedio de dos numeros")
(newline)
(display "ingrese un numero ")
(define n (read))
(display "ingrese el segundo numero ")
(define m (read))
(promedio n m 0)