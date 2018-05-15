;Hacer una función que reciba una cadena de caracteres y devuelva otra sin las vocales.
(display"Ingrese la cadena:")
(newline)
(define cadena (read-line))
(define(funcion x acu)
  (if (>= x 0)
  (if (= (cadena3 (string-ref cadena x)) 1)
     (funcion (- x 1) (+ acu 1))
     (funcion (- x 1)  acu )
  )
  acu
  ))
(define x (- (string-length cadena) 1))
(define (cadena3 n)
  (if(or(equal? n #\a)
        (equal? n #\e)
        (equal? n #\i)
        (equal? n #\o)
        (equal? n #\u))
  1
  0
  ))
;(funcion x 0)
;-----------------------------------------------------------------------------------------

(define cadena2 (- (string-length cadena) (funcion x 0)))
(define nueva (make-string cadena2))

(define (funcion5 cadena cadena2 nueva posi posi2)
  (if(< posi2 cadena2)
     (if(= (cadena3 (string-ref cadena posi)) 1)
     (funcion5 cadena cadena2 nueva (+ posi 1) posi2)
     (begin
     (string-set! nueva posi2 (string-ref cadena posi))
     (funcion5 cadena cadena2 nueva (+ posi 1)(+ posi2 1))
     ))
     nueva
     ))
(funcion5 cadena cadena2 nueva 0 0)