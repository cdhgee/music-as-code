\include "make-voices.ly"

makeStaff = #(define-music-function
  (staff)
  (cheap-list?)
  (let (
      (name (assoc-get 'name staff))
      (voices (assoc-get 'voices staff '()))
      (clef (assoc-get 'clef staff "treble"))
      (global (assoc-get 'global staff #{ \global #}))
      (with-block (assoc-get 'with staff #{ \with {} #}))
    )
    #{
      \new Staff = #name \with #with-block {
        \clef #clef
        #global
        \makeVoices #voices
      }
    #}
  )
)

makeLyrics = #(define-music-function
  (staff)
  (cheap-list?)
  (let (
      (voice-name (assoc-get 'voice staff))
      (words (assoc-get 'lyrics staff #{ #}))
    )
    #{
      \new Lyrics \lyricsto #voice-name { #words }
    #}
  )
)

makeDynamics = #(define-music-function
  (staff)
  (cheap-list?)
  (let (
      (dynamics (assoc-get 'dynamics staff #{ #}))
    )
    #{
      \new Dynamics { #dynamics }
    #}
  )
)

makeStaves = #(define-music-function
  (staves)
  (cheap-list?)
  (make-music
    'SimultaneousMusic
    'elements
    (map
      (lambda (staff)
        (let (
            (type (assoc-get 'type staff 'Staff))
          )
          (cond
            ((eq? type 'Staff) (makeStaff staff))
            ((eq? type 'Lyrics) (makeLyrics staff))
            ((eq? type 'Dynamics) (makeDynamics staff))
          )
        )
      )
      staves
    )
  )
)
