#lang racket
(define v (vector 'A 'p 'p 'l 'e)) 
 
 
(vector-copy! v 4 #(y)) 
 
 
(vector-copy! v 0 v 3 4) 
 
 v
(build-vector 10 add1)
(build-vector 20 add1)
(vector-map + #(5 2) #(5 4))
(vector-take #(1 2 3 4) 4)
(vector-take-right #(1 2 3 4) 2)
(vector-drop #(1 2 3 4) 1)
(vector-memq 4 (vector 1 2 3 4))