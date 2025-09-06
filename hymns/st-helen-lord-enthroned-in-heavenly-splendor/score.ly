\include "global.ly"
\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "Lord, Enthroned in Heavenly Splendor")
    (cons 'composer "George Clement Martin (1844-1916)")
    (cons 'tune "St Helen")
    (cons 'meter "87 87 87")
  ))
  (cons 'upper (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Soprano" sopranoMusic)
    (makeVoice "Alto" altoMusic)
    (makeVoice "OrganUpperExtras" organUpperExtras)
  ))
  (cons 'lower (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Tenor" tenorMusic)
    (makeVoice "Bass" bassMusic)
    (makeVoice "OrganLowerExtras" organLowerExtras)
  ))
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords verseFiveWords))
  (cons 'words-voice "Soprano")
  (cons 'systems 3)
)
