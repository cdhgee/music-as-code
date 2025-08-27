\paper {

  indent = #0

  scoreTitleMarkup = \markup \column {
    \fill-line {
      \huge \larger \larger \bold \fromproperty #'header:title
    }
    \vspace #1
    \fill-line {
      \smallCaps \concat {
        \fromproperty #'header:tune
        "    "
        \fromproperty #'header:meter
      }
      \concat {
        \fromproperty #'header:composer
        \smaller \smaller "  ("
        \smaller \smaller \fromproperty #'header:dates
        \smaller \smaller ")"
      }
    }
    \vspace #1
  }

}
