\include "global.ly"
\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "O Worship the Lord in the Beauty of Holiness")
    (cons 'composer "Rheinhardt MS")
    (cons 'dates "1754")
    (cons 'tune "Was Lebet")
    (cons 'meter "13 10 13 10")
  ))
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
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords verseFiveWords))
  (cons 'words-voice "Soprano")
  (cons 'partial-bars #t)
  (cons 'systems 4)
)
