\include "make-voices.ly"

makeStaff = #(define-scheme-function
  (name clef voices with)
  (string? string? cheap-list? ly:context-mod?)
  (list
    (cons 'name name)
    (cons 'clef clef)
    (cons 'with with)
    (cons 'voices voices)
  )
)



makeStaffObject = #(define-music-function
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



makeLyricsObject = #(define-music-function
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

makeDynamics = #(define-scheme-function
  (dynamics with)
  (ly:music? (ly:context-mod? #f))
  (append
    (list (cons 'type 'Dynamics) (cons 'dynamics dynamics))
    (if with (list (cons 'with with)) (list))
  )
)

makeDynamicsObject = #(define-music-function
  (staff)
  (cheap-list?)
  (let (
      (dynamics (assoc-get 'dynamics staff #{ #}))
      (with (assoc-get 'with staff #{ \with {} #}))
    )
    #{
      \new Dynamics \with #with { #dynamics }
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
            ((eq? type 'PianoStaff) (makeStaffGroup staff))
            ((eq? type 'ChoirStaff) (makeStaffGroup staff))
            ((eq? type 'GrandStaff) (makeStaffGroup staff))
            ((eq? type 'Staff) (makeStaffObject staff))
            ((eq? type 'Lyrics) (makeLyricsObject staff))
            ((eq? type 'Dynamics) (makeDynamicsObject staff))
          )
        )
      )
      staves
    )
  )
)
