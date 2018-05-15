(define micadena (string #\m #\u #\r #\c #\i #\e #\l #\a #\g #\o))
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
micadena 
tamaño
(invertir micadena cad_aux 0 (- tamaño 1))
