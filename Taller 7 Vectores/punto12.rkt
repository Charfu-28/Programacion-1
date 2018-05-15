;Hacer una función que reciba un vector de enteros e indique si está ordenado
;ascendentemente.

;Esta funcion llama a la funcion V y crea un vector vacio de tamaño igual al valor leido por teclado.
(define (vec tamaño)
  (if (and (integer? tamaño) (>= tamaño 0) )
      (if (= tamaño 0)
          (display"El vector esta vacio")
          (V (make-vector tamaño) tamaño 0 0)
      )
      (display"Ingrese solo numeros enteros positivos")
  )
)

;Esta funcion llena el vector vacio vec_nuevo con los datos leidos por teclado y llama a la funcion ascendente.
(define (V vec_nuevo tamaño limini lim)
        (if (< lim tamaño)
          (if (<= limini (- tamaño 1))
              (begin
                (display"Ingrese un numero entero ")
                (vector-set! vec_nuevo lim (read))
                (V vec_nuevo tamaño (+ limini 1) (+ lim 1))
              )
              (V vec_nuevo tamaño 0 lim)
           )
          (begin
            (ascendente 0 tamaño vec_nuevo)
            (newline)
            vec_nuevo
          )
        )
  )
;Esta funcion determina si el vector vec_new es ascendente o no.
(define (ascendente posi tamaño vec_new)
  (if (<  posi  (- tamaño 1))
      (if (<= (vector-ref vec_new posi) (vector-ref vec_new (+ posi 1)))
          (ascendente (+ posi 1) tamaño vec_new)
          (display"El vector no esta ordenado ascendentemente")
      )
      (display"El vector esta ordenado ascendentemente")
  )
)    
          

;llamado
(display"Ingrese el tamaño del vector ")
(vec (read))