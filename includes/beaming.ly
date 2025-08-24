% #(define beat-structure-table
%   '((4 . 4) . ((base . (1 . 4)) (structure . (1 1 1 1)))
%     (3 . 4) . ((base . (1 . 4)) (structure . (1 1 1)))
%     (6 . 8) . ((base . (1 . 8)) (structure . (3 3)))
%     (9 . 8) . ((base . (1 . 8)) (structure . (3 3 3)))
%     (12 . 8) . ((base . (1 . 8)) (structure . (3 3 3 3)))))


% beamQuavers = {
%   \set Voice.beamExceptions = #'()
%   \set Voice.baseMoment = #(ly:make-moment 1/8)
%   \set Voice.beatStructure = 1,1,1,1,1,1,1,1
% }

% beamCrotchets = {
%   \set Voice.beamExceptions = #'()
%   \set Voice.baseMoment = #(ly:make-moment 1/4)
%   \set Voice.beatStructure = 1,1,1,1
% }

% makeOnes = #(define-scheme-function
%   (n)
%   (integer?)
%   (make-list n 1)
% )

% beamAuto = #(define-scheme-function
%   (base structure)
%   (integer? integer?)
%   #{
%     \set Voice.beamExceptions = #'()
%     \set Voice.baseMoment = #(ly:make-moment 1 base)
%     \set Voice.beatStructure = #(make-list structure 1)
%   #}
% )

% beamCrotchetsAuto = #(define-scheme-function
%   (structure)
%   (integer?)
%   (beamAuto 4 structure)
% )

% beamQuaversAuto = #(define-scheme-function
%   (structure)
%   (integer?)
%   (beamAuto 8 structure)
% )

customAutoBeam = #(define-scheme-function
  (beatLength)
  (integer?)
  (let* (
      (noteCount (/ (* beatLength timeCount) timeBase))
      (baseMoment (ly:make-moment 1 beatLength))
      (beatStructure (make-list noteCount 1))
    )
    #{
      \set Voice.beamExceptions = #'()
      \set Voice.baseMoment = #baseMoment
      \set Voice.beatStructure = #beatStructure
    #}
  )
)

beamQuavers = #(define-scheme-function
  ()
  ()
  (customAutoBeam 8)
)

beamCrotchets = #(define-scheme-function
  ()
  ()
  (customAutoBeam 4)
)


restoreBeaming = {
  \unset Voice.beamExceptions
  \unset Voice.baseMoment
  \unset Voice.beatStructure
}
