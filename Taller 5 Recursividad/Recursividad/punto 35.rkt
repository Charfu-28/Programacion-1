;35 Calcule la suma de los cubos de los números naturales que hay entre M y N.
;Siendo M y N diferentes. No tenga en cuenta los límites.
(define (+^3 n m acu)
  (if (= n m)
      (begin
        (display "la suma del cubo de los numeros entre n y m sin tomarlos a n y m es: ")
        (- acu 1)
      )
      (if(< n m)
           (+^3 n (- m 1)(+ acu (expt (- m 1)3)))
           (+^3 (- n 1) m (+ acu (expt (- n 1)3)))
       )
   )
)


;llamado
(display "ingrese un numero ")
(define n (read))
(display "ingrese el segundo numero ")
(define m (read))
(+^3 n m 0)