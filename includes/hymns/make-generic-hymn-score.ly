\include "../music-functions/add-with-block.ly"

makeGenericHymnScore = #(define-void-function
  (opts)
  (cheap-list?)
  (let* (
      ;; Optional arguments with defaults
      (title (assoc-get 'title opts #f))
      (composer (assoc-get 'composer opts #f))
      (dates (assoc-get 'dates opts #f))
      (composer-and-dates (cond
        ((and composer dates) #{ \markup { #composer \smaller \smaller \concat { "(" #dates ")" } } #})
        (composer composer)
        (else #f)
      ))
      (tune (assoc-get 'tune opts #f))
      (meter (assoc-get 'meter opts #f))
      (partial-bars (not (assoc-get 'partial-bars opts #f)))
      (systems (assoc-get 'systems opts 0))
      (staff-groups (assoc-get 'staff-groups opts '()))
      (trailer (assoc-get 'trailer opts #f))
    )
    ; (display trailer)
    ; (setTrailer trailer)
    ; (display (string-append "trailer is '" trailer "'"))
    #{
      \addScore \score  {
        \header {
          title = #title
          composer = #composer-and-dates
          tune = #tune
          meter = #meter
          breakbefore = ##t
        }
        \makeStaffGroups #staff-groups
        \layout {
          system-count = #systems
          \hymnChoirStaffContext
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
    (if trailer #{ \addScore \markup { \vspace #1.5 \fill-line { \smaller \italic #trailer } } #})

  )
)

% stub to allow transition
% #(define makeHymnScore makeSATBHymnScore)
