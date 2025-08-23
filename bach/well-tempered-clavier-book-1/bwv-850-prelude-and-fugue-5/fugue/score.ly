\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\addScore \makePianoScore
  #(list
    (cons 'title "Fugue No. 5 in D Major")
    (cons 'opus "BWV 850")
    (cons 'upper rightHand)
    (cons 'lower leftHand)
    (cons 'dynamics dynamics)
    (cons 'dynamics-above dynamicsAbove)
    (cons 'dynamics-lower dynamicsAbove)
    (cons 'tempi tempi)
    (cons 'systems 10)
  )
