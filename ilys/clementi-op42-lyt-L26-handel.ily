\version "2.16.1"
\include "clementi-op42-mus-L26-handel.ily"

% LESSON XXVI. Minuet in Samson, by Handel.

\score{ % LESSON XXVI: Menuet in Samson de HANDEL PRINT
	  \new PianoStaff
	  <<
		    \new Staff = "upper"
		    {\LessonXXVIUpperA \LessonXXVIUpperB}
		    \new Staff = "lower"
		    {\LessonXXVILowerA \LessonXXVILowerB}
	  >>
	  \layout { }
}
