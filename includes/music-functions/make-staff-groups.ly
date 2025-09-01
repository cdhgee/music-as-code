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
