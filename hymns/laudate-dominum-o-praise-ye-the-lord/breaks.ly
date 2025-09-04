spanBar = #(define-music-function
  ()
  ()
  (make-sequential-music
    (list
     (make-music
      'ContextSpeccedMusic
      'context-type 'ChoirStaff
      'element
      (make-music
       'OverrideProperty
       'symbol 'SpanBar
       'grob-property-path '(transparent)
       'grob-value #f
       'once #t))
     (make-music 'CaesuraEvent)))

)


breaks = \relative c' {

  % \tag #'(main full) {
  \partial 4 s4 |
  s2. |
  s2. |
  s2. |
  s2 \caesura \break s4 |
  s2. |
  s2. |
  s2. |
  s2 \caesura \break s4 |
  s2. |
  s2. |
  s2. |
  s2 \caesura \break s4 |
  s2. |
  s2. |
  s2. |
  s2
  % } \tag #'main { \caesura \break } \tag #'(last full) {
  s4 \caesura \break |
  s2. |
  s2. |
  s2. %}

}
