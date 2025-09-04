\include "global.ly"
\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "The Church’s One Foundation")
    (cons 'composer "Samuel Sebastian Wesley")
    (cons 'dates "1810-1876")
    (cons 'tune "Aurelia")
    (cons 'meter "76 76 76 76")
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
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
