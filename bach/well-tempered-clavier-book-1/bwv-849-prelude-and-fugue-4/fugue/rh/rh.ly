\include "rh-upper.ly"
\include "rh-middle.ly"
\include "rh-lower.ly"

rightHand = #(list
  (makeVoice "RH1" rightHandUpper)
  (makeVoice "RH2" rightHandMiddle)
  (makeVoice "RH3" rightHandLower)
)
