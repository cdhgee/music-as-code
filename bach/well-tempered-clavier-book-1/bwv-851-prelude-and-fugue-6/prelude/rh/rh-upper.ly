\version "2.24.4"

% rightHandUpper = \relative c' {
%   \oneVoice
%   \barNumberCheck 1
%   \beamEighthNotes
%   \makeTuplets 3 2 {  r8 r8 a'8 f16 d16 a'16 f16 d16 d'16 bf16 g16 bf16 g16 e16-1 g16-5 e16-3 cs16-2 g'16 e16 cs16 a'16-5 } |
%   \makeTuplets 3 2 { f16-2 d16-1 a'16-4 f16-2 d16-1 a''16-5 f16 d16 f16 d16 a16 d16-4 bf16 g16 d'16 bf16 g16 g'16( e16 c16 e16 c16 g16 c16-4 } |
%   \makeTuplets 3 2 { a16 f16 c'16 a16 f16) f'16 d16-4 bf16-2 d16-4 bf16 g16 g'16 e16-4 c16-2 e16-4 c16 a16 a'16 f16-4 d16-2 f16-4 d16-2 bf16-1 bf'16-5 } |
%   \makeTuplets 3 2 { g16-4 e16 g16 e16 c16 c'16 a16 f16 a16 f16 c16-1 a'16-5 f16-4 d16 f16 d16 a16-1 f'16-5 d16 bf16 d16 bf16 f16-1 d'16-5 } |
%   \makeTuplets 3 2 { bf16-4 g16 bf16 g16 d16 bf'16 g16 c,16 bf'16 g16 e16 bf'16-5 a16-4 f16 a16 f16 c16 f16-4 d16 bf16 f'16-5 c16-2 bf16 e16 } |
%   \makeTuplets 3 2 { c16 a16 f'16 c16 a16 c16-4 \staffDown \voiceOne a16 f16 c'16 a16 f16 c'16-4 a16-2 fs16 c'16-4 a16 fs16 ef'16 a,16 fs16 d'16 a16 fs16 c'16 } |
%   \staffUp \oneVoice \once \showStaffSwitch \makeTuplets 3 2 { bf16 g16 d'16 bf16 g16 d'16 bf16 g16 e'16 bf16 g16 fs'16 bf,16 g16 g'16-5 d16-3 bf16-2 g'16-5 ef16-3 a,16 g'16 d16 a16 fs'16 } |
%   \makeTuplets 3 2 { d16 bf16 g'16 d16 bf16 d16-4 bf16 g16 d'16 bf16 g16 d'16-4 b16-2 gs16-1 d'16-4 b16 gs16 f'16 b,16 gs16 e'16 b16 gs16 d'16 } |

%   \barNumberCheck 9
%   \makeTuplets 3 2 { c16 a16 e'16 c16 a16 e'16 c16 a16 fs'16 c16 a16 gs'16 c,16 a16 a'16 e16 c16 a'16 f16 b,16 a'16 e16 b16 gs'16 } |
%   \makeTuplets 3 2 { e16 c16 a'16 e16 c16 c'16 f,16 d16 bf'16 g16 e16 bf'16-4 a16-3 f16-1 a16-5 c,16-2 a16 a'16 d,16 b16 g'16 e16 cs16-2 g'16-5 } |
%   \makeTuplets 3 2 { f16-3 d16-1 d'16-5 a16-2 f16-1 f'16 bf,16 g16 ef'16 c16 a16 ef'16 d16 bf16 d16 f,16 d16 d'16 g,16 e16 c'16 a16 fs16 c'16 } |
%   \makeTuplets 3 2 { bf16 g16 d'16 bf16 g16 g'16 ef16 g,16 g'16 d16 g,16 g'16 cs,16 a16 g'16-5 e16-3 cs16-2 bf'16-5 e,16 cs16 a'16 e16 cs16 g'16 } |
%   \makeTuplets 3 2 { f16-4 d16-2 a16-1 f16-2 d16 a'16 f16 d16 b'16 f16 d16 cs'16 f,16 d16 d'16 f,16 d16 a'16 f16 d16 bf'16 e,16-2 cs16-1 a'16-5 } |
%   \makeTuplets 3 2 { e16-3 cs16-2 g'16-5 d16-3 a16 f'16 d16 bf16 e16 cs16 a16 e'16 \staffDown \voiceOne d16-4 f,16-1 bf16-3 a16-2 f16 d'16 bf16 e,16 d'16 g,16 f16 cs'16 } |
%   \makeTuplets 3 2 { a16-4( fs16-2 a16-1 c16 a16 c16 \staffUp \oneVoice ef16 c16 ef16 } fs8->) \makeTuplets 3 2 { bf,16( g16 bf16 d16-3 bf16-2 d16-1 g16 d16 g16) } bf8->( |
%   \makeTuplets 3 2 { bf16) g16 e'16 bf16 g16 g'16 bf,16 g16 e'16 bf16 g16 cs16 bf16 g16 e'16 bf16 g16 g'16 bf,16 g16 e'16 bf16 g16 cs16 } |

%   \barNumberCheck 17
%   \makeTuplets 3 2 { a16-2 fs16-1 d'16-4 a16 fs16 ef'16-5 a,16 fs16 d'16 a16 fs16 c'16 a16 fs16 d'16 a16 fs16 ef'16 a,16 fs16 d'16 a16 fs16 c'16 } |
%   \makeTuplets 3 2 { g16 d16 g16 bf16-4 g16-1 bf16-2 d16-4 bf16-2 d16-1 g16 d16 g16 bf16-4 a16 g16 f16-1 e16-4 d16 cs16 a16 cs16 e16 cs16-2 e16-3 } |
%   \makeTuplets 3 2 { g16-5 e16-3 d16-1 cs16-3 b16 a16 g16-2 e16 g16 bf16 g16-1 bf16-2 c16 g16 e'16 c16 bf16 e16 c16 a16 e'16 c16 g16 e'16 } |
%   \makeTuplets 3 2 { c16 a16 d16 bf16 g16 ef'16-5 a,16-2 fs16-1 d'16-5 a16-3 fs16-2 c'16-5 g16 d16 bf'16 g16 f16 bf16 g16 ef16 bf'16 g16 d16 bf'16 } |
%   \makeTuplets 3 2 { g16-3 cs,16-1 bf'16-5 e,16-2 cs16 bf'16 e,16 cs16 a'16 e16 cs16 g'16 d16 b16 f'16 d16 cs16 f16 d16 b16 f'16 d16 a16 f'16 } |
%   \makeTuplets 3 2 { cs16 g16 e'16 cs16 bf16 e16 cs16 a16 e'16 cs16 g16 e'16 b16 gs16 d'16 cs16 gs16 e'16 d16 gs,16 f'16 } g,8\changeFinger "1~2" ~ |
%   \makeTuplets 3 2 { g16( e16 g16 cs16-4 g16-1 cs16-2 e16 cs16 e16 } g8) \makeTuplets 3 2 { f16-4( d16-1 f16-2 a16-4 f16-1 a16-2 d16 a16 d16 } f8) ~ |
%   \makeTuplets 3 2 { f16 b,16( d16 f16 d16-1 f16 gs16 f16 gs16 b16 gs16 f16 bf16 g16 e16 a16-5 fs16-3 ds16-2 gs16-4 f16-2 d16-1 g16-5 e16-3 cs16-2 } |

%   \barNumberCheck 25
%   \makeTuplets 3 2 { fs16-4 ef16 c16-1 f16 d16 b16 e16 cs16 bf16 ef16 c16 a16 } \voiceOne d2-5) ~ |
%   d4( cs4) d2\fermata |
%   \fine
% }

rightHandUpper = \relative c' {

  \oneVoice
  \beamQuavers

  \barNumberCheck 1
  \makeTuplets 3 2 {  r8 r8 a'8 f16 d16 a'16 } \scaleDurations 2/3 { f16 d16 d'16 bf16 g16 bf16 g16 e16-1 g16-5 e16-3 cs16-2 g'16 e16 cs16 a'16-5  |
  f16-2 d16-1 a'16-4 f16-2 d16-1 a''16-5 f16 d16 f16 d16 a16 d16-4 bf16 g16 d'16 bf16 g16 g'16( e16 c16 e16 c16 g16 c16-4  |
  a16 f16 c'16 a16 f16) f'16 d16-4 bf16-2 d16-4 bf16 g16 g'16 e16-4 c16-2 e16-4 c16 a16 a'16 f16-4 d16-2 f16-4 d16-2 bf16-1 bf'16-5 |
  g16-4 e16 g16 e16 c16 c'16 a16 f16 a16 f16 c16-1 a'16-5 f16-4 d16 f16 d16 a16-1 f'16-5 d16 bf16 d16 bf16 f16-1 d'16-5 |
  bf16-4 g16 bf16 g16 d16 bf'16 g16 c,16 bf'16 g16 e16 bf'16-5 a16-4 f16 a16 f16 c16 f16-4 d16 bf16 f'16-5 c16-2 bf16 e16 |
  c16 a16 f'16 c16 a16 c16-4 \staffDown \voiceOne a16 f16 c'16 a16 f16 c'16-4 a16-2 fs16 c'16-4 a16 fs16 ef'16 a,16 fs16 d'16 a16 fs16 c'16 |
  \staffUp \oneVoice \once \showStaffSwitch bf16 g16 d'16 bf16 g16 d'16 bf16 g16 e'16 bf16 g16 fs'16 bf,16 g16 g'16-5 d16-3 bf16-2 g'16-5 ef16-3 a,16 g'16 d16 a16 fs'16 |
  d16 bf16 g'16 d16 bf16 d16-4 bf16 g16 d'16 bf16 g16 d'16-4 b16-2 gs16-1 d'16-4 b16 gs16 f'16 b,16 gs16 e'16 b16 gs16 d'16 |

  \barNumberCheck 9
  c16 a16 e'16 c16 a16 e'16 c16 a16 fs'16 c16 a16 gs'16 c,16 a16 a'16 e16 c16 a'16 f16 b,16 a'16 e16 b16 gs'16 |
  e16 c16 a'16 e16 c16 c'16 f,16 d16 bf'16 g16 e16 bf'16-4 a16-3 f16-1 a16-5 c,16-2 a16 a'16 d,16 b16 g'16 e16 cs16-2 g'16-5 |
  f16-3 d16-1 d'16-5 a16-2 f16-1 f'16 bf,16 g16 ef'16 c16 a16 ef'16 d16 bf16 d16 f,16 d16 d'16 g,16 e16 c'16 a16 fs16 c'16 |
  bf16 g16 d'16 bf16 g16 g'16 ef16 g,16 g'16 d16 g,16 g'16 cs,16 a16 g'16-5 e16-3 cs16-2 bf'16-5 e,16 cs16 a'16 e16 cs16 g'16 |
  f16-4 d16-2 a16-1 f16-2 d16 a'16 f16 d16 b'16 f16 d16 cs'16 f,16 d16 d'16 f,16 d16 a'16 f16 d16 bf'16 e,16-2 cs16-1 a'16-5 |
  e16-3 cs16-2 g'16-5 d16-3 a16 f'16 d16 bf16 e16 cs16 a16 e'16 \staffDown \voiceOne d16-4 f,16-1 bf16-3 a16-2 f16 d'16 bf16 e,16 d'16 g,16 f16 cs'16 |
  a16-4( fs16-2 a16-1 c16 a16 c16 \staffUp \oneVoice ef16 c16 ef16 } fs8->) \scaleDurations 2/3 { bf,16( g16 bf16 d16-3 bf16-2 d16-1 g16 d16 g16) } bf8->( |
  \scaleDurations 2/3 { bf16) g16 e'16 bf16 g16 g'16 bf,16 g16 e'16 bf16 g16 cs16 bf16 g16 e'16 bf16 g16 g'16 bf,16 g16 e'16 bf16 g16 cs16 |

  \barNumberCheck 17
  a16-2 fs16-1 d'16-4 a16 fs16 ef'16-5 a,16 fs16 d'16 a16 fs16 c'16 a16 fs16 d'16 a16 fs16 ef'16 a,16 fs16 d'16 a16 fs16 c'16 |
  g16 d16 g16 bf16-4 g16-1 bf16-2 d16-4 bf16-2 d16-1 g16 d16 g16 bf16-4 a16 g16 f16-1 e16-4 d16 cs16 a16 cs16 e16 cs16-2 e16-3 |
  g16-5 e16-3 d16-1 cs16-3 b16 a16 g16-2 e16 g16 bf16 g16-1 bf16-2 c16 g16 e'16 c16 bf16 e16 c16 a16 e'16 c16 g16 e'16 |
  c16 a16 d16 bf16 g16 ef'16-5 a,16-2 fs16-1 d'16-5 a16-3 fs16-2 c'16-5 g16 d16 bf'16 g16 f16 bf16 g16 ef16 bf'16 g16 d16 bf'16 |
  g16-3 cs,16-1 bf'16-5 e,16-2 cs16 bf'16 e,16 cs16 a'16 e16 cs16 g'16 d16 b16 f'16 d16 cs16 f16 d16 b16 f'16 d16 a16 f'16 |
  cs16 g16 e'16 cs16 bf16 e16 cs16 a16 e'16 cs16 g16 e'16 b16 gs16 d'16 cs16 gs16 e'16 d16 gs,16 f'16 } g,8\changeFinger "1~2" ~ |
  \scaleDurations 2/3 { g16( e16 g16 cs16-4 g16-1 cs16-2 e16 cs16 e16 } g8) \scaleDurations 2/3 { f16-4( d16-1 f16-2 a16-4 f16-1 a16-2 d16 a16 d16 } f8) ~ |
  \scaleDurations 2/3 { f16 b,16( d16 f16 d16-1 f16 gs16 f16 gs16 b16 gs16 f16 bf16 g16 e16 a16-5 fs16-3 ds16-2 gs16-4 f16-2 d16-1 g16-5 e16-3 cs16-2 } |

  \barNumberCheck 25
  \scaleDurations 2/3 { fs16-4 ef16 c16-1 f16 d16 b16 e16 cs16 bf16 ef16 c16 a16 } \voiceOne d2-5) ~ |
  d4( cs4) d2\fermata |
  \fine
}
