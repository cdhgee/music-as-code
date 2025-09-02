\include "global.ly"
\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\makeSATBHymnScore #(list
  (cons 'title "Love Divine, All Loves Excelling")
  (cons 'composer "John Stainer")
  (cons 'dates "1840-1901")
  (cons 'tune "Love Divine")
  (cons 'meter "87 87")
  (cons 'upper (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Soprano" sopranoMusic)
    (makeVoice "Alto" altoMusic)
  ))
  (cons 'lower (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Tenor" tenorMusic)
    (makeVoice "Bass" bassMusic)
  ))
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords verseFiveWords verseSixWords))
  (cons 'words-voice "Soprano")
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
