% Default to 4/4
#(define timeBase 4)
#(define timeCount 4)

changeTime = #(define-music-function
  (ts-list)
  (cheap-list?)
  (let* (
      (numerator (car ts-list))
      (denominator (cdr ts-list))
    )
    (define timeBase denominator)
    (define timeCount numerator)
    (make-music
      'TimeSignatureMusic
      'beat-structure
      '()
      'numerator
      numerator
      'denominator
      denominator
    )
  )

)
