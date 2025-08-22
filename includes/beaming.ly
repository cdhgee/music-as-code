beamQuavers = {
  \set Voice.beamExceptions = #'()
  \set Voice.baseMoment = #(ly:make-moment 1/8)
  \set Voice.beatStructure = 1,1,1,1,1,1,1,1
}

beamCrotchets = {
  \set Voice.beamExceptions = #'()
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = 1,1,1,1
}

beamCrotchets.34 = {
  \set Voice.beamExceptions = #'()
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = 1,1,1
}

restoreBeaming = {
  \unset Voice.beamExceptions
  \unset Voice.baseMoment
  \unset Voice.beatStructure
}
