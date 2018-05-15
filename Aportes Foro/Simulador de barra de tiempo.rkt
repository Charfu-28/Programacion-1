#lang racket
(require (lib "graphics.ss" "graphics"))(open-graphics)
(define ventana (open-viewport "ventana" 740 500))


((draw-rectangle ventana)(make-posn 9 470) 722 20 "red")

(define (funcion n)
  (cond
    [(and (integer? n) (>= n 0)) (cond
                                   [(= n 0) 0]
                                   [(and (<= n 300) (>= n 1)) 1]
                                   [else (+ (floor (/ n 300)) 1)])]
    [display "Error"]))
(define (timer n i)
  (cond
    [(= n 0) (display (funcion n))]
    [else (cond
            [(< i n) (begin ((draw-solid-rectangle ventana)(make-posn 10 470) (funcion i) 20 "blue") (timer n (+ i 1)))]
            [else (display (funcion n))])]))
(define (Time n)
  (timer n 0))

(Time 216000)