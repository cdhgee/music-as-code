leftHandUpper = \relative c {

  \voiceOne

  \barNumberCheck 1
  s1. |
  gs'8 fs8 e8-1 ds8-3 e8-1 cs8-5 cs'4.-> b8 a4-1 |
  gs2. ~ gs2 cs4 |
  ds8 cs8 bs8 as8 bs8 gs8 fs'4.-> e8 ds4 |
  e2. ds2. ~
  ds2. cs2. ~ |
  cs2. b2. |
  b8 a8 gs8 fs8 gs8 e8 e'4.-> ds8 cs4 |

  \barNumberCheck 9
  bs1. ~ |
  bs4. cs8-1 ds4-1 cs2. |
  \oneVoice s1. |
  s1. |
  s2. \voiceOne ds,2. ~ |
  ds8 cs8 b8 as8-4 b8-3 gs8-5 b8 ds8 gs8-1 e8-2 fs8-1 ds8-2 |
  e2. fs2. |
  \oneVoice s1. |

  \barNumberCheck 17
  s2 \voiceOne ds4 fs8 e8-1 ds8-2 cs8 ds8 gs8 ~ |
  gs8 fs8 e8 ds8 e8 gs8 cs8 r8 r4 r4 |
  \staffUp \voiceTwo r4 r8 cs8-2 d2-2 \staffDown \voiceOne \once \showStaffSwitch gs,4 cs4 ~ |
  cs8 b8 a8 gs8 a8 fs8 fs'4. e8-1 ds8-2 cs8-3 |
  b4. cs8 ds4 ~ ds4. gs,8 cs8 bs8 |
  cs2.\prall ~ cs4. bs8-2 cs8-1 as8-3 |
  bs4. cs8 ds4 \staffUp \voiceTwo \once \showStaffSwitch cs2. |
  \staffDown \voiceOne a4. b8-1 cs4-2 d2.\prall |

  \barNumberCheck 25
  bs2. fs'4 r4 r4 |
  \oneVoice s1. |
  s1. * 6 |

  \barNumberCheck 33
  s1. |
  s2. \voiceOne gs,2. ~ |
  gs8 gs8-2 fss8-1 gs8-2 as8-1 ds,8-2 e2. ~ |
  e8 ds8-2 cs8-3 b8-4 cs8-3 e8-2 fss2. |
  \oneVoice s1. |
  s2. s2 \voiceOne gs,8 gs'8 ~ |
  gs4 fs4 a4 gs2. |
  \fine

}

leftHandLower = \relative c {

  \voiceTwo

  \barNumberCheck 1
  cs1. ~ |
  cs1. |
  bs2. ~ bs2 cs4 |
  gs'1. ~ |
  gs2. fs2. ~ |
  fs2. e2. ~ |
  e2. ds2. |
  e1. |

  \barNumberCheck 9
  ds2. gs4. fs8 gs4 |
  cs,2. ~ cs4. ds8 e4 |
  \oneVoice as,8-5( ds8-2 cs8-3 b8-4 cs8-2 as8-4 fss8-5 b8-1 as8 gs8 as8-2 fs8-3 |
  cs2.) ~ cs8 cs'8 b8 as8 b8 gs8 |
  e'4. ds8 cs4 \voiceTwo ds2 ds,4 |
  gs2. ~ gs2. |
  cs8-1-3 ds8 cs8 b8-4 cs8-2 as8-3 fs4. gs8 as4 |
  \oneVoice b2. ~ b8 b'8 a8 gs8 a8 fs8 |

  \barNumberCheck 17
  ds8 e8 ds8 cs8 \voiceTwo ds8-1 bs8-4 gs4.-2-5 as8-3-5 bs4-2-4 |
  cs2. ~ cs8 ds8-4 e8-1 fs8-4 gs8 a8 |
  b2\changeFinger "1~3" ~ b8 b8-2 es,2. |
  fs1. |
  gs4.-1-4 a8-2-4 b4-1-3 e,2. ~ |
  e4. ds8-4 c4-5 ds2.\changeFinger "4~5" |
  gs4.-2-4 as8-1-3 bs4-2-4 cs4.-1 b8-2 a8-3 gs8-4 |
  fs2.-3-5 ~ fs4. e8-4 fs4-3 |

  \barNumberCheck 25
  ds4. fs8 a4-2 ~ a8-1-2 gs8 fs8 e8-5 fs8-2 ds8-3 |
  \oneVoice e8-3 ds8 cs8 bs8 cs8 a8 a'2.\prall ~ |
  a8 gs8 fs8 e8 fs8 ds8 bs'2.\prall |
  cs8 b8 a8 gs8 a8 fs8 fs'2.->\prall ~ |
  fs8 e8 ds8 cs8 bs8 as8 gs8 fs8 e8 ds8 cs8 b8-1 |
  a4.-2 b8 gs4 fs4. gs8-2 e4-3 |
  ds4. e8 fs4 bs,4. ds8 fs4 |
  e8-5 e'8 fs8 gs8 a8 fs8 ds8-4 e8-3 fs8-2 ds8-3 bs8-5 cs8-3 |

  \barNumberCheck 33
  ds8-2 bs8-1 gs8-3 as8 bs8 cs8-3 ds8 e8 fs8-4 gs8 as8 bs8 |
  cs8 b8 a8 gs8 a8 fs8 \voiceTwo gs2 gs,4 |
  as2. ~ as4. b8-3 cs4-2 |
  fss,2.-5 ~ fss4. gs8-3 as4-2 |
  \oneVoice ds,2-5 r4 r2. |
  r8 ds''8-2 cs8-3 b8-1 a8 fs8 gs8-1 ds8-3 e8-2 cs8-3 \voiceTwo gs4 |
  cs2. ~ cs2.\fermata |
  \fine

}



leftHand = \relative c {

  \global
  \clef bass
  <<

    \new Voice \leftHandUpper
    \new Voice \leftHandLower

  >>

}
