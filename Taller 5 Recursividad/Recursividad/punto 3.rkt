;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;3. Hacer un programa que escriba los primeros N números enteros.
(define (entero n m)
  (if (<= n m)
      (begin
        (display n)
        (newline)
        (entero (+ n 1) m)
      )
      (display "fin")
  )
)

(define mostrar
  (begin
    (display"ingrese un numero ")
    (entero 1 (read))
  )
)

mostrar