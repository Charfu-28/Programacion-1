;Hacer una función boolean que reciba dos cadenas de caracteres e indique si son  iguales. 
(display"Ingrese la primera cadena:")
(newline)
(define cadena1 (read-line))
(display"Ingrese la segunda cadena:")
(newline)
(define cadena2 (read-line))
  (if(equal? cadena1 cadena2)
     (display"Las cadenas son iguales")
     (display"Las cadenas son diferentes")
     )
  