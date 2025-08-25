"d" = #(define-scheme-function (m) (markup?) (make-dynamic-script (markup #:larger (#:normal-text m))))
di = #(define-scheme-function (m) (markup?) (d (markup #:italic m)))
diw = #(define-scheme-function (m) (markup?) (d (markup #:whiteout #:pad-markup 0.75 (#:italic m))))
% diw = \pad-markup #3

md = \tweak self-alignment-X ##f \tweak parent-alignment-X ##f \d\etc
mdi = \tweak self-alignment-X ##f \tweak parent-alignment-X ##f \di\etc
mdiw = \tweak self-alignment-X ##f \tweak parent-alignment-X ##f \diw\etc

makeSpanner = #(define-music-function
  (m)
  (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #m
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #}
)

\markup titleSize = \markup \huge \larger \larger \bold \etc
