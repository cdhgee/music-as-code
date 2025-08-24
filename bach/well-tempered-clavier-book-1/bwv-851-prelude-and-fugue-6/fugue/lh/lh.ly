\include "lh-upper.ly"
\include "lh-lower.ly"
\include "lh-middle.ly"

leftHand = \relative c {

  \global
  \clef bass

  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
    \new Voice \leftHandMiddle
  >>
}
