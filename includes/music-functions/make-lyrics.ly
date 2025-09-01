makeLyrics = #(define-music-function
  (lyrics-list)
  (cheap-list?)
  (make-music
    'SimultaneousMusic
    'elements
    (map
      (lambda (lyrics)
        (let (
            (voice-name (assoc-get 'voice lyrics))
            (words (assoc-get 'lyrics lyrics))
          )
          #{ \new Lyrics \lyricsto #voice-name { #words } #}
        )
      )
      lyrics-list
    )
  )
)
