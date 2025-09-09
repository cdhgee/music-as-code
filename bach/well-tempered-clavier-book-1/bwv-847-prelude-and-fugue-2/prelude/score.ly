\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\makePianoScore #(list
  (cons 'metadata (list
    (cons 'title "Prelude No. 2 in C Minor")
    (cons 'opus "BWV 847")
    (cons 'composer "Johann Sebastian Bach (1685-1750)")
  ))
  (cons 'upper (list
    (makeVoice "RH1" rightHandUpper)
  ))
  (cons 'lower (list
    (makeVoice "LH1" leftHandUpper)
    (makeVoice "LH2" leftHandLower)
  ))
  (cons 'tempi tempi)
  (cons 'dynamics dynamics)
  (cons 'systems 14)
)
