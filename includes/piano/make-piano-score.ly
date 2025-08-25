makePianoScore = #(define-scheme-function
  (opts)
  (cheap-list?)
  (let* (
      ;; Optional arguments with defaults
      (title (assoc-get 'title opts #f))
      (opus (assoc-get 'opus opts #f))
      (upper (assoc-get 'upper opts #{ #}))
      (lower (assoc-get 'lower opts #{ #}))
      (dynamics (assoc-get 'dynamics opts #{ #}))
      (dynamics-above (assoc-get 'dynamics-above opts #{ #}))
      (dynamics-below (assoc-get 'dynamics-below opts #{ #}))
      (tempi (assoc-get 'tempi opts #{ #}))
      (pages (assoc-get 'pages opts #f))
      (systems (assoc-get 'systems opts 0))

    )
    #{
      \score {
        \header {
          title = #(assoc-get 'title opts)
          opus = #(assoc-get 'opus opts)
          breakbefore = #bookMode
        }
        \keepWithTag layout
        \new PianoStaff \with {
          \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 10) (padding . 1))
          \override Fingering.avoid-slur = #'inside
          \override TupletBracket.tuplet-slur = ##t
          \override DynamicTextSpanner.staff-padding = #4

          connectArpeggios = ##t
        }
        <<
          \accidentalStyle piano-cautionary
          \new Dynamics = "tempi" { #tempi }
          \new Dynamics = "dynamics-above" \with {
            \override VerticalAxisGroup.staff-affinity = #DOWN
          }{
            #dynamics-above
          }
          \new Staff = "upper" \with {
            \override Fingering.direction = #UP
          } {
            \tocItem #(string-append title ", " opus)
            #upper
          }
          \new Dynamics = "dynamics-middle" \with {
            \override VerticalAxisGroup.staff-affinity = #CENTER
            \override DynamicTextSpanner.style = #'none
            \override DynamicLineSpanner.staff-padding = #3

          } { #dynamics }
          \new Staff = "lower" \with {
            \override Fingering.direction = #DOWN
          } { #lower }
          \new Dynamics = "dynamics-below" \with {
            \override VerticalAxisGroup.staff-affinity = #UP
          }{
            #dynamics-below
          }
        >>
        \layout {
          system-count = #systems
        }
      }
    #}
  )
)


% addPianoScore = #(define-void-function
%   (title opus upper lower dynamics tempi systems)
%   (string? string? ly:music? ly:music? ly:music? ly:music? number?)
%   \addScore \makePianoScore title opus upper lower dynamics tempi systems
% )
