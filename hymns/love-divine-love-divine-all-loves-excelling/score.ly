\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\addScore \makeHymnScore #(list
  (cons 'title "Love Divine, All Loves Excelling")
  (cons 'composer "John Stainer")
  (cons 'dates "1840-1901")
  (cons 'tune "Love Divine")
  (cons 'meter "87 87")
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
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords verseFiveWords verseSixWords))
  (cons 'words-voice "Soprano")
  (cons 'breaks breaks)
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
