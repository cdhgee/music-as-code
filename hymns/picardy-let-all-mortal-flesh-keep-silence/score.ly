\include "rh/rh.ly"
\include "lh/lh.ly"
\include "breaks.ly"
\include "words.ly"

\addScore \makeSATBHymnScore #(list
  (cons 'title "Let All Mortal Flesh Keep Silence")
  (cons 'composer "French carol melody, harm. Ralph Vaughan Williams")
  (cons 'dates "1872-1958")
  (cons 'tune "Picardy")
  (cons 'meter "87 87 87")
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
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
