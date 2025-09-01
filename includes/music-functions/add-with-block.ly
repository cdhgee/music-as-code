addWithBlock = #(define-scheme-function
  (voices-or-staves overwrite with-block)
  (cheap-list? (boolean? #f) ly:context-mod?)
  (map
    (lambda (voice-or-staff)
      (let (
          (existing (assoc 'with voice-or-staff))
        )
        (if existing
          (if overwrite
            (map (lambda (pair)
                (if (eq? (car pair) 'with)
                  (cons 'with with-block)
                  pair
                )
              )
              voice-or-staff
            )
            voice-or-staff
          )
          (append
            voice-or-staff
            (list (cons 'with with-block))
          )
        )
      )
    )
    voices-or-staves
  )
)
