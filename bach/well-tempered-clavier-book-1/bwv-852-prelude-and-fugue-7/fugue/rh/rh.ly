\include "rh-upper.ly"
\include "rh-lower.ly"
\include "rh-middle.ly"
% \include "rh-voice-three.ly"



rightHand = #(list
  (makeVoice "RH1" rightHandUpper)
  (makeVoice "RH2" rightHandLower)
)
