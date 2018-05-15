#lang racket
(require (lib "graphics.ss" "graphics"))(open-graphics)
(define ventana (open-viewport "ventana" 740 500))

((draw-line ventana)(make-posn 9 468)(make-posn 731 468) "red")
((draw-line ventana)(make-posn 8 468)(make-posn 8 490) "red")
((draw-line ventana)(make-posn 731 468)(make-posn 731 490) "red")
((draw-rectangle ventana)(make-posn 9 469) 722 22 "red")


(define tiempo_inicial (current-milliseconds))


(define (tiempo n)
  (if (>= (- (current-milliseconds) tiempo_inicial) 39600)
      (void)
   (if
   (not (equal? tiempo_inicial (- (current-milliseconds) tiempo_inicial)))
   (begin ((draw-solid-rectangle ventana) (make-posn 10 470) (floor (/(- (current-milliseconds) tiempo_inicial) 55)) 20 "blue") (tiempo n))
   (tiempo n))))
(tiempo 0)
