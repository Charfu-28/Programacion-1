;30 Escribir un programa que permita calcular el capital del que se dispondrá después de N periodos mensuales
;en que un capital C ha estado expuesto a una tasa de interés mensual R.
(define (capital n c r)
  (if (= n 0)
      (display c)
      (capital (- n 1)(+ c r) r)
  )
)

(define (capital1 n c r)
  (capital n c (/(* c r)100))
)
;llamado 
(display "ingrese el numero de meses")
(define n (read))
(display "ingrese el capital ")
(define c (read))
(display "ingrese el interes a pagar ")
(define r(read))
(display "el total a pagar es ")(capital1 n c r)
  