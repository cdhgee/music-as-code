\include "lh-upper.ly"
\include "lh-lower.ly"

leftHand = #(list
  (makeVoice "LH1" leftHandUpper)
  (makeVoice "LH2" leftHandLower)
)

% leftHand = \relative c {

%   \global
%   \clef bass
%   <<

%     \new Voice \leftHandUpper
%     \new Voice \leftHandLower

%   >>

% }

