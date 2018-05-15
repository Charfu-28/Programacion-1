#lang racket
(require (lib "graphics.ss" "graphics"))
(open-graphics)
(define ventana (open-viewport "ventana" 800 500))

  
  
(define (new_posicion posx posy lad)
  (if (equal? lad 'U)
      ((draw-rectangle ventana)(make-posn posx (- posy 10)) 10 10 "black")
      (if (equal? lad 'D)
      ((draw-rectangle ventana)(make-posn posx (+ posy 10)) 10 10 "black")
      (if (equal? lad 'R)
      ((draw-rectangle ventana)(make-posn (+ posx 10) posy) 10 10 "black")
      (if (equal? lad 'L)
      ((draw-rectangle ventana)(make-posn (- posx 10) posy) 10 10 "black")
      
      (void))))))


(define (teclado posx posy press)
        (if (equal? press 'up)
            (begin
              (new_posicion posx posy 'U)
              (teclado posx (- posy 10) (key-value (get-key-press ventana))))
            (if (equal? press 'down)
            (begin
              (new_posicion posx posy 'D)
              (teclado posx (+ posy 10) (key-value (get-key-press ventana))))
            (if (equal? press 'right)
            (begin
              (new_posicion posx posy 'R)
              (teclado (+ posx 10) posy (key-value (get-key-press ventana))))
            (if (equal? press 'left)
            (begin
              (new_posicion posx posy 'L)
              (teclado (- posx 10) posy (key-value (get-key-press ventana))))
            
            (teclado posx posy (key-value (get-key-press ventana))))))))

(teclado 0 0 'right)