(define (recibir vector1 n tam)
   (if (equal? n -1)
       (if (null? vector1)
           (display"El vetor esta vacio")           
           (ascendente vector1 tam 0 1)
       )
       (begin
         (display"Ingrese un numero entero ")
         (recibir (append vector1 (list n)) (read) (+ tam 1))
       )
   )
)
  

(define (ascendente vector1 tam posi posf)
  (if (< posf tam)
      (if (<= (list-ref vector1 posi) (list-ref vector1 posf))
          (ascendente vector1 tam (+ posi 1) (+ posf 1))
          (begin
            (display vector1)
            (newline)
            (display"El vector esta ordenado ascendentemente")
         )
      )
      (begin
        (display vector1)
        (newline)
        (display"El vector esta ordenado ascendentemente")
      )
  ) 
)

;llamado
(display"Ingrese un numero entero ")
(recibir (list) (read) 0)