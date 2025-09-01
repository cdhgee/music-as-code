\include "make-voices.ly"

makeStaves = #(define-music-function
  (staves)
  (cheap-list?)
  (make-music
    'SimultaneousMusic
    'elements
    (map
      (lambda (staff)
        (let (
            (name (assoc-get 'name staff))
            (type (assoc-get 'type staff 'Staff))
            (voices (assoc-get 'voices staff '()))
            (voice-name (assoc-get 'voice staff))
            (words (assoc-get 'lyrics staff #{ #}))
            (clef (assoc-get 'clef staff "treble"))
            (global (assoc-get 'global staff #{ \global #}))
            (with-block (assoc-get 'with staff #{ \with {} #}))
          )
          (cond
            ((eq? type 'Staff) #{
              \new Staff = #name \with #with-block {
                \clef #clef
                #global
                \makeVoices #voices
              }
            #})
            ((eq? type 'Lyrics) #{
              \new Lyrics \lyricsto #voice-name { #words }
            #})
          )

        )
      )
      staves
    )
  )
)
