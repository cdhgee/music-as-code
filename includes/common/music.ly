\include "timing.ly"
\include "beaming.ly"
\include "notes.ly"
\include "tuplets.ly"

smallNote = \tweak NoteHead.font-size #-2 \etc
shiftArpeggio = \once \override Arpeggio.padding = #3

changeFinger = #(define-scheme-function
  (fingering)
  (string?)
  #{
    \finger \markup \tied-lyric #fingering
  #}
)


hideBeam = \once \override Beam.transparent = ##t
hideBeams = #(define-music-function
  (m)
  (ly:music?)
  #{
    \override Beam.transparent = ##t
    #m
  #}
)

smallNoteChord = #(define-music-function
  (note-event)
  (ly:music?)
  (let* (
      (duration (ly:music-property note-event 'duration))
      (p (ly:music-property note-event 'pitch))
      (arts (ly:music-property note-event 'articulations))
      (new-octave (+ (ly:pitch-octave p) 2))
      (new-pitch (ly:make-pitch 0 (ly:pitch-notename p) (ly:pitch-alteration p)))
    )
    (make-music
      'EventChord
      'elements
      (list
        (make-music
          'NoteEvent
          'tweaks
          (list (cons (cons 'NoteHead 'font-size) -2))
          'articulations
          arts
          'duration
          duration
          'pitch
          p
        )
        (make-music
          'NoteEvent
          'duration
          duration
          'pitch
          new-pitch
        )
      )
    )
  )
)

smallNoteChords = #(define-music-function
  (music)
  (ly:music?)
  (let (
      (note-events (ly:music-property music 'elements))
    )
    (make-music
      'SequentialMusic
      'elements
      (map
        (lambda
          (note-event)
          (smallNoteChord note-event)
        )
        note-events
      )
    )
  )
)

postDynamic = #(define-scheme-function
  (d s)
  (string? string?)
  #{
    \tweak self-alignment-X ##f \tweak parent-alignment-X ##f
    #(make-dynamic-script #{ \markup { \dynamic #d \normal-text \italic #s } #})
  #}
)
