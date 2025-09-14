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
            (list (makeDynamics dynamics-above #{ \with { \override VerticalAxisGroup.staff-affinity = #DOWN } #}))
            (list (makeStaff "upper" "treble" upper-music #{ \with { \override Fingering.direction = #UP } #}))
            (list (makeDynamics dynamics))
            (list (makeStaff "lower" "bass" lower-music #{ \with { \override Fingering.direction = #DOWN } #}))
            (list (makeDynamics dynamics-below #{ \with { \override VerticalAxisGroup.staff-affinity = #UP } #}))

          ))
        )
      )))
    ))
  )
)
