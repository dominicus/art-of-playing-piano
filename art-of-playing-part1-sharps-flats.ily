\version "2.14.2"

inlineScoreChromaticScale = \markup { " " \general-align #Y #CENTER 
	\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    	        }
		    \relative c'{
		    	    \set Staff.instrumentName = #"Ex:"
		    	    \cadenzaOn
		    	    \override Slur #'details = #'(head-slur-distance-factor . 10)
		    	    c4( cis)( d)( dis)( e)( f)( fis)( g)( gis)( a)( 
		    	    %\override Slur #'control-points = #'( ( 1.1774 . 1.63) ( 2.1736 . 2.354) ( 3.5322 . 2.445) ( 4.7096 . 1.901) )
		    	    ais)( b)( c)
		    	    \bar "||" 
			}
	  \layout {
	      indent = 0.1\in
	      line-width = 2.8\in
	      ragged-right = ##f
	    }
	    }
	}
	\column {\left-align \general-align #Y #-1.3 " The intervals of the contiguous"
		\general-align #Y #-1 \line{  "  notes are all semitones."}
	}	   
}


  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneSharpsFlats = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph {
    	    The \caps sharp \sharp placed before a note, raises it a semitone or half-tone.  Let us now 
    	    observe a scale of semitones, called the \caps chromatic scale.
    }
    \paragraph{\inlineScoreChromaticScale}
    \paragraph{" "}
    \paragraph{" "}
}
}
