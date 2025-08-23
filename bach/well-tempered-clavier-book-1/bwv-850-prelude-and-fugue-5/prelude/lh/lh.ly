\include "lh-upper.ly"
\include "lh-middle.ly"
\include "lh-lower.ly"

leftHand = \relative c {

  \global
  \clef bass
  <<

    \new Voice \leftHandUpper
    \new Voice \leftHandMiddle
    \new Voice \leftHandLower

  >>

}
