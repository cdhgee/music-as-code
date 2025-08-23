\include "rh-upper.ly"
\include "rh-lower.ly"

rightHand = \relative c' {

  \global
  \clef treble
  <<

    \new Voice \rightHandUpper
    \new Voice \rightHandLower

  >>

}
