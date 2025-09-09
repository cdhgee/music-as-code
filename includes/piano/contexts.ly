pianoPianoStaffContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \PianoStaff
      \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 10) (padding . 1))
      \override Fingering.avoid-slur = #'inside
      \override TupletBracket.tuplet-slur = ##t
      \override DynamicTextSpanner.staff-padding = #4
      connectArpeggios = ##t
      \accidentalStyle piano-cautionary
    }
  #}
)

pianoStaffContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Staff
      \consists Merge_rests_engraver
    }
  #}
)

pianoDynamicsContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Dynamics
      \override DynamicTextSpanner.style = #'none
      \override DynamicLineSpanner.staff-padding = #3
    }
  #}
)

pianoContexts = #(list pianoPianoStaffContext pianoStaffContext pianoDynamicsContext)
