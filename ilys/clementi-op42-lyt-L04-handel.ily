\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L04-handel.ily"

% LESSON IV: Air in Saul de Handel.

\paper {
  system-system-spacing #'basic-distance = #12
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \LessonIVUpper
    \new Staff = "lower" \LessonIVLower
  >>
  \layout {  }
}
