postDynamic = #(define-scheme-function
  (d s)
  (string? string?)
  #{
    \tweak self-alignment-X ##f \tweak parent-alignment-X ##f
    #(make-dynamic-script #{ \markup { \dynamic #d \normal-text \italic #s } #})
  #}
)

dynamics = {

  \barNumberCheck 1
  s1\postDynamic "p" "leggiermente" |
  s1 |
  s4. s4.\cresc s4 |
  s1 |
  s1 |
  s1\fp |
  s1 |
  s1\cresc |

  \barNumberCheck 9
  s1 |
  s1\f |
  s1 |
  s8 s8\dim s2. |
  s1 |
  s1\p |
  s1 |
  s4 s2.\cresc |

  \barNumberCheck 17
  s1 |
  s1\f |
  s1 |
  s1\fp |
  s1 |
  s4 s8. s16\cresc s2 |
  s1 |
  s1 |

  \barNumberCheck 25
  s1 |
  s1 |
  s1\f |
  s1 |
  s1\ff |
  s1 |
  s1 |
  s1 |
  s4 s2.\mdi "meno Allegro" |
  s4\sf s4\sf s2\> |
  s1\p |
  \fine


}
