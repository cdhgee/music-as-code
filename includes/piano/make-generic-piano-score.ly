makeGenericPianoScore = #(define-void-function
  (opts)
  (cheap-list?)
  (makeGenericScore (append
    opts
    (list
      (cons 'header-function makePianoHeader)
      (cons 'contexts pianoContexts)
    )
  ))
)
