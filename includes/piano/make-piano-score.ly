makePianoScore = #(define-scheme-function
  (opts)
  (cheap-list?)
  (let* (
      (upper-music (assoc-get 'upper opts '()))
      (lower-music (assoc-get 'lower opts '()))
      (pedal-music (assoc-get 'pedal opts '()))
      (tempi (assoc-get 'tempi opts #{ #}))
      (dynamics-above (assoc-get 'dynamics-above opts #{ #}))
      (dynamics (assoc-get 'dynamics opts #{ #}))
      (dynamics-below (assoc-get 'dynamics-below opts #{ #}))
    )
    (makeGenericPianoScore (append
      opts
      (list (cons 'staves (list
        (list
          (cons 'type 'PianoStaff)
          (cons 'staves (append
            (list (makeDynamics tempi))
            (list (makeDynamics dynamics-above))
            (list (list (cons 'name "upper") (cons 'clef "treble") (cons 'with #{ \with { \override Fingering.direction = #UP } #}) (cons 'voices upper-music)))
            (list (makeDynamics dynamics))
            (list (list (cons 'name "lower") (cons 'clef "bass") (cons 'with #{ \with { \override Fingering.direction = #DOWN } #}) (cons 'voices lower-music)))
            (list (makeDynamics dynamics-below))
          ))
        )
      )))
    ))
  )
)
