\version "2.14.2"

inlineScoreTurnsOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "The Turn"
		    	    \clef treble
		    	    \cadenzaOn
		    	    c\turn \bar "|"
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "played thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.5977 . 2.49) ( 2.8891 . 3.486) ( 5.9776 . 2.889) ( 6.9738 . 1.693) )
			    \override TupletNumber #'extra-offset = #'(1.9 . -0.9 )
		    	    \times 2/3 {d32[ c b} c8.]
		    	    \bar "||"
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.2)
		    	    \hideNotes
		    	    b32-\markup{\whiteout \pad-markup #0.3 \small "It is sometimes writ- "}_\markup{\whiteout \pad-markup #0.3 \small "_ten in small notes "}
		    	    b1 b2 \unHideNotes
		    	    \grace {d32[ c b]} c4
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsTwo = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.2 . -2.2 )
		    	    s8 d4^\markup \override #'(baseline-skip . 1) {
		    	    	    \halign #-.5
		    	    	    \center-column {
		    	    	    	    \musicglyph #"scripts.turn"
		    	    	    	    \tiny \sharp
		    	    }}
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b64-\markup{\whiteout \pad-markup #0.4 \small " thus "} b8
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 1.6604 . 2.905) ( 3.4869 . 3.819) ( 5.9776 . 3.071) ( 6.8078 . 1.66) )
			    \override TupletNumber #'extra-offset = #'(1.5 . -1.1 )
		    	    \times 2/3 {e32[ d cis} d8.]
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    d8[ e\turn f] \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 3.5)
		    	    b64-\markup{\whiteout \pad-markup #0.1 \small " thus "} b8 
		    	    \unHideNotes
		    	    d,8[ f32 e d e f8] \bar "||" \noBreak
		    	    \hideNotes b64 
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \revert TextScript #'extra-offset
%		    	    \override TextScript #'extra-offset = #'(-1.0 . -3.7 )
		    	    d,4^\markup \override #'(baseline-skip . 1) {
		    	    	    \halign #-.5
		    	    	    \center-column {
		    	    	    	    \tiny \flat
		    	    	    	    \musicglyph #"scripts.turn"
		    	    	    	    \tiny \sharp
		    	    	    }
		    	    }
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.3)
		    	    b128-\markup{\whiteout \pad-markup #0.3 \small " thus "} b8
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 1.6604 . 2.905) ( 3.4869 . 3.819) ( 5.9776 . 3.071) ( 6.8078 . 1.66) )
			    \override TupletNumber #'extra-offset = #'(1.5 . -1.1 )
		    	    \times 2/3 {ees32[ d cis!} d8.]
		    	    \bar "||"
		     }
	  \layout {
	  	  
	  	  \context {
			      \Score
			      \override SpacingSpanner
				#'base-shortest-duration = #(ly:make-moment 1 8)
			    }

	  	  
	      indent = 0.0\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsThree = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "The Plain"
		    	    \clef treble
		    	    \cadenzaOn
		    	    d^\markup{\musicglyph #"scripts.tenuto" \musicglyph #"scripts.turn"}
		    	    \bar "|"
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.5977 . 2.49) ( 2.8891 . 3.486) ( 5.9776 . 2.889) ( 6.9738 . 1.693) )
			    \override TupletNumber #'extra-offset = #'(1.9 . -0.9 )
		    	    \times 2/3 {d32[ c b} c8.]
		    	    \bar "||"
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.2)
		    	    \hideNotes
		    	    b32-\markup{\whiteout \pad-markup #0.3 \small "It is sometimes writ- "}_\markup{\whiteout \pad-markup #0.3 \small "_ten in small notes "}
		    	    b1 b2 \unHideNotes
		    	    \grace {d32[ c b]} c4
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneTurnsShakesBeats = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{ \inlineScoreTurnsOne }
    \paragraph{ \inlineScoreTurnsTwo }
    \paragraph{ \inlineScoreTurnsThree }
    \paragraph{" "}
  }
}
