#lang racket
(define (square-tree tree)
  (cond ((null? tree) null)
        ((not (pair? tree)) (* tree tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define (square-tree-map tree)
  (map (lambda (sub-tree) (if (pair? sub-tree)
                              (square-tree-map sub-tree)
                              (* sub-tree sub-tree)))
       tree))