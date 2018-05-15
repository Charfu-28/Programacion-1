;25 Para determinar el promedio académico de un estudiante, este se obtiene a partir
;sumar la nota obtenida en cada materia por el número de créditos (peso asociado) de
;la materia y se divide por el total de créditos cursados. Haga un programa que lea
;por teclado las notas de un estudiante con los créditos asociados a la materia y
;obtenga el promedio académico de este. Cada vez que se leen los datos de una
;calificación, se pregunta al usuario si desea ingresar los datos de otra calificación.

(define (notas m p i d f a)
  (if (and (<= m 5)(<= p 5)(<= i 5)(<= d 5)(<= f 5)(<= a 5))
      (if (and (= m 0)(= p 0)(= i 0)(= d 0)(= f 0)(= a 0))
          0
          (begin
            (display "el promedio es ")
            (exact->inexact (peso m p i d f a))
          )
       )
       (display "error las calificaciones van desde 0 a 5")
  )
)

(define (peso m p i d f a)
  (+(* m 0.25)(* p 0.25)(* i 0.15)(* d 0.05)(* f 0.20)(* a 0.10))
)

;llamado
(display "ingrese las notas desde 0 hasta 1 de cada una de las materias")
(newline)
(display "cada materia tiene diferentes creditos que seran mencionados")
(newline)
(display "ingrese la nota de Matematica (5 creditos) ")
(define m (read))
(newline)
(display "ingrese la nota de Programacion (5 creditos) ")
(define p (read))
(newline)
(display "ingrese la nota de Introduccion (3 creditos) ")
(define i (read))
(newline)
(display "ingrese la nota de Desarrollo (1 creditos) ")
(define d (read))
(newline)
(display "ingrese la nota de Fisica (4 creditos) ")
(define f (read))
(newline)
(display "ingrese la nota de Algebra lineal (2 creditos) ")
(define a (read))
(notas m p i d f a)


;-------------------------------------------------------------------------------------

;forma de Brian
(define (notas x y)
  (begin (display "¿desea ingresar otra nota? ") 
        
         (if (equal? 'si (read))
             
             
            (  (lambda (nop1 x2 nop2 y2 x1 y1) (notas (+ x1 (* x2 y2)) (+ y1 y2) )  )  
             (display "\ningrese la nota\n")
             (read)(display "\ningrese los créditos\n") (read) x y)
         
         (begin (display "es promedio es ")(exact->inexact (/ x y)))
         
          ) )
  )
(display "para calcular el promedio académico ingrese los siguientes datos: ")
((lambda (no x nop y) (notas (* x y) y) )
 (display "\ningrese la primera calificación\n") (read) 
 (display "\ningrese el número de créditos\n") (read))