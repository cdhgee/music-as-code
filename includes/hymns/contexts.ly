choralScoreContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  #}
)

choralStaffContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Staff
      \consists Merge_rests_engraver
      \override BreathingSign.Y-offset = #3
    }
  #}
)

choralLyricsContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Lyrics
      \override StanzaNumber.font-series = #'medium
      \override StanzaNumber.font-size = #-1
      \override StanzaNumber.extra-offset = #'(-1 . 0)
    }
  #}
)
