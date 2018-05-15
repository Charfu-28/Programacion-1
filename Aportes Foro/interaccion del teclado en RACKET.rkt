#lang racket
(require(lib "graphics.ss" "graphics")) (open-graphics)
(define ventana (open-viewport "ventana" 800 500))


(define (nave posx posy lad)
 (if(equal? lad 'u)
     ((draw-solid-rectangle ventana)(make-posn posx posy)10 10 "red")
     (if (equal? lad 'd)
         ((draw-solid-rectangle ventana)(make-posn posx posy)10 10 "red")

  (if (equal? lad 'l)
    
    ((draw-solid-rectangle ventana)(make-posn posx posy)10 10 "red")

    (if(equal? lad 'r)
    ((draw-solid-rectangle ventana)(make-posn posx posy) 10 10 "red")

;else}
   (void)
    
     )
   )
  )
 )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (teclado posx posy press)

 (if (equal? press 'up)
  (begin
    (nave posx posy 'u)
     (teclado posx (- posy 10) (key-value (get-key-press ventana)) ))
  


  (if (equal? press 'down)
  (begin
    (nave posx posy 'd)
     (teclado posx(+ posy 10)(key-value (get-key-press ventana)) ))

  (if (equal? press 'left)
  (begin
    (nave posx posy 'l)
     (teclado(- posx 10) posy (key-value (get-key-press ventana)) ))


  (if (equal? press 'right)
   (begin
     (nave posx posy 'r)
     (teclado (+ posx 10) posy (key-value (get-key-press ventana)) ))

  ;else
  (teclado  posx posy (key-value (get-key-press ventana)) )
  
  )
  )
  ) 
 )
)





;Prueba
(teclado 50 100 10)
