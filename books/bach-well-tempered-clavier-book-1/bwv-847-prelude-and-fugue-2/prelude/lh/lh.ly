\include "lh-upper.ly"
\include "lh-lower.ly"

leftHand = \relative c {

  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}
