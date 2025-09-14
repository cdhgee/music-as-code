\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\makePianoScore #(list
  (cons 'metadata (list
    (cons 'title "Prelude No. 7 in E♭ Major")
    (cons 'opus "BWV 852")
    (cons 'composer "Johann Sebastian Bach (1685-1750)")
  ))
  (cons 'upper rightHand)
  (cons 'lower leftHand)
  (cons 'tempi tempi)
  (cons 'dynamics dynamicsMiddle)
  (cons 'systems 24)
)
