;31 Con base en el algoritmo de Euclides, determine el
;Máximo Común Divisor (M.C.D), dados dos números A y B.
(define (mcd n m)
  (if(< n m)
     (if(= (modulo m n)0)
        n
        (if(= (modulo n (modulo m n))0)
           (display (modulo m n))
           (mcd (modulo n (modulo m n))(modulo m n))
        )
     )
     (display "el primero numero debe ser menor")
   )
)

;llamado
(display "ingrese el valor del primer numero: ")
(define n (read))
(display "ingrese el valor del segundo numero: ")
(define m (read))
(mcd n m)
