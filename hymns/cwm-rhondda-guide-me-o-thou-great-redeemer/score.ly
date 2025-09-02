\include "global.ly"
\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\makeSATBHymnScore #(list
  (cons 'title "Guide Me O Thou Great Redeemer")
  (cons 'composer "John Hughes")
  (cons 'dates "1873-1932")
  (cons 'tune "Cwm Rhondda")
  (cons 'meter "87 87 47")
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
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords))
  (cons 'words-voice "Soprano")
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
