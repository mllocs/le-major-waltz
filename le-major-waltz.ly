\version "2.16.2"

melody = \relative c' {
  \clef treble
  \key bes \major
  \time 3/4
  r2. | r2. | r2. | r2. |
  r2. | r2. | r2. | r2. |
}

harmony_a = \chordmode {
  bes:maj | c:min7 | d:min7 | ees:maj | ees:maj | ees:maj | des:maj | des:maj |
}

harmony_b = \chordmode {
  g:min7 | g:min7 | a:min7 | aes:min7 | g:min7 | g:min7 | d:min7 | f:7 |
}

\header {
  title = "Le major waltz"
  composer = ""
  meter = "moderato"
}

\score {
  <<
    \new ChordNames \harmony_a
    \new Staff \melody
    \new ChordNames \harmony_a
    \new Staff \melody
    \new ChordNames \harmony_b
    \new Staff \melody
    \new ChordNames \harmony_a
    \new Staff \melody
  >>
  \layout{ }
  \midi { }
}
