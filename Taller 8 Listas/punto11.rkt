;Hacer una función que reciba una lista de nombres (cadenas de caracteres) y
;devuelva la cadena de mayor longitud.

(define (recibir lista n cont)
  (if (equal? n "t")
     (lmayor lista cont 0 1)
     (begin
       (display"Ingrese una cadena esta terminara cuando ingrese t")
       (recibir (append lista (list n)) (read-line) (+ cont 1))
     )
   )
)
(newline)
(define (lmayor lista tam posi posf)
  (if (< posf tam)
     (if (>=(string-length (list-ref lista posi)) (string-length (list-ref lista posf)))
         (lmayor lista tam posi (+ posf 1))
         (lmayor lista tam (+ posi 1) (+ posi 2))
     )
     (begin
     (newline)
     (display"La cadena de mayor tamaño es:")
     (newline)
     (list-ref lista posi))
   )
)         
;------------------------------------------------------------------------
;llamado
(display"Ingrese una cadena esta terminara cuando ingrese t ")
(newline)
(recibir (list) (read-line) 0)
