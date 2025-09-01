#(set-global-staff-size 16)


conditionalPaperBlock = #(define-scheme-function
  ()
  ()
  (if
    (eq? bookMode #t)
    #{
      \paper {
        bookTitleMarkup = \markup {
          \center-column {
            \vspace #14
            \fill-line { \abs-fontsize #28 \fromproperty #'header:title }
            \vspace #4
            \line { \abs-fontsize #20 \fromproperty #'header:opus }
            \vspace #4
            \fill-line { \abs-fontsize #20 \fromproperty #'header:composer }
          }
        }
        scoreTitleMarkup = \markup {
          \override #'(baseline-skip . 3.5)
          \column {
            \fill-line {
              \titleSize \fromproperty #'header:title
            }
          }
        }
        first-page-number = #0
        evenHeaderMarkup = \markup \fill-line {
          \unless \on-page #0 \fromproperty #'page:page-number-string
          \null
        }
        oddHeaderMarkup = \markup \fill-line {
          \null
          \unless \on-page #1 \fromproperty #'page:page-number-string
        }
      }
    #}
    #{
      \paper {
        bookTitleMarkup = ##f
        first-page-number = #1
      }
    #}
  )
)


\paper {
  ragged-right = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  min-systems-per-page = #5

  % system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
  % annotate-spacing = ##t

  % system-system-spacing = #'((basic-distance . 12)
  %                            (minimum-distance . 8)
  %                            (padding . 1)
  %                            (stretchability . 60))
  % system-system-spacing.stretchability = #50
  % system-system-spacing.basic-distance


  % markup-system-spacing = #'(
  %   (basic-distance . 2)
  %   (padding . 1)
  % ) % defaults: 1, 0.5

  % system-system-spacing.basic-distance = #0.1
  % system-system-spacing.padding = #0
  % system-system-spacing.basic-distance = #0
  % system-system-spacing = #'(
  %   (basic-distance . 2)
  %   (minimum-distance . 4)
  %   (padding . 2)
  % )
  % Distance between two systems in the same score
  system-system-spacing = #'(
    (basic-distance . 0.1)
    (padding . 4)
    (stretchability . 60)
    (minimum-distance . 0.1)
  )

  %   last-bottom-spacing = #'(
  %   (basic-distance . 0.1)
  %   (padding . 0.1)
  %   (stretchability . 60)
  %   (minimum-distance . 0.1)
  % )

  score-markup-spacing = #'(
    (basic-distance . 0.6)
    (padding . 0.1)
    (stretchability . 60)
    (minimum-distance . 0.1)
  )


  % score-system-spacing = #'(
  %   (basic-distance . 0.1)
  %   (padding . 0.1)
  %   (stretchability . 60)
  %   (minimum-distance . 0.1)
  % )
  % system-system-spacing = #'((basic-distance . 0.1) (padding . 0))

  % system-system-spacing = #'(
  %   (basic-distance . 8)
  %   (minimum-distance . 4)
  %   (padding . 2)
  %   (stretchability . 60)
  % ) % defaults: 12, 8, 1, 60

  last-bottom-spacing =
    #'(
      (basic-distance . 6)
      (minimum-distance . 4)
      (padding . 3)
      (stretchability . 30)
    ) % defaults 1, 0, 1, 30

  % top-system-spacing.minimum-distance = 10
  page-breaking = #ly:minimal-breaking
  % first-page-number = 2

  #(set-paper-size "letter")

  % These settings are scaled to paper-size
  top-margin = 5\mm % default 5
  bottom-margin = 6\mm % default 6
  left-margin = 10\mm % default 10
  right-margin = 10\mm % default 10

  two-sided = ##t
  inner-margin = 12\mm
  outer-margin = 8\mm

  tocTitleMarkup = \markup \column {
    \fill-line { \titleSize "Table of Contents" }
    \hspace #1
  }
  tocItemMarkup = \tocItemWithDotsMarkup
  auto-first-page-number = ##t
  print-first-page-number = ##f

  print-all-headers = ##t
  page-breaking = #ly:optimal-breaking

}

\conditionalPaperBlock

#(define score-list '())

addScore = #(define-void-function
  (sc)
  (ly:score?)
  (set!
    score-list
    (append score-list (list sc))
  )
)


#(define (includeScores)
  #{ $@score-list #})
