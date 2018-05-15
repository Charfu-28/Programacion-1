(require (lib "graphics.ss" "graphics"))

(open-graphics) 

(define w (open-viewport "Muestra" 600 600))

(define (MostrarPosicion posi)

 ((draw-solid-rectangle w) (make-posn 401 501) 98 28 

"white")

 ((draw-string w) (make-posn 401 520) (number->string 

(posn-x posi)))

 ((draw-string w) (make-posn 451 520) (number->string 

(posn-y posi)))

)


(define (EsperarClick w)

(define c (ready-mouse-click w))

(if (not c)

 (begin

 (MostrarPosicion (query-mouse-posn w))

 (EsperarClick w)

 )

 (begin

 (ValidarClick c) 

 )

)

)

(define (MostrarNuevaVentana w)

((draw-rectangle w) (make-posn 100 500) 100 30 

"green")

((draw-rectangle w) (make-posn 400 500) 100 30 

"green") 
((draw-rectangle w) (make-posn 100 100) 400 250 
"green") 
((draw-string w) (make-posn 118 520) "CERRAR")
(EsperarClick w)
(close-graphics)
) 

(MostrarNuevaVentana w)
(define (Lapiz w po1 po2)

(define c (ready-mouse-release w))

(define po (query-mouse-posn w))

(if (not c)

 (begin

 (if (and (and (<= (posn-x po) (posn-x po2)) (<= 

(posn-y po) (posn-y po2))) (and (>= (posn-x po) (posn-x 

po1)) (>= (posn-y po) (posn-y po1))))

 (begin

 ((draw-pixel w) po "green")

 (Lapiz w po1 po2)

 )

 (begin

 (EsperarClick w)

 )

 )

 )

 (begin

 (EsperarClick w) 

 )

)

)



(define (ValidarClick c) 

 (define po1 (make-posn 100 500))

 (define po2 (make-posn 200 530))

 (define po3 (make-posn 100 100))

 (define po4 (make-posn 500 350))

 (define po (mouse-click-posn c))

 (if (and (and (<= (posn-x po) (posn-x po2)) (<= (posn-
y po) (posn-y po2))) (and (>= (posn-x po) (posn-x po1)) 

(>= (posn-y po) (posn-y po1))))

 (begin

 (display "Good Bye!")

 (close-viewport w)

 )

 (begin

 (if (and (and (<= (posn-x po) (posn-x po4)) (<= 

(posn-y po) (posn-y po4))) (and (>= (posn-x po) (posn-x 

po3)) (>= (posn-y po) (posn-y po3))))

 (begin

 (Lapiz w po3 po4)

 )

 (begin

 (EsperarClick w)

 )

 )

 )

 )

)



