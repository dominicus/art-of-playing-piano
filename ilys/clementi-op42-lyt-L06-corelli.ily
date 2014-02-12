\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L06-corelli.ily"

% LESSON VI: Allegro by Corelli

\paper {
  top-margin = 6\mm
  ragged-bottom = ##t
  page-breaking = #ly:optimal-breaking
  indent = 0\mm
  system-system-spacing #'basic-distance = #18
}

\score {
	\new PianoStaff <<
	    \new Staff = "upper" \LessonVIUpper
	    \new Staff = "lower" \LessonVILower
	  >>
	  \layout { }
}
