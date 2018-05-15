;Hacer una función que reciba una lista y un dato y adicione el dato al final de la lista.
(display"Ingrese una lista entre parentesis:")
(newline)
(define lista1 (list (read)))
(display"Ingrese un caracter:")
(newline)
(append lista1 (list(read)))