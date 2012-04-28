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
		    	    b64-\markup{\whiteout \pad-markup #0.1 \small " thus "} b8
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
		    	    \set Staff.instrumentName = \markup{\column{{\small "The plain"} \line{\small "note and turn"}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \revert TextScript #'extra-offset
		    	    \hideNotes c64 \unHideNotes
		    	    c4^\markup{\musicglyph #"scripts.tenuto" \tiny " " \musicglyph #"scripts.turn"}
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(-1.1 . 6.2)
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.4 \small "or"} \unHideNotes
		    	    \grace c8 c4\turn
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b4 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.7245 . 2.626) ( 2.1736 . 3.441) ( 4.0756 . 3.26) ( 4.8002 . 1.72) )
			    \override TupletNumber #'extra-offset = #'(1.4 . -0.9 )
			    c16[
		    	    \times 2/3 {d32 c b} c8]
		    	    \bar "||"  \noBreak
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.2)
		    	    \hideNotes
		    	    b32-\markup{\whiteout \pad-markup #0.3 \small "The dotted "}_\markup{\whiteout \pad-markup #0.3 \small "note turned"}
		    	    b1 b2
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \override TextScript #'extra-offset = #'(2.8 . 0.0 )
		    	    c4.^\markup{ \musicglyph #"scripts.turn"} d8 e4
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b4 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.7245 . 2.626) ( 2.1736 . 3.441) ( 4.0756 . 3.26) ( 4.8002 . 1.72) )
			    \override TupletNumber #'extra-offset = #'(1.4 . -0.9 )
			    c8.[
		    	    \times 2/3 {d32 c b]} c8[ d] e4
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsFour = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "     Inverted turns     "
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes b64 \unHideNotes
		    	    c4^\markup{ \tiny " " \rotate #90 \musicglyph #"scripts.turn"}
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(-1.4 . 6.3 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.4 \small "or"} \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    c4^\markup{" " \musicglyph #"scripts.reverseturn"} \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.797 . 1.394) ( 1.9925 . 2.988) ( 3.985 . 3.188) ( 5.2802 . 2.59) )
			    \override TupletNumber #'extra-offset = #'(1.9 . -0.3 )
		    	    \times 2/3 {b32[ c d} c8.]
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.4 . 0.0 )
		    	    g4^\markup{\tiny \sharp}^\markup{\rotate #90 \musicglyph #"scripts.turn"}
		    	    \override TextScript #'extra-offset = #'(-2.0 . 6.3 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.4 \small "or"} \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(-0.4 . 0.0 )
		    	    g4^\markup{ \tiny \sharp \rotate #90 \musicglyph #"scripts.turn" }
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 1.2951 . -3.188) ( 3.188 . -3.5865) ( 4.4832 . -3.2876) ( 5.3798 . -2.391) )
			    \override TupletNumber #'extra-offset = #'(1.2 . 1.2 )
		    	    \times 2/3 {fis32[ g a} g8.]
		    	    \bar "||"
		     }
	  \layout {
	      indent = 1.2\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsFive = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
	    	     	    \set Staff.instrumentName = \markup { "Ex: 1" \super "st"}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes d32 \unHideNotes
		    	    d4\turn 
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points =  #'( ( 1.3283 . 3.542) ( 3.4315 . 4.095) ( 5.092 . 3.874) ( 6.4203 . 2.656) )
			    \override TupletNumber #'extra-offset = #'(1.5 . -1.0 )
		    	    \times 2/3 {e32[ d cis} d8.]
		    	    \bar "||"
		    	    \revert TextScript #'extra-offset
		    	    \hideNotes
		    	    b2 b2^\markup{"Ex: 2" \super "d"} b2
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    d4^\markup{\tiny " " \rotate #90 \musicglyph #"scripts.turn"}
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \revert TupletNumber #'extra-offset
		    	    \override TupletNumber #'extra-offset = #'(2.4 . -0.4 )
		    	    \override TupletBracket #'control-points =  #'( ( 0.7748 . 2.435) ( 1.7711 . 3.431) ( 4.0957 . 4.095) ( 5.5348 . 3.32) )
		    	    \times 2/3 {cis32[ d e} d8.]
		    	    \bar "||"

		    	    
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsSix = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{\column{{\small "Ex: in dou-"} \line{\small "-ble notes"}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    <<{
		    	         \revert TextScript #'extra-offset
		    	         d4^\markup{\tiny \sharp}^\markup{ \small \musicglyph #"scripts.turn"}
				}\\{b4}>>
			    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.1 . -5.4 )
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    <<{
				    \override TupletBracket #'stencil = #ly:slur::print
				    \override TupletBracket #'control-points =  #'( ( 1.8818 . 6.309) ( 3.0995 . 6.863) ( 4.8706 . 6.863) ( 6.199 . 6.088) )
				    \override TupletNumber #'extra-offset = #'(1.5 . -0.9 )
		    	        \times 2/3{e32[ d cis} d8.]
		    	    }\\{  b4  }>>
		    	    \bar "||" \noBreak
		    	    \hideNotes
		    	    b64
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    <<{
		    	    	\revert TextScript #'extra-offset
		    	    	\override TextScript #'extra-offset = #'(0.6 . -2.9 )
				b4^\markup{\rotate #90 \musicglyph #"scripts.turn"}
				}\\{g4}>>
			    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.1 . -5.4 )
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} c8
		    	    \unHideNotes
		    	    <<{
		    	         \revert TupletNumber #'extra-offset
		    	         \override TupletBracket #'control-points = #'( ( 1.8113 . 4.89) ( 2.717 . 5.705) ( 4.4379 . 5.977) ( 5.7059 . 5.253) )
		    	         \override TupletNumber #'extra-offset = #'(1.6 . -0.5 )
		    	         \times 2/3 {a32[ b c} b8.]    
		    	    }\\{g4}>>
		    	    \bar "||" \noBreak
		    	     \hideNotes
		    	    b64
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    <<{
		    	    	\override TextScript #'extra-offset = #'(3.1 . -2.9 )
		    	    	b4.^\markup{\musicglyph #"scripts.turn"} c8 d4
		    	    }\\{
		    	    	    g,4. a8 b4
		    	    }>>
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.1 . -5.4 )
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} c8
		    	    \unHideNotes
		    	    <<{
		    	       \revert TupletNumber #'extra-offset 
		    	       \override TupletBracket #'control-points =  #'( ( 1.6302 . 5.615) ( 2.6265 . 6.068) ( 4.4379 . 5.887) ( 5.0719 . 4.981) )
		    	       \override TupletNumber #'extra-offset = #'(1.1 . -0.9 )
		    	        b8.[ \times 2/3 {c32 b a]} b8[ c] d4
		    	    }\\{
		    	    g,4. a8 b4
		    	    }>>
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
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
    \paragraph{ \inlineScoreTurnsThree}
    \paragraph{ \inlineScoreTurnsFour }
    \paragraph{ N.B. The \caps lowest note of \caps every sort of turn is \caps mostly a semitone: }
    \paragraph{ \inlineScoreTurnsFive }
    \paragraph{ \inlineScoreTurnsSix }
    \paragraph{" "}
  }
}
