hideNote = #(define-music-function
  (note)
  (ly:music?)
  #{
    \once \omit Flag \once \omit Stem #note
  #}
)

move-note = #(define-music-function
  (amt)
  (number?)
  #{
    \once \override NoteColumn.force-hshift = #amt
  #}
)

noMove = \move-note #0
tinyMove = \move-note #1.0
tinyMoveBack = \move-note #-1.0
smallMove = \move-note #1.5
smallMoveBack = \move-note #-1.5
mediumMove = \move-note #1.8
largeMove = \move-note #2.0
