\include "rh-voice1.ly"
\include "rh-voice2.ly"
\include "rh-voice3.ly"
\include "rh-voice4.ly"

rightHand = #(list
  (makeVoice "RH1" rightHandVoiceOne)
  (makeVoice "RH2" rightHandVoiceTwo)
  (makeVoice "RH3" rightHandVoiceThree)
  (makeVoice "RH4" rightHandVoiceFour)
)
