% #(define staffDown #{ \change Staff = "lower" #})
% #(define staffUp #{ \change Staff = "upper" #})
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

% #(display staffUp)

#(define voice-map (list
  (cons "1" #{ \voiceOne #})
  (cons "2" #{ \voiceTwo #})
  (cons "3" #{ \voiceThree #})
  (cons "4" #{ \voiceFour #})
))

#(define staff-map (list
  (cons "up" #{
    \change Staff = "upper"
    \override Voice.Fingering.direction = #UP
  #})
  (cons "down" #{
    \change Staff = "lower"
    \override Voice.Fingering.direction = #DOWN
  #})
))

% switchStaffGeneric = #(define-music-function
%   (staff-name voice-name show-switch)
%   (string? string? boolean?)
%   (let*
%     (
%       (staff-change (assoc-ref staff-map staff-name))
%       (voice-assign (assoc-ref voice-map voice-name))
%       (show-switch-music (if show-switch #{ \once \showStaffSwitch #} #{ }))
%     )
%     (make-music
%       'SequentialMusic
%       'elements (list staff-change voice-assign show-switch-music)
%     )
%   )
% )

staffSwitch = #(define-scheme-function
  (staff-name)
  (string?)
  (assoc-get staff-name staff-map #{ #})
)

voiceSwitch = #(define-scheme-function
  (voice-name)
  (string?)
  (assoc-get voice-name voice-map #{ #})
)

switchStaffGeneric = #(define-music-function
  (staff-name voice-name show-switch)
  (string? string? boolean?)
  #{
    \voiceSwitch #voice-name
    \staffSwitch #staff-name
    #(if show-switch
      #{ \once \showStaffSwitch #}
      #{ #}
    )
  #}
)

    % (make-music
    %   'SequentialMusic
    %   'elements (
    %     list
    %     staff-change
    %     voice-assign
    %     show-switch-music
    %   )
    % )

upOne = #(define-music-function
  (show-switch)
  (boolean?)
  (switchStaffGeneric "up" "1" show-switch)
)

upTwo = #(define-music-function
  (show-switch)
  (boolean?)
  (switchStaffGeneric "up" "2" show-switch)
)

upThree = #(define-music-function
  (show-switch)
  (boolean?)
  (switchStaffGeneric "up" "3" show-switch)
)

upFour = #(define-music-function
  (show-switch)
  (boolean?)
  (switchStaffGeneric "up" "4" show-switch)
)

downOne = #(define-music-function
  (show-switch)
  (boolean?)
  (switchStaffGeneric "down" "1" show-switch)
)
