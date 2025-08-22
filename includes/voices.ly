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
  (cons "up" #{ \change Staff = "upper" #})
  (cons "down" #{ \change Staff = "lower" #})
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

switchStaffGeneric = #(define-music-function
  (staff-name voice-name show-switch)
  (string? string? boolean?)
  (let*
    (
      (staff-change (assoc-ref staff-map staff-name))
      (voice-assign (assoc-ref voice-map voice-name))
      ;(show-switch-music (if show-switch #{ \once \showStaffSwitch #} #{ }))
      (show-switch-music
        (if show-switch
          #{ \once \showStaffSwitch #}
          #{   #} ; zero-duration spacer to avoid warnings
        )
      )
    )
    (make-music
      'SequentialMusic
      'elements (
        list
        staff-change
        voice-assign
        show-switch-music
      )
    )
  )
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
