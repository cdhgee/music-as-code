\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"

\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "I Vow to Thee, My Country")
    (cons 'composer "melody Gustav Holst (1874-1934)")
    (cons 'tune "Thaxted")
    (cons 'meter "13 13 13 13 13 13")
  ))
  (cons 'upper (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Soprano" sopranoMusic)
    (makeVoice "Alto" altoMusic)
    (makeVoice "SopranoV2" sopranoVerseTwoMusic)
  ))
  (cons 'lower (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Tenor" tenorMusic)
    (makeVoice "Bass" bassMusic)
  ))
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords))
  (cons 'words-voice "Soprano")
  (cons 'systems 5)
)
