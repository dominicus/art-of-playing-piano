\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"
\include "clementi-op42-mus-L09-handel.ily"

% LESSON IX.  March in Judas Maccabeus, by Handel

\book {   \bookOutputName "clementi-op42-les09-handel-march"
  \score {
	\unfoldRepeats \articulate
	  \new PianoStaff <<
	    \new Staff = "upper" \LessonIXUpper
	    \new Staff = "lower" \LessonIXLower
	  >>
	  \midi { }
  }
}
