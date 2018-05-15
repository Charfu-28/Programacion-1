;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 20|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;20 Hacer un programa que indique los pasos a seguir para resolver el problema de las
;torres de hanoi con n anillos
(define (hanoi3 n)
  7
)
(define (hanoi2 n)
  3
)

(define (hanoi n)
  (if (> n 1)
      (if (= n 2)
          (hanoi2 1)
          (if(= n (hanoi2 1))
             (+ (expt 2 (- n 1))(hanoi2 1))
             (if(= n (hanoi3 1))
                (+ (expt 2 (- n 1))(hanoi3 1))
                (+ (expt 2 (- n 1))(hanoi (- n 1)))
             )         
          )
       )
      (display "solo es para mas de 1 fichas")
  )
)

;ejemplo
(display "ingrese el numero de fichas ")
(hanoi (read))
