\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\addScore \makeHymnScore #(list
  (cons 'title "Guide Me O Thou Great Redeemer")
  (cons 'composer "John Huges")
  (cons 'dates "1873-1932")
  (cons 'tune "Cwm Rhondda")
  (cons 'meter "87 87 47")
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
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords))
  (cons 'words-voice "Soprano")
  (cons 'breaks breaks)
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
