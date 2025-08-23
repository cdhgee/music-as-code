rightHandMiddle = \relative c' {

  \barNumberCheck 1
  \oneVoice s1 * 8 |

  \barNumberCheck 9
  s1 * 3
  \voiceThree \shiftOff b'2\rest gs2-1-4( |
  es2-1-2 a2-3-5 |
  gs2-4) fs2 _~ |
  fs2 cs'2 ~ |
  cs2-4 b2-2-3 ~ |

  \barNumberCheck 17
  b2-2-4-5 a2-2-3 |
  gs2 a2 _~ |
  \once \shiftOn a4 gs4-3 fs4 e4-1 |
  as2 gs2 ~ |
  \voiceTwo gs2 fss2 |
  gs2 b,2 |
  cs2.-2 cs4-2 |
  ds4-1 cs4-3 ds4-2 es4-1 |

  \barNumberCheck 25
  \voiceThree \shiftOff fs2-1 a2 |
  gs2 g8\rest b8-2 a8-1 gs8-2 | %FIXME horizontal position of rest
  \shiftOn fs4 a4-3 gs4 fs4-1 |
  es2 fs2 _~ |
  fs4 e4-1 \voiceFour \shiftOff e2 ~
  e2 ds2 |
  e1 ~ |
  \voiceThree e4 ds4-2 e4-1 fs8 gs8 |

  \barNumberCheck 33
  \voiceFour \shiftOff fs2 b2 ~ |
  \voiceThree b4 cs4-4 b4 as4-2 |
  \voiceFour \shiftOff gs2 s2
  s1 * 5

  \barNumberCheck 41
  s1
  s1
  s1
  \voiceFour r2 cs2->-3 |
  bs2-> e2-5 |
  \voiceThree ds1->-4 |
  s1 * 2 |

  \barNumberCheck 49
  s1 * 8 |

  \barNumberCheck 57
  s1 * 8

  \barNumberCheck 65
  s1 * 8

  \barNumberCheck 73
  s1 |
  ds,2-2-4 cs2-1-4 |
  ds2-2-4 \staffDown \shiftOff gs,2-1 ~ |
  gs8 r8 r4 r2 |
  \staffUp \voiceFour r4 gs'4-2 cs4 cs4 |
  \voiceThree s1 * 3|

  \barNumberCheck 81
  s1 * 8

  \barNumberCheck 89
  s1 * 7 |
  fs1->-5 |

  \barNumberCheck 97
  cs1-5 |
  gs4-2-3 gs4-1-3 cs4-1-5 cs4-4 |
  \voiceFour \shiftOff cs4-3 bs8 as8 bs8 cs8-3 ds4 ~ |
  \voiceThree \shiftOff ds4 \hideBeam cs8 bs8 \once \shiftOn cs2 |
  fs,2 gs2 ~ |
  gs2 fs2 ~ |
  fs4 s4 gs4 gs4 |
  gs4 fs8-1-3 e8-2 ds4 cs4 |

  \barNumberCheck 105
  fs4 e8 ds8 e2 ~ |
  e4 fs8 gs8 a4 gs4-3 ~ |
  gs4 e4-1-2 a4-2-4 a4 |
  a4 gs8-1-3 fs8-1-2 gs4 as8-2-3 bs8-2-4 |
  cs2 as2 |
  gs2 gs2 |
  gs1 |
  gs2-2-3-5 fs2->-1-2 |

  \barNumberCheck 113
  es2->-2 a2->-2-4 |
  \noMove gs1 |
  gs1 |
  \fine

}
