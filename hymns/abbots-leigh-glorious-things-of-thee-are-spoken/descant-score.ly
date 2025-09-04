\include "organ-descant/organ-descant.ly"
\include "breaks.ly"
\include "words.ly"

\makeOrganDescantHymnScore #(list
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
  (cons 'systems 5)
)
