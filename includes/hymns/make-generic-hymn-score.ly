\include "../music-functions/add-with-block.ly"

makeGenericHymnScore = #(define-scheme-function
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
    )
    #{
      \score {
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
  )
)

% stub to allow transition
% #(define makeHymnScore makeSATBHymnScore)
