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
  (cons 'upper rightHand)
  (cons 'lower leftHand)
  (cons 'tempi tempi)
  (cons 'dynamics dynamics)
  (cons 'systems 11)
)
