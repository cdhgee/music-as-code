\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\makePianoScore #(list
  (cons 'metadata (list
    (cons 'title "Fugue No. 1 in C Major")
    (cons 'opus "BWV 846")
    (cons 'composer "Johann Sebastian Bach (1685-1750)")
  ))
  (cons 'upper (list
    (makeVoice "RH1" rightHandUpper)
    (makeVoice "RH2" rightHandLower)
  ))
  (cons 'lower (list
    (makeVoice "LH1" leftHandUpper)
    (makeVoice "LH2" leftHandLower)
  ))
  (cons 'tempi tempi)
  (cons 'dynamics dynamics)
  (cons 'systems 10)
)
