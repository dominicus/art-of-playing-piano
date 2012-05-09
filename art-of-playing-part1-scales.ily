\version "2.14.2"

inlineScaleCmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger C major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \tempo "Right Hand"
		    	    c16-1
		    	        d-2 e-3 f-1  g-2 a-3 b-4 c-1
		    	    d-2 e-3 f-1 g-2  a-3 b-4 c-5 b-4 \noBreak
		    	    a-3 g-2 f-1 e-3  d-2 c-1 b-4 a-3
		    	    g-2 f-1 e-3 d-2
		    	    c4-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c'{
		    	    \clef bass
		    	    \time 4/4
		    	    \override TextScript #'extra-offset = #'(-3.6 . 0.0 )
		    	    c,,16-5^\markup{\bold "Left Hand"}
		    	    d-4 e-3 f-2  g-1 a-3 b-2 c-1
		    	    d-4 e-3 f-2 g-1     a-3 b-2 c-1 b-2 \noBreak
		    	    a-3 g-1 f-2 e-3     d-4 c-1 b-2 a-3
		    	    g-1 f-2 e-3 d-4
		    	    c4-5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
 inlineScaleAmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger A minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \key a \minor
		    	    \time 4/4
		    	    a16-1 b-2 c-3 d-1  e-2 fis gis a-1  b c d-1 e
		    	    fis gis a-5 g    f! e d c-3        b a g-4 f
		    	    e d c-3 b
		    	    a4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c,{
		    	    \clef bass
		    	    \key a \minor
		    	    \time 4/4
		    	    a16_5 b_4 c_3 d_2  e_1 fis_3 gis a  
		    	    b_4 c d e    fis-3 gis a-1 g-2
		    	    f!-3 e-1 d c  b a_1 g f 
		    	    e_1 d c b
		    	    a4_5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
inlineScaleGmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger G major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key g \major
		    	    g16-1 a-2 b-3 c-1  d e fis g-1  
		    	    a b c-1 d  e fis g-5  fis-4
		    	    e-3 d-2 c-1 b-3  a-2 g-1 fis-4 e-3
		    	    d-2 c-1 b-3 a-2
		    	    g4-1
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key g \major
		    	    g16_5 a b c   d e-3 fis g
		    	    a-4 b c d  e-3 fis g fis
		    	    e d-1 c b  a g-1 fis e
		    	    d-1 c b a
		    	    g4
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
inlineScaleEmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger E minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key e \minor
		    	    e16-1 fis g a-1  b cis dis e-1   fis g a-1 b    cis dis e-5 d!
		    	    c! b a g-3     fis e d-4 c     b a g-3 fis 
		    	    e4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key e \minor
		    	    e,16_5 fis g a   b cis_3 dis e   fis-4 g a b   cis-3 dis e-1 d!
		    	    c! b-1 a g    fis e-1 d c     b-1 a g fis 
		    	    e4-5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
 inlineScaleDmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger D major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key d \major
		    	    d16_1 e fis g_1   a b cis d-1   e fis g-1 a   b cis d-5 cis
		    	    b a g fis-3       e d cis-4 b   a g fis_3 e   d4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key d \major
		    	    d,16_5 e fis g     a b_3 cis d   e-4 fis g a   b-3 cis d-1 cis
		    	     b a-1 g  fis     e d_1 cis b   a_1 g fis e   d4_5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
 
inlineScaleBmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger B minor}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key b \minor
		    	    b16-1 cis d e-1   fis gis ais b-1  cis d e-1 fis   gis ais b-5 a!
		    	    g!  fis e d-3     cis b a-4 g      fis e d-3 cis   b4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key b \minor
		    	    b,16_4 cis d e    fis_4 gis ais b  cis-3 d e fis-4   gis ais b-1 a!-2
		    	    g! fis e-1 d     cis b_1 a g       fis e_1 d cis   b4_4
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
 }
inlineScaleAmaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\larger A major}
        \new Staff{
		 \relative c'{
		    	    \clef treble
		    	    \time 4/4
		    	    \key a \major
		    	    a16-1 b cis d-1   e fis gis a-1    b cis d e-1   fis gis a-5 gis
		    	    fis e d cis-3     b a gis-4 fis    e d cis-3 b   a4
		    	    \bar "|."
		     }
        	}
	\new Staff{
	    	     \relative c{
		    	    \clef bass
		    	    \time 4/4
		    	    \key a \major
		    	    a,16_5 b cis d    e fis_3 gis a    b_4 cis d e   fis-3 gis a-1 gis
		    	    fis e-1 d cis     b a_1 gis fis    e_1 d cis b   a4_5
		    	    \bar "|."
		     }
	}
        >>
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	      }
	    }
}
 
 
  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneMajorMinorScales = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
  	  \paragraph{"                     which ought to be practised daily."}
    \paragraph{" "}
    \paragraph{ \inlineScaleCmaj }
    \paragraph{" "}
    \paragraph{ \inlineScaleAmin }
    \paragraph{" "}
    \paragraph{ \inlineScaleGmaj }
    \paragraph{" "}
    \paragraph{ \inlineScaleEmin }
    \paragraph{   }
    \paragraph{ \inlineScaleDmaj }
    \paragraph{   }
    \paragraph{ \inlineScaleBmin }
    \paragraph{   }
    \paragraph{ \inlineScaleAmaj }
    \paragraph{   }
    \paragraph{   }
    \paragraph{" "}
  }
}
