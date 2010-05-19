(define (close? x y)
  (< (abs (- x y)) 0.001))

(define (approximate radicand check improve)
  (define (good-enough? guess)
    (close? (check guess) radicand))
  (define (iterate-with guess)
    (if (good-enough? guess)
      guess
      (iterate-with (improve radicand guess))))
  (iterate-with 1.0))

(define (square-root x) 
  (define (improve x guess)
    (define (average x y)
      (/ (+ x y) 2))
    (average guess (/ x guess)))
  (define (check x)
    (square x))
  (approximate x check improve))

(define (cube-root x) 
  (define (check x) 
    (* x x x))
  (define (improve x guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3.0))
  (approximate x check improve))

