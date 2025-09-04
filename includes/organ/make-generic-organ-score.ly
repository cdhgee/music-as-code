makeGenericOrganScore = #(define-void-function
  (opts)
  (cheap-list?)
  (let* (
      (metadata (assoc-get 'metadata opts '()))
      (systems (assoc-get 'systems opts 0))
      (staff-groups (assoc-get 'staff-groups opts '()))
      (trailer (assoc-get 'trailer opts #f))
    )
    #{
      \addScore \score  {
        \header {
          title = \makeOrganHeader #metadata
        }
        \makeStaffGroups #staff-groups
        \layout {
          system-count = #systems
          \organStaffContext
        }
      }
    #}
    (if trailer #{ \addScore \markup { \vspace #1.5 \fill-line { \smaller \italic #trailer } } #})

  )
)
