;28 Construir un programa que dados dos enteros M y N diferentes,
;calcule la suma de los cuadrados de los números que hay entre ellos, sin incluirlos.
(define (+^2 n m acu)
  (if (= n m)
      (begin
        (display "la suma de los cuadrados de los numeros entre n y m sin tomarlos a n y m es: ")
        (- acu 1)
      )
      (if(< n m)
         (begin
           (display acu)
           (newline)
           (+^2 n (- m 1)(+ acu (expt (- m 1)2)))
         )
         (begin
           (display acu)
           (newline)
           (+^2 (- n 1) m (+ acu (expt (- n 1)2)))
         )
       )
   )
)


;llamado
(display "ingrese un numero ")
(define n (read))
(display "ingrese el segundo numero ")
(define m (read))
(+^2 n m 0)