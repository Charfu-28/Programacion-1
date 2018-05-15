;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Vector 11|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
;Dado un vector hacer una función que invoque a la anterior e indique por pantalla
;cual es el valor máximo del vector.

;Esta funcion crea un vector vacio de longitud igual al valor leido por teclado y llama a la funcion V.
(define (long tamaño)
  (if (integer? tamaño)
      (if (= tamaño 0)
          (display"El vector esta vacio")
          (V (make-vector tamaño) tamaño 0)
      )
      (display"Ingrese solo numeros enteros positivos")
  )
)

;Esta funcion llena el vector vec_nuevo con los datos leidos por teclado y llama a la funcion mayor.
(define (V vec_nuevo tamaño limini)
        (if (< limini tamaño )
              (begin
               (display"Ingrese un numero entero ")
               (vector-set! vec_nuevo limini (read))
               (V vec_nuevo tamaño (+ limini 1))
              )
              (mayor 0 1 tamaño vec_nuevo)          
        )
)
 
;Eesta funcion encuentra el valor maximo del vector vec_nuevo.
(define (mayor posi posi2 tamaño vec_nuevo)
  (if (< posi2 tamaño)
      (if (>= (vector-ref vec_nuevo posi) (vector-ref vec_nuevo posi2))
          (mayor posi (+ posi2 1) tamaño vec_nuevo)
          (mayor (+ posi 1) 0 tamaño vec_nuevo)
      )
      (begin
        (display"El valor máximo del vector es: ")
        (display (vector-ref vec_nuevo posi))
        (newline)
        vec_nuevo
      )
  )
)    
          

;llamado
(display"Ingrese el tamaño del vector ")
(long (read))