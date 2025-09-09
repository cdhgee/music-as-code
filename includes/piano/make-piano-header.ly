makePianoHeader = #(define-scheme-function
  (metadata)
  (cheap-list?)
  (let* (
      (composer (assoc-get 'composer metadata empty-markup))
      (opus (assoc-get 'opus metadata empty-markup))
    )
    (display opus)
    (makeCommonHeader metadata #{
      \markup \column {
        \fill-line \smallCaps \smaller \smaller {
          \null
          #composer
        }
        \fill-line \smallCaps \smaller \smaller {
          \null
          #opus
        }
      }
    #})
  )
)
