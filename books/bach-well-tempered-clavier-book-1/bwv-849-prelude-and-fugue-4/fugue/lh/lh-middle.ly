leftHandMiddle = \relative c {

  \voiceThree \shiftOff
  \barNumberCheck 1
  s1 * 8

  \barNumberCheck 9
  s1 * 8

  \barNumberCheck 17
  s1 * 8

  \barNumberCheck 25
  s1 * 5
  cs2 fs2 |
  s1 | % cs1 ~ |
  s1 |
  % \voiceFour \shiftOff cs2 fs2 |

  \barNumberCheck 33
  s1 * 8 |

  \barNumberCheck 41
  s1 * 8 |

  \barNumberCheck 49
  s1 * 8 |

  \barNumberCheck 57
  s1 * 3 |
  ds2 s2 |
  s1 * 4 |

  \barNumberCheck 65
  \once \voiceFour fs4-2^( e8 ds8_3 e2->) |
  \voiceThree \shiftOff s1 * 7

  \barNumberCheck 73
  s1 * 8

  \barNumberCheck 81
  s1 |
  bs2-> s2 |
  s1 * 2 |
  \voiceFour a'4-1-2( gs8-3 fs8-4 gs2\changeFinger "3~1") ~ |
  \voiceThree \shiftOff gs2 \noMove \once \override Stem.length = 8 fs2 |
  gs1 |
  a2 s2 |

  \barNumberCheck 89
  s1 * 8 |

  \barNumberCheck 97
  s1 * 8 |

  \barNumberCheck 105
  s1 * 8 |

  \barNumberCheck 113
  s1 * 3 |
  \fine

}
