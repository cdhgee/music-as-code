makeOrganManualsScore = #(define-scheme-function
  (opts)
  (cheap-list?)
  (let* (
      (upper-music (assoc-get 'upper opts '()))
      (lower-music (assoc-get 'lower opts '()))
      (tempi (assoc-get 'tempi opts #{#}))
    )
    (makeGenericOrganScore (append
      opts
      (list (cons 'staff-groups (list (list
        (cons 'type 'PianoStaff)
        (cons 'staves (append
          (list (list (cons 'type 'Dynamics) (cons 'dynamics tempi)))
          (list (list (cons 'name "upper") (cons 'clef "treble") (cons 'voices upper-music)))
          (list (list (cons 'name "lower") (cons 'clef "bass") (cons 'voices lower-music)))
        ))
      ))))
    ))
  )
)
