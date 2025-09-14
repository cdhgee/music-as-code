\include "global.ly"
\include "lh/lh.ly"
\include "rh/rh.ly"
\include "dynamics/dynamics.ly"
\include "tempi.ly"

\makePianoScore #(list
  (cons 'metadata (list
    (cons 'title "Prelude No. 8 in E♭ Minor")
    (cons 'opus "BWV 853")
    (cons 'composer "Johann Sebastian Bach (1685-1750)")
  ))
  (cons 'upper rightHand)
  (cons 'lower leftHand)
  (cons 'tempi tempi)
  (cons 'dynamics dynamicsMiddle)
  (cons 'dynamics-below dynamicsLower)
  (cons 'systems 10)
)
