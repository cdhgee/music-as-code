\include "rh-upper.ly"
\include "rh-lower.ly"
\include "rh-middle.ly"

rightHand = #(list
  (makeVoice "RH1" rightHandUpper)
  (makeVoice "RH2" rightHandMiddle)
  (makeVoice "RH3" rightHandLower)
)
