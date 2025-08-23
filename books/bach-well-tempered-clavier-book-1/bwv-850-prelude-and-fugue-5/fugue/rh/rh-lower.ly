rightHandLower = \relative c' {

  \oneVoice

  \barNumberCheck 1
  s1 |
  r4 a32( b32 cs32 d32 cs32 b32 cs32 a32 fs'8.) fs16 e8. d16 |
  cs4 fs8. fs16 b,8. \tuplet 3/2 { b32( cs32 d32 } e16 d16 e16 cs16 |
  a4) \voiceTwo d4 ~ d4 cs4 |
  d4 cs4 \staffDown \once \showStaffSwitch \voiceOne b2 |
  a4 \staffUp \voiceTwo fs'32( g32 a32 b32 a32 g32 a32 fs32 b4-1) e,32-4( fs32 g32 a32 g32 fs32 g32 e32 |
  \tinyMoveBack a4-1) s4 fs8. g16 e4 |
  d4 d4 \staffDown \once \showStaffSwitch \voiceOne cs2 |

  \barNumberCheck 9
  b4 \staffUp \voiceTwo r4 b'8. gs16 gs8. e16 |
  e4 r4 a8. fs16 fs8. d16 |
  d4 r4 r2 |
  r4 d32( e32-1 fs32-2 g32-3 fs32-2 e32-1 fs32-2 d32-1 b'8.-3) b16 a8. g16 |
  fs8. a16 d4 ~ d4 c4 ~ |
  c4 b4 a2 |
  g4 g4 fs2 ~ |
  fs4 e8. fs,16-1 g8.-1 a16-2 b8.-1 a16-2 |

  \barNumberCheck 17
  g4-1 r4 \voiceOne \override Fingering.direction = #DOWN e'8.-5 cs16-3 cs8.-5 a16-3 |
  \revert Fingering.direction \voiceTwo a4 r4 \voiceOne \override Fingering.direction = #DOWN d8.-5 b16-4 b8.-5 g16-3 |
  \revert Fingering.direction \voiceTwo g4 r4 s2 |
  s4 r4 g'2 |
  fs4 r4 b8.-1 g16-2 g8.-2 e16 |
  e4 fs8. fs16 fs8. g16 e4 |
  fs4 r4 e4 r4 |
  d4 s4 s2 |

  \barNumberCheck 25
  r8. <e a>16 <fs a>8. <g c>16 <a d>8. <a, d>16 <b d>8. <c fs>16 |
  <d g>8. <d g>16 <e g>8. <fs a>16 s2 |
  s1 |
  \fine

}
