\version "2.16.1"
\include "definitions.ily"
\include "clementi-op42-mus-L01-mozart.ily"


\score { %LESSON I MODERATO DE MOZART (PRINT)
  \new PianoStaff <<
    \new Staff = "upper" \LessonIModeratoUpper
    \new Staff = "lower" \LessonIModeratoLower
  >>
  \layout {
	  indent = 0.0\in
	  ragged-right = ##f
  }	
}
