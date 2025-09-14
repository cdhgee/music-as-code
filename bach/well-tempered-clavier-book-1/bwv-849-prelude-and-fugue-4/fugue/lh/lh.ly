\include "lh-upper.ly"
\include "lh-middle.ly"
\include "lh-lower.ly"

leftHand = #(list
  (makeVoice "LH1" leftHandUpper)
  (makeVoice "LH2" leftHandMiddle)
  (makeVoice "LH3" leftHandLower)
)
