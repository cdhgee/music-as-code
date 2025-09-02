hymnScoreContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Score
      \remove "Bar_number_engraver"
      caesuraType = #'((bar-line . "||"))
    }
  #}
)

hymnStaffContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Staff
      \consists Merge_rests_engraver
      \remove Time_signature_engraver
      \override BreathingSign.Y-offset = #3
    }
  #}
)

hymnChoirStaffContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \ChoirStaff
      \override SystemStartBracket.collapse-height = #0
    }
  #}
)


hymnLyricsContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Lyrics
      \override StanzaNumber.font-series = #'medium
      \override StanzaNumber.font-size = #-1
      \override StanzaNumber.extra-offset = #'(-1 . 0)
      \override LyricText.self-alignment-X = #LEFT
    }
  #}
)
