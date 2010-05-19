(load "ex1.8.scm")

(define (assert-close actual expected)
  (assert-true (close? actual expected)))

(in-test-group exercise-1-8-cube-root
  (define-each-test
    (assert-close (cube-root 27) 3)))

(in-test-group exercise-1-8-sqrt
  (define-each-test
    (assert-close (square-root 9) 3)))
