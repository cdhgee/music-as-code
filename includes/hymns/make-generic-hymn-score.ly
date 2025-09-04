\include "../music-functions/add-with-block.ly"

makeGenericHymnScore = #(define-void-function
  (opts)
  (cheap-list?)
  (let* (
      (metadata (assoc-get 'metadata opts '()))
      (partial-bars (not (assoc-get 'partial-bars opts #f)))
      (systems (assoc-get 'systems opts 0))
      (staff-groups (assoc-get 'staff-groups opts '()))
      (trailer (assoc-get 'trailer opts #f))
    )

    #{
      \addScore \score  {
        \header {
          title = \hymnHeader #metadata
        %   composer = #composer-and-dates
        %   tune = #tune
        %   meter = #meter
          breakbefore = ##t
        }
        % \markup "testing"
        % \hymnHeader #metadata
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
