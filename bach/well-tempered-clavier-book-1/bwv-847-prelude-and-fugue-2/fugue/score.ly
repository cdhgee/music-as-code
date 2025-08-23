\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\addScore \makePianoScore
  #(list
    (cons 'title "Fugue No. 2 in C Minor")
    (cons 'opus "BWV 847")
    (cons 'upper rightHand)
    (cons 'lower leftHand)
    (cons 'dynamics dynamics)
    (cons 'tempi tempi)
    (cons 'systems 12)
  )
