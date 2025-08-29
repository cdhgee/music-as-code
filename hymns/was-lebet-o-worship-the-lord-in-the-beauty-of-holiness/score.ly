\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\addScore \makeHymnScore #(list
  (cons 'title "O Worship the Lord in the Beauty of Holiness")
  (cons 'composer "Rheinhardt MS")
  (cons 'dates "1754")
  (cons 'tune "Was Lebet")
  (cons 'meter "13 10 13 10")
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
  (cons 'partial-bars #t)
  (cons 'systems 4)
)
