\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"


\addScore \makeHymnScore #(list
  (cons 'title "How Shall I Sing that Majesty")
  (cons 'composer "Ken Naylor")
  (cons 'dates "1931-1991")
  (cons 'tune "Coe Fen")
  (cons 'meter "DCM")
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
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords))
  (cons 'words-voice "Soprano")
  (cons 'breaks breaks)
  (cons 'partial-bars #f)
  (cons 'systems 4)
)
