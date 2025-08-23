\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\addScore \makePianoScore
  #(list
    (cons 'title "Prelude No. 7 in E flat Major")
    (cons 'opus "BWV 852")
    (cons 'upper rightHand)
    (cons 'lower leftHand)
    (cons 'dynamics dynamicsMiddle)
    ; (cons 'dynamics-below dynamicsLower)
    ; (cons 'dynamics-above dynamicsUpper)
    (cons 'tempi tempi)
    (cons 'systems 24)
  )
