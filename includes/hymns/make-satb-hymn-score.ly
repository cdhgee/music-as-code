\include "../music-functions/add-with-block.ly"

makeSATBHymnScore = #(define-scheme-function
  (opts)
  (cheap-list?)
  (let* (
      (upper-music (assoc-get 'upper opts '()))
      (lower-music (assoc-get 'lower opts '()))
      (words (assoc-get 'words opts '()))
      (words-voice (assoc-get 'words-voice opts ""))
    )
    (makeGenericHymnScore (append
      opts
      (list (cons 'staff-groups (list (list
        (cons 'type 'ChoirStaff)
        (cons 'staves (append
          (list (list (cons 'name "upper") (cons 'clef "treble") (cons 'voices upper-music)))
          (map (lambda (w) (list (cons 'type 'Lyrics) (cons 'voice words-voice) (cons 'lyrics w))) words)
          (list (list (cons 'name "lower") (cons 'clef "bass") (cons 'voices (addWithBlock lower-music #{ \with { \remove Breathing_sign_engraver } #}))))
        ))
      ))))
    ))
  )
)

% stub to allow transition
#(define makeHymnScore makeSATBHymnScore)
