makeOrganHeader = #(define-scheme-function
  (metadata)
  (cheap-list?)
  (let* (
      (composer (assoc-get 'composer metadata empty-markup))
    )
    (makeCommonHeader metadata #{
      \markup {
        \fill-line \smallCaps \smaller \smaller {
          \null
          #composer
        }
      }
    #})
  )
)
