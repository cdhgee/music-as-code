\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"

\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "Glorious Things of Thee Are Spoken")
    (cons 'composer "Cyril Taylor (1907-1991)")
    (cons 'tune "Abbot’s Leigh")
    (cons 'meter "87 87 87 87")
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
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords))
  (cons 'words-voice "Soprano")
  (cons 'breaks breaks)
  (cons 'trailer "Words and music for verse 4 on next page")
  (cons 'systems 4)
)

