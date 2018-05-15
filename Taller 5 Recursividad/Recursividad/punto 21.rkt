;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 21|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;21 Se considera la serie definida por: X1=0, X2=1, X3=8, ..., Xn = (Xn-3) + (Xn-2)^3 + (Xn-1)^2
;Dado un valor de n (entero positivo), construya un programa que permita calcular el
;valor del término Xn.
(define (primero n)
  0
)
(define (segundo n)
  1
)
(define (tercero n)
  8
)
(define (xn n)
  (if (> n 0)
      (if (= n 1)
          (primero 1)
          (if (= n 2)
              (segundo 1)
              (if (= n 3)
                  (tercero 1)
                  (if (> n 3)
                      (+ (xn (- n 3))(expt (xn (- n 2)) 3)(expt (xn (- n 1))2))
                      (display "solo numeros enteros positivos")
                   )
              )
           )
        )
      (display "solo es para numeros mayores a 0")
    )
)
    

;llamado 
(display "ingrese el valor de n ")
(xn (read))
      