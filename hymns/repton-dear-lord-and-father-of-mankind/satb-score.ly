\include "rh/rh.ly"
\include "lh/lh.ly"
\include "breaks.ly"
\include "words.ly"

satbScore = \score {

  \new ChoirStaff <<
    \new Staff = "upper" {

      \global
      \clef "treble"
      <<
        \breaks
        \new Voice = "Soprano" \rightHandVoiceOne
        \new Voice = "Alto" \rightHandVoiceTwo
      >>
    }
    \new Lyrics = sopranos \lyricsto Soprano \verseOneWords
    \new Lyrics = sopranos \lyricsto Soprano \verseTwoWords
    \new Lyrics = sopranos \lyricsto Soprano \verseThreeWords
    \new Lyrics = sopranos \lyricsto Soprano \verseFourWords
    \new Lyrics = sopranos \lyricsto Soprano \verseFiveWords
    \new Staff = "lower" {
      \clef "bass"
      \global
      <<
        % \breaks
        \new Voice = "LH1" \leftHandVoiceOne
        \new Voice = "LH2" \leftHandVoiceTwo
        \new Voice = "LH3" \leftHandVoiceThree
      >>
    }
  >>
  \layout {
    system-count = #4
    \choralStaffContext
    \choralScoreContext
    \choralLyricsContext
  }

}
