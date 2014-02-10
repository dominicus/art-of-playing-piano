\version "2.16.1"
\include "clementi-op42-mus-L42-cpebach.ily"

%-----LESSON 42 - CPE Bach Rondo

\score { {
  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "upper" <<
      \override Staff.TimeSignature   #'style = #'default
      \context Voice=One \LessonXLIIUpperA
      \context Voice=Two \LessonXLIIUpperB
    >>
    \context Staff = "lower" <<
      \override Staff.TimeSignature   #'style = #'default
      \context Voice=One \LessonXLIILowerA
      \context Voice=Two \LessonXLIILowerB
    >>
  >>
}
    \layout {
    	    \context{
    	    	    \PianoStaff
    	    	    \consists #Span_stem_engraver	    
    	    }
    }
}

