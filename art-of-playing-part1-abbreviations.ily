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
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "to be played thus"} b1 b1  b1.\unHideNotes
		    	    \sameSizeClef \forceClef
		    	    c8[ c c c] c[ c c c] \bar "||"
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
