makeGenericScore = #(define-void-function
  (opts)
  (cheap-list?)
  (let* (
      (metadata (assoc-get 'metadata opts #f))
      (header-function (assoc-get 'header-function opts #f))
      (systems (assoc-get 'systems opts 0))
      (staff-groups (assoc-get 'staff-groups opts '()))
      (trailer-markup (assoc-get 'trailer opts #f))
      (header-markup (if
        (and metadata header-function)
        (header-function metadata)
        #f
      ))
      (contexts (assoc-get 'contexts opts '()))
    )
    #{
      \addScore \score  {
        \header {
          title = #header-markup
          breakbefore = ##t
        }
        \makeStaffGroups #staff-groups
        \layout {
          system-count = #systems
          #@contexts
        }
      }
    #}
    (if trailer #{ \addScore \markup { \vspace #1.5 \fill-line { \smaller \italic #trailer } } #})

  )
)
