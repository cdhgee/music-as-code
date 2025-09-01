\include "organ-descant/organ-descant.ly"
\include "breaks.ly"
\include "words.ly"

\makeOrganDescantHymnScore #(list
  (cons 'title "Glorious Things of Thee Are Spoken")
  (cons 'composer "Cyril Taylor")
  (cons 'dates "1907-1991")
  (cons 'tune "Abbot’s Leigh")
  (cons 'meter "87 87 87 87")
  (cons 'descant (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Descant" descantMusic)
  ))
  (cons 'upper (list
    (makeVoice "Breaks" breaks)
    (makeVoice "OrganRHVoice1" rightHandVoiceOne)
    (makeVoice "OrganRHVoice2" rightHandVoiceTwo)
  ))
  (cons 'lower (list
    (makeVoice "Breaks" breaks)
    (makeVoice "OrganLHVoice1" leftHandVoiceOne)
    (makeVoice "OrganLHVoice2" leftHandVoiceTwo)
  ))
  (cons 'words (list descantWords))
  (cons 'words-voice "Descant")
  (cons 'partial-bars #f)
  (cons 'systems 6)
)
