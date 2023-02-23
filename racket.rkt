#lang racket
;; Esto es un comentario

(define a 5)

(define fn
  (lambda (x)
    (+ x 5)))

( define fn2
   (lambda (x y)
     (+ x y)))


(define fn3
  (lambda (x)
    (lambda (y)
      (+ x y))))

;; sum of squares: number number -> number
(define teran
  (lambda (x y)
    (+ (* x x) (* y y))))

;; test
(teran 3 4)

;; area circle
(define area
  (lambda (r)
    (* r r 3.1415)))

(area 10)

;; Clasico
(define wage
  (lambda (payment hours)
    (* payment hours)))

(wage 8 500)


;; maximo, regresa max de los dos
(define maxi
  (lambda (a b)
    (cond
      [(> a b) a]
      [else b])))


;; interest for <$500 is $20
;; interest for <$2,000 is $90
;; interest for <$10,000 is $500

(define interest
  (lambda (a)
    (cond
      [(< a 500) 20]
      [(< a 2000) 90]
      [(< a 10000) 500]
      [else 0])))


;; recurssion

(define fact
  (lambda (n)
    (cond
      [(>= 1 n) 1]
      [else (* n (fact (- n 1)))]
      )))

(define fib
  (lambda (n)
    (cond
      [(<= n 2) 1]
      [else (+ (fib (- n 1)) (fib (- n 2)))]
      )))

(define s
  (lambda (a b)
    (cond
      [(> a b) (s b a)]
      [(= a b) a]
      [else (+ (s a (- b 1)) b)]
      )))

;; max common divisor
(define gcd
  (lambda (a b)
    (cond
      [(= b 0) a]
      [else (gcd b (remainder a b))]
      )))

