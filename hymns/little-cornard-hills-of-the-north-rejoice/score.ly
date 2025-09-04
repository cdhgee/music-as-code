\include "global.ly"
\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "Hills of the North, Rejoice")
    (cons 'composer "Martin Shaw")
    (cons 'dates "1875-1958")
    (cons 'tune "Little Cornard")
    (cons 'meter "66 66 88")
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
