makeHymnHeader = #(define-scheme-function
  (metadata)
  (cheap-list?)
  (let* (
      (title (assoc-get 'title metadata empty-markup))
      (subtitle (assoc-get 'subtitle metadata empty-markup))
      (subsubtitle (assoc-get 'subsubtitle metadata empty-markup))
      (composer (assoc-get 'composer metadata empty-markup))
      (dates (assoc-get 'dates metadata empty-markup))
      (tune (assoc-get 'tune metadata empty-markup))
      (meter (assoc-get 'meter metadata empty-markup))
      (tune-and-meter (if
        (and (string? tune) (string? meter))
        (string-append tune "    " meter)
        tune
      ))
    )
    (makeCommonHeader metadata #{
      \markup {
        \fill-line \smallCaps \smaller \smaller {
          #tune-and-meter
          #composer
        }
      }
    #})
  )
)
