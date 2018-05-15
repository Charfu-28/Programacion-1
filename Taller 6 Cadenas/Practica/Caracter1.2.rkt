;Hacer una función que reciba una cadena de caracteres y devuelva otra mutable y con
;el contenido de la primera.

(define (mutable cad tamaño nueva lim limaux)
  (if (< lim tamaño)
      (if (>= limaux 0)
          (begin
            (string-set! nueva lim (string-ref cad limaux))
            (mutable cad tamaño nueva (+ lim 1) (- limaux 2))
          )
          (mutable cad tamaño nueva lim (- tamaño 2))
      )
      nueva
  )
)
      
(define (cadaux cad)
  (cadaux2 cad (string-length cad))
)

(define (cadaux2 cad tamaño)
  (mutable cad tamaño (make-string tamaño) 0 (- tamaño 1))
)

;llamado
(display"Ingrese la cadena ")
(cadaux (read-line))