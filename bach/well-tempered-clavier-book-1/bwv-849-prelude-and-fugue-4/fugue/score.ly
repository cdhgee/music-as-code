\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\addScore \makePianoScore
  #(list
    (cons 'title "Fugue No. 4 in C# Minor")
    (cons 'opus "BWV 849")
    (cons 'upper rightHand)
    (cons 'lower leftHand)
    (cons 'dynamics dynamics)
    (cons 'tempi tempi)
    (cons 'systems 24)
  )
