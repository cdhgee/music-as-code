organStaffContext = #(define-scheme-function
  ()
  ()
  #{
    \context {
      \Staff
      \consists Merge_rests_engraver
    }
  #}
)

organDynamicsContext = #(define-scheme-function
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
