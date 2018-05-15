;Hacer una función que reciba un vector de enteros y devuelva la posición del
;mayor valor de los datos existentes.


;Esta funcion crea un vector vacio de longitud igual al entero recibido por teclado. LLama a la funcion V.
(define (vec tamaño)
  (if (integer? tamaño)
      (if (= tamaño 0)
          (display"El vector esta vacio")
          (V (make-vector tamaño) tamaño 0)
      )
      (display"Ingrese solo numeros enteros positivos")
  )
)

;Esta funcin recibe los datos del vector vec_nuevo, luego llama a la funcion mayor.
(define (V vec_nuevo tamaño limini)
          (if (< limini tamaño)
              (begin
               (display"Ingrese un numero entero ")
               (vector-set! vec_nuevo limini (read))
               (V vec_nuevo tamaño (+ limini 1))
              )
              (begin
                (display"Vector: ")
                (display vec_nuevo)
                (newline)
                (mayor 0 1 tamaño vec_nuevo)          
              )
        )
 )

;Esta funcion determina el valor maximo de los datos del vector Vec_new. 
(define (mayor posi posi2 tamaño Vec_new)
  (if (< posi2 tamaño)
      (if (>= (vector-ref Vec_new posi) (vector-ref Vec_new posi2))
          (mayor posi (+ posi2 1) tamaño Vec_new)
          (mayor (+ posi 1) 0 tamaño Vec_new)
      )
      (begin
        (display"Posicion del mayor valor: ")
        (display posi)
      )
  )
)    

  
;llamado
(display"Ingrese el tamaño del vector ")
(vec (read))