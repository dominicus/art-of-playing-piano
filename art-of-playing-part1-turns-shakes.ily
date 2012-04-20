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
		    	    \bar "||" \break
		    	    \revert TextScript #'extra-offset
		    	    d4^\markup \override #'(baseline-skip . 1) {
		    	    	    \halign #-.5
		    	    	    \center-column {
		    	    	    	    \musicglyph #"scripts.turn"
		    	    	    	    \tiny \sharp
		    	    }}
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small " thus "} b2 
		    	    \unHideNotes
		    	    \times 2/3 {e32[ d cis} d8.]
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    d8[ e\turn f] \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small " thus "} b2 
		    	    \unHideNotes
		    	    d,8[ f32 e d e f8] \bar "||" \noBreak
		    	    \hideNotes b64 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \revert TextScript #'extra-offset
		    	    d,4^\markup \override #'(baseline-skip . 1) {
		    	    	    \halign #-.5
		    	    	    \center-column {
		    	    	    	    \tiny \flat
		    	    	    	    \musicglyph #"scripts.turn"
		    	    	    	    \tiny \sharp
		    	    }}
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small " thus "} b2 
		    	    \unHideNotes
		    	    \times 2/3 {ees32[ d cis!} d8.]
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
    \paragraph{" "}
  }
}
