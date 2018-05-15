
#lang racket


(require (lib "graphics.ss" "graphics"))
(open-graphics)
;;;;;las dos deficiones de ventanas y las posiciones;;;;;;;;;;;;;;;;;;

(define ventana(open-viewport "ventana" 800 500))
(define ventana2 (open-pixmap "ventanavisible" 500 500))

(define(punto posx posy lad)
  (if(equal? lad 'u)
     ((draw-solid-rectangle ventana2)(make-posn posx posy)10 10 "black")
    (if (equal? lad 'd)
      ((draw-solid-rectangle ventana2)(make-posn posx posy) 10 10 "black")

    (if(equal? lad 'l)

       ((draw-solid-rectangle ventana2)(make-posn posx posy)10 10 "black")

       (if(equal? lad 'r)
          ((draw-solid-rectangle ventana2)(make-posn posx posy)10 10 "black")
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
  (if(equal? press 'up)
     (begin
       (punto posx posy 'u)
       (teclado posx (- posy 10) (key-value(get-key-press ventana)))
      )

    (if(equal? press 'down)
     (begin
       (punto posx posy 'd)
        (teclado posx (+ posy 10) (key-value(get-key-press ventana)))
      )

     (if(equal? press 'left)
      (begin
       (punto posx posy 'l)
        (teclado (- posx 10) posy (key-value(get-key-press ventana)))
       )

        (if(equal? press 'right)
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
     
     