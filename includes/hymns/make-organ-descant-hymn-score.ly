\include "../music-functions/add-with-block.ly"

makeOrganDescantHymnScore = #(define-scheme-function
  (opts)
  (cheap-list?)
  (let* (
      (descant-music (assoc-get 'descant opts '()))
      (upper-music (assoc-get 'upper opts '()))
      (lower-music (assoc-get 'lower opts '()))
      (words (assoc-get 'words opts '()))
      (words-voice (assoc-get 'words-voice opts ""))
    )
    (makeGenericHymnScore (append
      opts
      (list (cons 'staff-groups (list
        (list
          (cons 'type 'ChoirStaff)
          (cons 'staves (append
            (list (list (cons 'name "descant") (cons 'clef "treble") (cons 'voices descant-music)))
            (map (lambda (w) (list (cons 'type 'Lyrics) (cons 'voice words-voice) (cons 'lyrics w))) words)
          ))
        )
        (list
          (cons 'type 'PianoStaff)
          (cons 'staves (append
            (list (list (cons 'name "upper") (cons 'clef "treble") (cons 'voices (addWithBlock upper-music #{ \with { \remove Breathing_sign_engraver } #}))))
            (list (list (cons 'name "lower") (cons 'clef "bass") (cons 'voices (addWithBlock lower-music #{ \with { \remove Breathing_sign_engraver } #}))))
          ))
        )
      )))
    ))
  )
)

% stub to allow transition
#(define makeHymnScore makeSATBHymnScore)
