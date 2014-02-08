\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L01-prel-cmaj.ily"

\score {
   	   %LESSON I PRELUDE 
		  \new PianoStaff <<
		    \new Staff = "upper" \LessonIPreludeupper
		    \new Staff = "lower" \LessonIPreludelower
		  >>
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##f
	  }
}


