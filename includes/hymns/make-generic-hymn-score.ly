\include "../music-functions/add-with-block.ly"

makeGenericHymnScore = #(define-void-function
  (opts)
  (cheap-list?)
  (let* (
      (metadata (assoc-get 'metadata opts '()))
      (systems (assoc-get 'systems opts 0))
      (staff-groups (assoc-get 'staff-groups opts '()))
      (trailer (assoc-get 'trailer opts #f))
    )
    (makeGenericScore (append
      opts
      (list
        (cons 'header-function makeHymnHeader)
        (cons 'contexts (list
          ; alternative: pass in a lambda with no args
          hymnScoreContext
          hymnChoirStaffContext
          hymnStaffContext
          hymnLyricsContext
        ))
      )
    ))
  )
)
