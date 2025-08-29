\include "rh/rh.ly"
\include "lh/lh.ly"
\include "breaks.ly"
\include "words.ly"

\addScore \makeHymnScore #(list
  (cons 'title "Dear Lord and Father of Mankind")
  (cons 'composer "Charles Hubert Hastings Parry")
  (cons 'dates "1848-1918")
  (cons 'tune "Repton")
  (cons 'meter "86 86 66")
  (cons 'upper (list
    (cons "Breaks" breaks)
    (cons "Unison" rightHandVoiceOne)
    (cons "RH2" rightHandVoiceTwo)
  ))
  (cons 'lower (list
    ;(cons "Breaks" breaks)
    (cons "LH1" leftHandVoiceOne)
    (cons "LH2" leftHandVoiceTwo)
    (cons "LH3" leftHandVoiceThree)
  ))
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords))
  (cons 'words-voice "Unison")
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
