;Hacer una función que reciba una cadena de caracteres mutable y la invierta en ella misma.
(display"Ingrese la cadena:")
(newline)
(define micadena (read-line))
(define tamaño (string-length micadena))
(define cad_aux (make-string tamaño))
(define(invertir micadena cad_aux posi posf)
  (if(<= posi posf)
     (begin
       (string-set! cad_aux (- posf posi)(string-ref micadena posi))
       (invertir micadena cad_aux (+ posi 1) posf )
       )
     cad_aux
     )
  )
(invertir micadena cad_aux 0 (- tamaño 1))