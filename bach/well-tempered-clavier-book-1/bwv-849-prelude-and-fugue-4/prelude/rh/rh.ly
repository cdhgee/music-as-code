\include "rh-voice1.ly"
\include "rh-voice2.ly"
\include "rh-voice3.ly"
\include "rh-voice4.ly"

rightHand = \relative c' {

  \global
  \clef treble
  <<

    \new Voice \rightHandVoiceOne
    \new Voice \rightHandVoiceTwo
    \new Voice \rightHandVoiceThree
    \new Voice \rightHandVoiceFour

  >>
}
