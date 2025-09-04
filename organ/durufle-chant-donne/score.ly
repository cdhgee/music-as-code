\include "global.ly"
\include "tempi.ly"
\include "rh/rh.ly"
\include "lh/lh.ly"
\include "pedal/pedal.ly"
\include "dynamics/dynamics.ly"

\makeOrganManualsScore #(list
  (cons 'metadata (list
    (cons 'title "Chant Donné")
    (cons 'subsubtitle "Hommage à Jean Gallon")
    (cons 'composer "Maurice Duruflé (1902-1986)")
  ))
  (cons 'upper (list
    (makeVoice "RH1" rightHandVoiceOne)
    (makeVoice "RH2" rightHandVoiceTwo)
  ))
  (cons 'lower (list
    (makeVoice "LH1" leftHandVoiceOne)
    (makeVoice "LH2" leftHandVoiceTwo)
  ))
  (cons 'tempi tempi)
  (cons 'systems 6)
)

% \makeGenericOrganScore #(list
%   (cons 'metadata (list
%     (cons 'title "Chant Donné")
%     (cons 'subsubtitle "Hommage à Jean Gallon")
%     (cons 'composer "Maurice Duruflé (1902-1986)")
%   ))
%   (cons 'staff-groups (list
%     (list
%       (cons 'type 'PianoStaff)
%       (cons 'staves (list
%         (list
%           (cons 'name "tempi")
%           (cons 'type 'Dynamics)
%           (cons 'dynamics tempi)
%         )
%         (list
%           (cons 'name "upper")
%           (cons 'clef "treble")
%           (cons 'voices (list
%             (list (cons 'name "RH1") (cons 'music rightHandVoiceOne))
%             (list (cons 'name "RH2") (cons 'music rightHandVoiceTwo))
%           ))
%         )
%         (list
%           (cons 'name "lower")
%           (cons 'clef "bass")
%           (cons 'voices (list
%             (list (cons 'name "LH1") (cons 'music leftHandVoiceOne))
%             (list (cons 'name "LH2") (cons 'music leftHandVoiceTwo))
%           ))
%         )
%       ))
%     )
%   ))
%   (cons 'systems 6)
% )
