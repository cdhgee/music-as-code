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
