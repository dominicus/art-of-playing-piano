\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L09-handel.ily"

% LESSON IX.  March in Judas Maccabeus, by Handel



\score { 
  \new PianoStaff <<
    \new Staff = "upper" \LessonIXUpper
    \new Staff = "lower" \LessonIXLower
  >>
  \layout { }
}
