\include "final-verse/final-verse.ly"
\include "words.ly"


\makeOrganDescantHymnScore #(list
  (cons 'descant (list
    (makeVoice "Breaks" breaks)
    (makeVoice "Unison" unisonMusic)
  ))
  (cons 'upper (list
    (makeVoice "Breaks" breaks)
    (makeVoice "OrganRH1" organRHVoiceOne)
    (makeVoice "OrganRH2" organRHVoiceTwo)
  ))
  (cons 'lower (list
    (makeVoice "Breaks" breaks)
    (makeVoice "OrganLH1" organLHVoiceOne)
    (makeVoice "OrganLH2" organLHVoiceTwo)
  ))
  (cons 'words (list verseFourWords))
  (cons 'words-voice "Unison")
  (cons 'partial-bars #f)
  (cons 'systems 5)
)

% fullScore = \score {

%   <<
%     \removeWithTag #'satb \new ChoirStaff \with {
%         \override SystemStartBracket.collapse-height = #0
%     } <<
%       \new Staff {
%         \global
%         \clef "treble"
%         <<
%           \new Voice = "choir" \sopranoMusic
%           \new Voice = "unison" \unisonMusic
%         >>
%       }
%       \new Lyrics = sopranos \lyricsto choir \verseFourWords
%     >>
%     \new PianoStaff <<
%       \new Staff {
%         \global
%         \clef treble
%         <<
%           \new Voice \organRHVoiceOne
%           \new Voice \organRHVoiceTwo
%         >>
%       }
%       \new Staff {
%         \clef "bass"
%         \global
%         \organLH
%       }
%     >>
%     \new Staff {
%       \global
%       \clef bass
%       \new Voice \organPedal
%     }
%   >>
%   \layout {

%     system-count = #6
%     \staffContext
%     \scoreContext
%     \lyricsContext

%   }

% }
