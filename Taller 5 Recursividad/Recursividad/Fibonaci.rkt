;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Fibonaci) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define(fibonaci n)
  (if(= n 0)
     1
  (if(= n 1)
     1
  (if(>= n 2)
  (+(fibonaci (- n 1))(fibonaci (- n 2)))
  (display"Ingrese un numero positivo"))
  )
 )
)
;llamado
(fibonaci 5)
     
     
     