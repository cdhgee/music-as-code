\include "satb/satb.ly"
\include "breaks.ly"
\include "words.ly"
\include "contexts.ly"


\makeSATBHymnScore #(list
  (cons 'metadata (list
    (cons 'title "O Praise Ye The Lord")
    (cons 'composer "Charles Hubert Hastings Parry (1848-1918)")
    (cons 'tune "Laudate Dominum")
    (cons 'meter "10 10 11 11")
  ))
  (cons 'upper (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Soprano" sopranoMusic)
    (makeVoice "Alto" altoMusic)
  ))
  (cons 'lower (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Tenor" tenorMusic)
    (makeVoice "Bass" bassMusic)
  ))
  (cons 'words (list verseOneWords verseTwoWords verseThreeWords verseFourWords))
  (cons 'words-voice "Soprano")
  (cons 'partial-bars #f)
  (cons 'systems 5)
  (cons 'trailer "Alternative version for verse four on next page")
)


% satbScore = \score {

%   \new ChoirStaff <<
%     \new Staff {

%       \global
%       \clef "treble"
%       <<
%         \breaks
%         \new Voice = "Soprano" \sopranoMusic
%         \new Voice = "Alto" \altoMusic
%       >>
%     }
%     \new Lyrics = sopranos \lyricsto Soprano \verseOneWords
%     \new Lyrics = sopranos \lyricsto Soprano \verseTwoWords
%     \new Lyrics = sopranos \lyricsto Soprano \verseThreeWords
%     \new Lyrics = sopranos \lyricsto Soprano \verseFourWords
%     \new Staff {
%       \clef "bass"
%       \global
%       <<
%         \breaks
%         \new Voice = "Tenor" \tenorMusic
%         \new Voice = "Bass" \bassMusic
%       >>
%     }
%   >>
%   \layout {
%     system-count = #5
%     \staffContext
%     \scoreContext
%     \lyricsContext
%     \context {
%       \Score
%       caesuraType = #'((bar-line . "||"))
%       forbidBreakBetweenBarLines = ##f
%     }
%   }

% }
