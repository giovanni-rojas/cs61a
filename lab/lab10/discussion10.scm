(define (insert element lst index)
    (cond
        ((null? lst) (list element))
        ((= index 0) (cons element lst))
        (else (cons (car lst) (insert element (cdr lst) (- index 1))))
    )
)