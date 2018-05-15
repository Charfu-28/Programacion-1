;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;6. Hacer una función que calcule la sumatoria para los números enteros hasta N.
;funcion sumatoria
(define (sumatoria n i s)
  (if (<= i n)
      (begin 
        (sumatoria n (+ i 1)(+ s i))
      )
      (begin
        (display "la sumatoria es ")
        (display s)        
      )
   )
)
;funcion suma
(define (suma n)
     (sumatoria n 1 0 )
)

;llamado 
(display "ingrese el valor del numero de la sumatoria ")
(suma (read))