hymnHeader = #(define-scheme-function
  (metadata)
  (cheap-list?)
  (let* (
      (title (assoc-get 'title metadata empty-markup))
      (subtitle (assoc-get 'subtitle metadata empty-markup))
      (subsubtitle (assoc-get 'subsubtitle metadata empty-markup))
      (composer (assoc-get 'composer metadata empty-markup))
      (dates (assoc-get 'dates metadata empty-markup))
      (composer-and-dates (if
        (and (string? composer) (string? dates))
        (string-append composer " (" dates ")")
        composer
      ))
      (tune (assoc-get 'tune metadata empty-markup))
      (meter (assoc-get 'meter metadata empty-markup))
      (tune-and-meter (if
        (and (string? tune) (string? meter))
        (string-append tune "    " meter)
        tune
      ))
    )
    #{
      \markup {
        \override #'(baseline-skip . 3.5)
        \column {
          \fill-line {
            \huge \larger \larger \bold #title
          }
          \fill-line {
            \large \bold #subtitle
          }
          \fill-line {
            \smaller \italic #subsubtitle
          }
          \fill-line \smallCaps \smaller \smaller {
            #tune-and-meter
            #composer-and-dates
          }
          \vspace #1
        }
      }
    #}
  )
)
