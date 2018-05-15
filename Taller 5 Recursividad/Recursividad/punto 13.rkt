;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;13 Hacer una función que indique si un número x es par. Debe retornar verdadero o
;falso. Hacer esta función sin utilizar la función remainder
(define (par x)
  (if (even? x)
      (display"es par")
      (display "no es par")
  )
)

;llamado
(display "ingrese el valor del numero")
(par (read))