;Hacer una función que reciba una cadena de caracteres y cuente cuantas vocales tiene.
(display"Ingrese la cadena:")
(newline)
(define cadena (read-line))
(define(funcion x acu)
  (if(>= x 0)
     (if(or(equal? (string-ref cadena x) #\a)
           (equal? (string-ref cadena x) #\e)
           (equal? (string-ref cadena x) #\i)
           (equal? (string-ref cadena x) #\o)
           (equal? (string-ref cadena x) #\u))
     (funcion (- x 1) (+ acu 1))
     (funcion (- x 1)  acu )
     )
     acu
  )
  )
(define x (- (string-length cadena) 1))
;llamado
(display"El numero de vocales de cadena es:")
(newline)
(funcion x 0)
  
