\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\addScore \makePianoScore
  #(list
    (cons 'title "Prelude No. 2 in C Minor")
    (cons 'opus "BWV 847")
    (cons 'upper rightHand)
    (cons 'lower leftHand)
    (cons 'dynamics dynamics)
    ; (cons 'dynamics-below dynamicsLower)
    ; (cons 'dynamics-above dynamicsUpper)
    (cons 'tempi tempi)
    (cons 'systems 14)
  )
