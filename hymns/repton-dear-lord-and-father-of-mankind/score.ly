\include "global.ly"
\include "rh/rh.ly"
\include "lh/lh.ly"
\include "breaks.ly"
\include "words.ly"

\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "Dear Lord and Father of Mankind")
    (cons 'composer "Charles Hubert Hastings Parry (1848-1918)")
    (cons 'tune "Repton")
    (cons 'meter "86 86 66")
  ))
  (cons 'upper (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Unison" rightHandVoiceOne)
    (makeVoice "RH2" rightHandVoiceTwo)
  ))
  (cons 'lower (list
    (makeVoice "Breaks" breaks)
    (makeVoice "LH1" leftHandVoiceOne)
    (makeVoice "LH2" leftHandVoiceTwo)
    (makeVoice "LH3" leftHandVoiceThree)
  ))
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords))
  (cons 'words-voice "Unison")
  (cons 'systems 4)
)
