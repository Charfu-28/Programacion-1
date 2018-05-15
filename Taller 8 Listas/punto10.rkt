;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Lista 10|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
;Hacer una función que reciba una lista y dos enteros positivos. Se debe devolver
;una sublista con los elementos que hay en las posiciones desde el primer número
;hasta el segundo, incluyéndolos.

(define (recibir lista n cont ent)
  (if (equal? n -1)
      (begin
        (if (= ent 2)
            (sublista lista (list) 0 )
            (display "Debe ingresar unicamente dos enteros positivos")
        )
      )
       (if (and (integer? n) (>= n 0))
           (begin
             (display"Ingrese los datos a la lista ")
             (recibir (append lista (list n)) (read) (+ cont 1) (+ ent 1))
           )
           (begin
             (display"Ingrese los datos a la lista ")
             (recibir (append lista (list n)) (read) (+ cont 1) ent )
           )
      )
  )
)

(define (sublista lista newlist posi )
             (if (= (length newlist) 0)
                 (if (and (integer? (list-ref lista posi)) (> (list-ref lista posi) 0))
                     (sublista lista (append newlist (list (list-ref lista posi))) (+ posi 1))
                     (sublista lista newlist (+ posi 1))
                   )
                     (if (and (integer? (list-ref lista posi)) (> (list-ref lista posi) 0))
                         (append newlist (list (list-ref lista posi)))
                         (sublista lista (append newlist (list (list-ref lista posi))) (+ posi 1))
                     )
              )
 )  
 
;llamado
(display"Ingrese los datos a la lista ")
(recibir (list) (read) 0 0)
