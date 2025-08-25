take = #(define-scheme-function
  (lst n)
  (list? integer?)
  (if
    (or (null? lst) (= n 0))
    '()
    (cons (car lst) (take (cdr lst) (- n 1)))
  )
)

drop = #(define-scheme-function
  (lst n)
  (list? integer?)
  (if
    (or (null? lst) (= n 0))
    lst
    (drop (cdr lst) (- n 1))
  )
)

chunk = #(define-scheme-function
  (lst n)
  (list? integer?)
  (if (null? lst)
    '()
    (cons (take lst n) (chunk (drop lst n) n))
  )
)

scaleMusicDuration = #(define-music-function
  (den num mus)
  (integer? integer? ly:music?)
)

makeTuplets = #(define-music-function
  (den num mus)
  (integer? integer? ly:music?)
  (let ((elements (ly:music-property mus 'elements)))
    (make-sequential-music
      (map
        (lambda (grp)
          #{
            \tuplet #(cons den num) { #(make-sequential-music grp) }
          #}
        )
        (chunk elements den)
      )
    )
  )
)
