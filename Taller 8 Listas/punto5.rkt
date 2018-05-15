;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Lista 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Hacer una función que reciba una lista de enteros y devuelva el mayor valor
;contenido en la lista o -1 si está vacía.


(define (recibir lista n tam)
  (if (equal? n "si")
      (begin
        (if (null? lista)
                -1
            (mayor lista tam 0 1)
         )
       )
      (begin
        (display"Ingrese un numero entero ")
        (recibir (append lista (list n)) (read) (+ tam 1))
      )
   )
)


(define (mayor lista tam posi posf)
  (if (< posf tam)
      (if (>= (list-ref lista posi) (list-ref lista posf))
          (mayor lista tam posi (+ posf 1))
          (mayor lista tam (+ posi 1) (+ posi 2))
      )
      (begin
        (display lista)
        (newline)
        (display"El mayor valor de la lista es ")
        (list-ref lista posi)
      )
  )
)

;llamado
(display"Ingrese un numero entero ")
(recibir (list) (read) 0)