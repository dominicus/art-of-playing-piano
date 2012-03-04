\version "2.14.2"

inlineScoreAbbreviationsExOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    c1:8 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "to be played thus"} b1 b1 b2 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    c8[ c c c] c[ c c c] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExEight = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    
		    	    \override NoteHead #'rotation = #'(-50 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36 % #-1.24
		    	    \repeat tremolo 4 { e16[ c16]}
		    	    \repeat tremolo 4{  e16[ c16]}
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    
		    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "to be played thus"} b1 b1 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    e16[ c e c] e[ c e c] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExTwo = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \override NoteHead #'rotation = #'(-50 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36 % #-1.24
		    	    c2:8 c2:16
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    
		    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    c8[ c c c] c16[ c c c] c[ c c c] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExThree = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \repeat percent 2 {g8[ b d g]} 
	    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b,2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    g8[ b d g] g,8[ b d g] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExFour = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \repeat percent 2 {
    				    \override TupletBracket #'control-points = #'( ( 1.5774 . 3.819) ( 3.3208 . 4.483) ( 5.3134 . 4.068) ( 6.0606 . 2.822) )
				    \override TupletNumber #'extra-offset = #'(1.5 . -1 )
				    \times 2/3 {g8[ b d]} 
		    	    } 
	    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b,2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    g8[ b d g] g,8[ b d g] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}


  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneAbbreviations = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{"                " \inlineScoreAbbreviationsExOne}
    \paragraph{"                " \inlineScoreAbbreviationsExTwo}
    \paragraph{"                " \inlineScoreAbbreviationsExThree}
    \paragraph{"                " \inlineScoreAbbreviationsExFour}
    \paragraph{"                " \inlineScoreAbbreviationsExEight}

    \paragraph {
    	    The pause \inlineScorePauseOneExample or \inlineScorePauseTwoExample renders the \caps note longer \caps "at pleasure"; and in
    	    certain cases, the composer expects some \caps embellishments from the performer; but the pause on a rest \inlineScoreCrotchetRestFermata 
    	    only lengthens, \caps "at pleasure," the \caps silence.
    }
    \paragraph{" "}
    \paragraph {
    	The \caps sign or \caps repeat "  " \general-align #Y #-0.4 { \musicglyph #"scripts.segno"} " " is a reference 
    	to a passage, or strain, to which the performer is to return: the Italian words, \caps "al segno" or \caps "dal segno",
    	denote such a return.
    }
    \paragraph{" "}
    \paragraph{
    	The double bar \inlineScoreDoubleBarExample marks the end of a strain; or the conclusion of a piece.
    }
    \paragraph{" "}
    \paragraph{
    	The \caps dotted bars \inlineScoreVoltaBarExample denote the repeat of the foregoing, and following strain. "    " \bold "N.B. "
    	The second part of a piece, if \caps "very long," is seldom repeated; notwithstanding the \caps dots.
    }
    \paragraph{" "}
    \paragraph{
    	When the bars are marked thus \inlineScoreVoltaBarEndExample " or " \inlineScoreVoltaBarStartExample " " then the strain, only 
    	on the side of the \caps dots is to be repeated.
    }
    \paragraph{" "}
    \paragraph{" "}
}
}
