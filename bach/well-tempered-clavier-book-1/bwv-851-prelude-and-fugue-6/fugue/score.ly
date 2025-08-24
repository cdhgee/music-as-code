\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\addScore \makePianoScore
  #(list
    (cons 'title "Fugue No. 6 in D Minor")
    (cons 'opus "BWV 851")
    (cons 'upper rightHand)
    (cons 'lower leftHand)
    (cons 'dynamics dynamics)
    (cons 'tempi tempi)
    (cons 'systems 12)
  )
