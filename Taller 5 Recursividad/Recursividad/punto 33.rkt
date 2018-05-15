;33 Construya un programa que imprima las tablas de la suma para cada número natural
;que existe entre dos números M y N diferentes.
;Incluya los dos números límites. Imprima los primeros 15 elementos de cada tabla.
(define (suma n m acu)
  (if (= n m)
      (begin
        (display "la suma de los numeros entre n y m tomando a n y m es: ")
        (+ acu n)
      )
      (if(< n m)
         (begin
           (display acu)
           (newline)
           (suma n (- m 1)(+ acu m))
         )
         (begin
           (display acu)
           (newline)
           (suma (- n 1) m (+ acu n))
         )
       )
   )
)


;llamado
(display "ingrese un numero ")
(define n (read))
(display "ingrese el segundo numero ")
(define m (read))
(suma n m 0)