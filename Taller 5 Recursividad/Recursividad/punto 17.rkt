;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |punto 17|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;funcion de fibonachi
(define (fibonachi n anterior actual cuenta)
  (if (= n 0 )
      1
      (if (<= cuenta n)
          (begin
            (display actual)
            (newline)
            (fibonachi n (+ actual anterior) anterior (+ cuenta 1))
          )  
            (display actual)
      )
  )
)

;llamado
(fibonachi (read) 1 0 1)