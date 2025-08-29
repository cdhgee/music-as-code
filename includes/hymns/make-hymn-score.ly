makeHymnScore = #(define-scheme-function
  (opts)
  (cheap-list?)
  (let* (
      ;; Optional arguments with defaults
      (title (assoc-get 'title opts #f))
      (composer (assoc-get 'composer opts #f))
      (dates (assoc-get 'dates opts #f))
      (tune (assoc-get 'tune opts #f))
      (meter (assoc-get 'meter opts #f))
      (upper-music (assoc-get 'upper opts '()))
      (lower-music (assoc-get 'lower opts '()))
      (verses (assoc-get 'words opts '()))

      (upper-music-block
        (make-music
          'SimultaneousMusic
          'elements
          (map
            (lambda (music)
              #{ \new Voice = #(car music) { #(cdr music) } #})
            upper-music
          )
        )
      )
      (lower-music-block
        (make-music
          'SimultaneousMusic
          'elements
          (map
            (lambda (music)
              #{ \new Voice = #(car music) { #(cdr music) } #})
            lower-music
          )
        )
      )
      (partial-bars (not (assoc-get 'partial-bars opts #f)))
      (words-voice (assoc-get 'words-voice opts ""))
      (lyrics-blocks
        (map
          (lambda (verse)
            #{ \new Lyrics \lyricsto #words-voice { #verse } #})
          verses
        )
      )
      (systems (assoc-get 'systems opts 0))
    )
    #{
      \score {
      \header {
        title = #title
        composer = #composer
        dates = #dates
        tune = #tune
        meter = #meter
      }
      \new ChoirStaff <<
          \new Staff = "upper" {

            \global
            \clef "treble"
            #upper-music-block
          }
          #@lyrics-blocks
          \new Staff = "lower" {
            \clef "bass"
            \global
            #lower-music-block
          }
        >>
        \layout {
          system-count = #systems
          \hymnStaffContext
          \hymnScoreContext
          \hymnLyricsContext
          \context {
            \Score
            forbidBreakBetweenBarLines = #partial-bars
          }
        }

      }

    #}
  )
)
