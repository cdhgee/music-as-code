makeGenericOrganScore = #(define-void-function
  (opts)
  (cheap-list?)
  (makeGenericScore (append
    opts
    (list
      (cons 'header-function makeOrganHeader)
      (cons 'contexts (list organStaffContext))
    )
  ))
)
