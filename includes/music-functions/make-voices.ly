maybeCons = #(define-scheme-function
  (key val)
  (scheme? scheme?)
  (if val
    (list (cons key val))
    (list)
  )
)


makeVoice = #(define-scheme-function
  (name music with)
  (string? ly:music? (ly:music? #f))
  (append
    (list (cons 'name name) (cons 'music music))
    (maybeCons 'with with)
  )
)

makeVoices = #(define-music-function
  (voices)
  (cheap-list?)
  (make-music
    'SimultaneousMusic
    'elements
    (map
      (lambda (voice)
        (let (
            (name (assoc-get 'name voice))
            (with-block (assoc-get 'with voice #{ #}))
            (music (assoc-get 'music voice))
          )
          #{ \new Voice = #name \with #with-block { #music } #}
        )
      )
      voices
    )
  )
)
