\version "2.16.1"
\include "clementi-op42-mus-L36-corelli.ily"

% LESSON XXXVI. Gavotta, by Corelli.

\score {
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXXXVIUpperB
		    \new Staff = "lower" \LessonXXXVILowerB
	  >>
	  \layout { }
}
\markup { \column { \concat { "N.B. The last note of the bass in the 1" \super "st " "part must be played" }
	\concat { "with the thumb the 2" \super "d " "time, on account of the 1" \super "st " "note in the 2" \super "d " "part." }
	}
}
