makeOrganHeader = #(define-scheme-function
  (metadata)
  (cheap-list?)
  (let* (
      (title (assoc-get 'title metadata empty-markup))
      (subtitle (assoc-get 'subtitle metadata empty-markup))
      (subsubtitle (assoc-get 'subsubtitle metadata empty-markup))
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
