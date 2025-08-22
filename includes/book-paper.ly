\include "paper.ly"

\paper {

  print-all-headers = ##t

  oddHeaderMarkup = \markup {
    \unless \on-page #1  \right-align \fromproperty #'page:page-number-string
  }
  evenHeaderMarkup = \markup {
    \unless \on-page #0  \left-align \fromproperty #'page:page-number-string
  }

}
