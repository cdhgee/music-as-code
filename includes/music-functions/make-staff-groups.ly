\include "make-staves.ly"

makeStaffGroups = #(define-music-function
  (staff-groups)
  (cheap-list?)
  (make-music
    'SimultaneousMusic
    'elements
    (map
      (lambda (staff-group)
        (let (
            (staffgroup-type (assoc-get 'type staff-group))
            (staves (assoc-get 'staves staff-group '()))
          )
          #{ \new #staffgroup-type \makeStaves #staves #}
        )
      )
      staff-groups
    )
  )
)

makeStaffGroup = #(define-music-function
  (staff-group)
  (cheap-list?)
  (let (
      (staffgroup-type (assoc-get 'type staff-group))
      (staves (assoc-get 'staves staff-group '()))
      (with-block (assoc-get 'with staff-group #{ \with {} #}))

    )
    #{ \new #staffgroup-type \with #with-block \makeStaves #staves #}
  )
)
