\header {
  title = #f
  subtitle = #f
  subsubtitle = #f
  opus = #f
  composer = #f
  tagline = #f
}

makeCommonHeader = #(define-scheme-function
  (metadata additional-header)
  (cheap-list? markup?)
  (let* (
      (title (assoc-get 'title metadata empty-markup))
      (subtitle (assoc-get 'subtitle metadata empty-markup))
      (subsubtitle (assoc-get 'subsubtitle metadata empty-markup))
      (composer (assoc-get 'composer metadata empty-markup))
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
          #additional-header
          \vspace #1
        }
      }
    #}
  )
)
