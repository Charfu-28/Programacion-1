
#lang racket


(require (lib "graphics.ss" "graphics"))
(open-graphics)
;;;;;las dos deficiones de ventanas y las posiciones;;;;;;;;;;;;;;;;;;

(define ventana(open-viewport "ventana" 800 500))
(define ventana2 (open-pixmap "ventanavisible" 800 500))

(define(punto posx posy lad)
  (if(equal? lad 'u)
     ((draw-solid-rectangle ventana2)(make-posn posx posy)50 50 "black")
    (if (equal? lad 'd)
      ((draw-solid-rectangle ventana2)(make-posn posx posy) 50 50 "black")

    (if(equal? lad 'l)

       ((draw-solid-rectangle ventana2)(make-posn posx posy)50 50 "black")

       (if(equal? lad 'r)
          ((draw-solid-rectangle ventana2)(make-posn posx posy)50 50 "black")
         ;else
          (void)
        )
       )
     )
   )
 (copy-viewport ventana2 ventana)
    ((clear-viewport ventana2))
 )

;;;;;;;;;;;;teclado de flechas;;;;;;;;;;;;

(define (teclado posx posy press)
  (if (and(equal? press 'up)(> posy 0))
     (begin
       (punto posx posy 'u)
       (teclado posx (- posy 10) (key-value(get-key-press ventana)))
      )

    (if(and (equal? press 'down)(< posy 450))
     (begin
       (punto posx posy 'd)
        (teclado posx (+ posy 10) (key-value(get-key-press ventana)))
      )

     (if (and(equal? press 'left) (> posx 0))
      (begin
       (punto posx posy 'l)
        (teclado (- posx 10) posy (key-value(get-key-press ventana)))
       )

        (if(and (equal? press 'right ) (< posx 750))
         (begin
           (punto posx posy 'r)
          (teclado (+ posx 10) posy (key-value(get-key-press ventana)))
         )
         
          ;else
            (teclado posx posy (key-value (get-key-press ventana))) 
        
        )
      )
     )
   )
)
;;;;;;;lamado;;;;;;;
(teclado 100 100 'up)



     
     