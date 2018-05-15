;22 Escriba un programa para caso planteado, que permita calcular el valor del que se
;dispondrá, después de N periodos mensuales en el que un capital C, ha estado
;siendo incrementado por una tasa de interés mensual R. Se presentan dos casos:
;a. Interés simple: El capital no se incrementa con el interés mensual, es decir el
;interés pagado es el mismo para cada periodo mensual.
;b. Interés Compuesto: El interés mensual se le vá sumando al capital, de tal
;forma que el interés pagado va aumentando mes a mes
;--------------------------------------------------------------------------------------
;parte a
(define (interes n c r)
  (if (= n 0)
      (display c)
      (interes (- n 1)(+ c r) r)
  )
)

(define (interes1 n c r)
  (interes n c (/(* c r)100))
)
;llamado 
(display "ingrese el numero de meses")
(define n (read))
(display "ingrese el capital ")
(define c (read))
(display "ingrese el interes a pagar ")
(define r(read))
(display "el total a pagar es ")(interes1 n c r)

(newline)
;-------------------------------------------------------------------
;parte b
(define (compuesto n c r)
  (if (= n 0)
      (c)
      (round (*(expt (+ (interes r) 1) n)c))
  )
)
(define (interes r)
  (/ r 100)
)
;llamado 
(display "ingrese el numero de meses")
(define n (read))
(display "ingrese el capital ")
(define c (read))
(display "ingrese el interes a pagar ")
(define r(read))
(display "el total a pagar es ")(compuesto n c r )