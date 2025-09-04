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
