#lang racket
(require (lib "graphics.ss" "graphics")) (open-graphics)
(define ventana (open-viewport "Movimiento" 600 600))
(define x (open-pixmap "Movimiento" 600 600))
(define fondo (open-pixmap "Movimiento" 600 600))

((draw-viewport fondo) "blue")

(define tiempo (current-seconds))
(define (par? n)
        (if (integer? (/ n 2)) #t #f))

(define (movimiento_derecho posx posy n)
  (cond
    [(and (>= n 0) (<= n 98)) (begin (((draw-pixmap-posn "Derecha.gif" 'gif/mask) x) (make-posn (+ posx 10) posy)) (movimiento_derecho posx posy (+ n 1)))]
    [(= n 99) (begin (copy-viewport x ventana) (movimiento_derecho posx posy (+ n 1)))]
    [(= n 100) (begin ((clear-solid-rectangle x)(make-posn posx posy) 40 60) (movimiento_derecho posx posy (+ n 1)))]
    [(= n 101) (begin (copy-viewport fondo x) (movimiento_derecho posx posy (+ n 1)))]
    [(and (>= n 102) (<= n 197)) (begin (((draw-pixmap-posn "Derecha2.gif" 'gif/mask) x) (make-posn (+ posx 10) posy)) (movimiento_derecho posx posy (+ n 1)))]
    [(= n 198) (begin (copy-viewport x ventana) (movimiento_derecho posx posy (+ n 1)))]
    [(= n 199) (begin ((clear-solid-rectangle x)(make-posn posx posy) 40 60) (movimiento_derecho posx posy (+ n 1)))]
    [(= n 200) (begin (copy-viewport fondo x) (movimiento_derecho posx posy (+ n 1)))]
    [else (void)]))

(define (movimiento_izquierdo posx posy n)
  (cond
    [(and (>= n 0) (<= n 98)) (begin (((draw-pixmap-posn "Izquierda.gif" 'gif/mask) x) (make-posn (+ posx 10) posy)) (movimiento_izquierdo posx posy (+ n 1)))]
    [(= n 99) (begin (copy-viewport x ventana) (movimiento_izquierdo posx posy (+ n 1)))]
    [(= n 100) (begin ((clear-solid-rectangle x)(make-posn posx posy) 40 60) (movimiento_izquierdo posx posy (+ n 1)))]
    [(= n 101) (begin (copy-viewport fondo x) (movimiento_izquierdo posx posy (+ n 1)))]
    [(and (>= n 102) (<= n 197)) (begin (((draw-pixmap-posn "Izquierda2.gif" 'gif/mask) x) (make-posn (+ posx 10) posy)) (movimiento_izquierdo posx posy (+ n 1)))]
    [(= n 198) (begin (copy-viewport x ventana) (movimiento_izquierdo posx posy (+ n 1)))]
    [(= n 199) (begin ((clear-solid-rectangle x)(make-posn posx posy) 40 60) (movimiento_izquierdo posx posy (+ n 1)))]
    [(= n 200) (begin (copy-viewport fondo x) (movimiento_izquierdo posx posy (+ n 1)))]
    [else (void)]))




;Lanza las imagenes del personaje
(define (new_posicion posx posy lad)
  (if (equal? lad 'R)
      (movimiento_derecho posx posy 0)
      (if (equal? lad 'L)
      (movimiento_izquierdo posx posy 0)
      
      
      (void))))
  
  

;Detecta las teclas presionadas
(define (teclado posx posy press)
    (if (< posx 120)
      (begin
        (void)
        (teclado 120 posy (key-value (get-key-press ventana))))
      (if (> posx 575)
      (begin
        (void)
        (teclado 575 posy (key-value (get-key-press ventana))))
      (void)))                  
            (if (equal? press 'right)
            (begin
              (new_posicion posx posy 'R)
              (teclado (+ posx 10) posy (key-value (get-key-press ventana))))
            (if (equal? press 'left)
            (begin
              (new_posicion posx posy 'L)
              (teclado (- posx 10) posy (key-value (get-key-press ventana))))
            
            (teclado posx posy (key-value (get-key-press ventana))))))

(teclado 200 200 0)

