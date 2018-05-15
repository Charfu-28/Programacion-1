;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Lista 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

;Hacer una función que reciba una lista de enteros e indique si está ordenada
;ascendentemente.

(define (recibir lista n tam)
   (if (equal? n -1)
       (if (null? lista)
           (display"La lista esta vacia")           
           (ascendente lista tam 0 1)
       )
       (begin
         (display"Ingrese un numero entero ")
         (recibir (append lista (list n)) (read) (+ tam 1))
       )
   )
)
  

(define (ascendente lista tam posi posf)
  (if (< posf tam)
      (if (<= (list-ref lista posi) (list-ref lista posf))
          (ascendente lista tam (+ posi 1) (+ posf 1))
          (begin
            (display lista)
            (newline)
            (display"La lista no esta ordenada ascendentemente")
         )
      )
      (begin
        (display lista)
        (newline)
        (display"La lista esta ordenada ascendentemente")
      )
  ) 
)

;llamado
(display"Ingrese un numero entero ")
(recibir (list) (read) 0)