\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\addScore \makeHymnScore #(list
  (cons 'title "The Church’s One Foundation")
  (cons 'composer "Samuel Sebastian Wesley")
  (cons 'dates "1810-1876")
  (cons 'tune "Aurelia")
  (cons 'meter "76 76 76 76")
  (cons 'upper (list
    (cons "Breaks" breaks)
    (cons "Soprano" sopranoMusic)
    (cons "Alto" altoMusic)
  ))
  (cons 'lower (list
    (cons "Breaks" breaks)
    (cons "Tenor" tenorMusic)
    (cons "Bass" bassMusic)
  ))
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords verseFiveWords))
  (cons 'words-voice "Soprano")
  (cons 'breaks breaks)
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
