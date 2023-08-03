(define (split-at lst n)
  (cond 
    ((= n 0) (cons nil lst))
    ((null? lst) (cons nil nil))
    (else (cons (cons (car lst) (car (split-at (cdr lst) (- n 1)))) (cdr (split-at (cdr lst) (- n 1))))))
)


(define (compose-all funcs)
  (lambda (x) 
    (cond
      ((null? funcs) x)
      (else ((compose-all (cdr funcs)) ((car funcs) x)))
    )
  )
)

