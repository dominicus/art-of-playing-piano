\version "2.14.2"

inlineScoreExtensionsExOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'{
	    	     	    \set Staff.instrumentName = \markup{\larger{\concat{R.H. \super d}}}
	    	     	    \cadenzaOn
		    	    \clef treble
		    	    %\once \override Beam #'positions = #'(-0.5 . -1.6 )
		    	    c8-1[ c'-5] b-1[ a'-5] g-4[ c,-1] c'4-5
		    	    \bar "||" 
		    	    \stopStaff
		    	    \once \override TextScript #'extra-offset = #'(0.8 . 5.2 )
		    	    \hideNotes 
		    	    b,4-\markup{\larger{\concat{L.H. \super d}}} b2.
		    	    \startStaff
		    	    \clef bass
		    	    \unHideNotes
		    	    c,8-1[ c,-5] d-1[ e,-5] f-4[ c'-1] c,4-5
		    	    \bar "||" 
		    	    \stopStaff
		    	    \once \override TextScript #'extra-offset = #'(0.8 . 5.2 )
		    	    \hideNotes 
		    	    d'4-\markup{\larger{\concat{R.H. \super d}}} d2.
		    	    \startStaff
		    	    \clef treble
		    	    \unHideNotes
		    	    c'16-1[ c'-5] c-1[ c'-5]
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreExtensionsExTwo = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'{
	    	     	    \set Staff.instrumentName = \markup{\larger{\concat{L.H. \super d}}}
	    	     	    \cadenzaOn
		    	    \clef bass
		    	    \unHideNotes
		    	    c,,16-5[ c'-1] c-5[ c'-1]
		    	    \bar "||"
		    	    \stopStaff
		    	    \once \override TextScript #'extra-offset = #'(0.8 . 5.2 )
		    	    \hideNotes 
		    	    d,4-\markup{\larger{\concat{R.H. \super d}}} d2.
		    	    \startStaff
		    	    \clef treble
		    	    \unHideNotes
		    	    c'8-1 c'4^\markup{\finger{ \concat{ "5" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "1"}}} 
		    	    c'8-5
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreExtensionsExThree = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c{
	    	     	    \cadenzaOn
		    	    \clef bass
		    	    c,8-5 c'4^\markup{\finger{ \concat{ "5" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "1"}}} c'8_1
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneExtensionsContractions = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{  }
    \paragraph{ \inlineScoreExtensionsExOne }
    \paragraph{ \inlineScoreExtensionsExTwo }
    \paragraph{  }
    \paragraph{ 
    	    \larger "N.B." The \finger{ \concat{ "5" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "1"}} means
    	    that after striking \larger C  with the \concat{ 4 \super th } finger, the thumb is shifted on the 
    	    key without striking it.
    }
    \paragraph{
    	    In a similar manner the left hand "thus:   " \inlineScoreExtensionsExThree
    }
    \paragraph{ }
    \paragraph{
    	    Which mode of fingering should be much practised in various ways, the \caps "legato-style" requiring 
    	    it very frequently.
    }
    \paragraph{ }
}
}
