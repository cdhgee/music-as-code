organUpperExtras = \relative c' {

  \partial 2 s2 |
  s1 |
  s1 |
  s2 \voiceFour c2 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s4 \smallNotes \override NoteColumn.force-hshift = #-0.4 \annotate "Organ" a'4 af4. \once \override NoteColumn.force-hshift = #-1.1 af8 |
  s2 \voiceThree bf4 d4 |
  f4 ef4 d4 c4 |
  \partial 2 s2 |
  \fine
}
