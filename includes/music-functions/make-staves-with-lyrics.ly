\include "make-staves.ly"
\include "make-lyrics.ly"

makeStavesWithLyrics = #(define-music-function
  (staves lyrics-list)
  (cheap-list? cheap-list?)
  (make-music
    'SimultaneousMusic
    'elements
    (list
      (makeStaves staves)
      (makeLyrics lyrics-list)
    )
  )
)
