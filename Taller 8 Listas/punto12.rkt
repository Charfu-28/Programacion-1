;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Lista 12.2|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
;. Hacer una función que reciba números enteros y devuelva una lista de listas. La
;lista debe contener 4 listas. En la primera están los números impares negativos,
;en la segunda los pares negativos, en la tercera los impares positivos y en la
;última los pares positivos. Recuerde que la lista vacía se crea con (list ).


(define (recibir lista n cont)
  (if (not (integer? n))
      (list (lista_1 lista (list) cont 0) (lista_2 lista (list) cont 0) (lista_3 lista (list) cont 0) (lista_4 lista (list) cont 0))
      (begin
        (display"Ingrese un numero entero ")
        (recibir (append lista (list n)) (read) (+ cont 1))
      )
   )
)


(define (lista_1 lista1 new1 tam1 posi1)
  (if (< posi1 tam1)
      (if (and (odd? (list-ref lista1 posi1)) (< (list-ref lista1 posi1) 0))
          (lista_1 lista1 (append new1 (list (list-ref lista1 posi1))) tam1 (+ posi1 1))
          (lista_1 lista1 new1 tam1 (+ posi1 1))
      )
      new1
  )
)

(define (lista_2 lista2 new2 tam2 posi2)
  (if (< posi2 tam2)
      (if (and (even? (list-ref lista2 posi2)) (< (list-ref lista2 posi2) 0))
          (lista_2 lista2 (append new2 (list (list-ref lista2 posi2))) tam2 (+ posi2 1))
          (lista_2 lista2 new2 tam2 (+ posi2 1))
      )
      new2
  )
)

(define (lista_3 lista3 new3 tam3 posi3)
  (if (< posi3 tam3)
      (if (and (odd? (list-ref lista3 posi3)) (>= (list-ref lista3 posi3) 0))
          (lista_3 lista3 (append new3 (list (list-ref lista3 posi3))) tam3 (+ posi3 1))
          (lista_3 lista3 new3 tam3 (+ posi3 1))
      )
      new3
  )
)

(define (lista_4 lista4 new4 tam4 posi4)
  (if (< posi4 tam4)
      (if (and (even? (list-ref lista4 posi4)) (>= (list-ref lista4 posi4) 0))
          (lista_4 lista4 (append new4 (list (list-ref lista4 posi4))) tam4 (+ posi4 1))
          (lista_4 lista4 new4 tam4 (+ posi4 1))
      )
      new4
  )
)

;llamado
(display"Ingrese un numero entero ")
(recibir (list) (read) 0)