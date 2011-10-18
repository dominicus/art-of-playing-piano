\version "2.14.2"

inlineScoreScale = \markup { " " \general-align #Y #CENTER 
	\score{
    << \new PianoStaff \with {
        \remove Time_signature_engraver
        }
        \new Staff{
			\relative c'{
			\override TextScript #'self-alignment-Y = #CENTER
			\override TextScript #'staff-padding = #3
			\clef treble
			\cadenzaOn
			\repeat unfold 15 {s4}
			g^\markup{g} a^\markup{a} b(^\markup{b} c)^\markup{c} d^\markup{d} e(^\markup{e} f)^\markup{f} g^\markup{g}
			a_\markup{a} \stemUp b(_\markup{b} c)_\markup{c} \stemNeutral d_\markup{d} e(_\markup{e} f)_\markup{f} g_\markup{g} a_\markup{a}
			b(_\markup{b} c)_\markup{c} d_\markup{d} e(_\markup{e} f)_\markup{f}
			\bar "||"
			}
        	}
        	\new Staff{
        		\relative c,,{
        		\override TextScript #'self-alignment-Y = #CENTER
			\override TextScript #'staff-padding = #3
        		\clef bass
        		f^\markup{f} g^\markup{g} a^\markup{a} b(^\markup{b} c)^\markup{c} d^\markup{d} e(^\markup{e}
        		f)^\markup{f} g^\markup{g} a^\markup{a} b(^\markup{b} c)^\markup{c} d^\markup{d} e(^\markup{e} f)^\markup{f}
        		g_\markup{g} a_\markup{a} b(_\markup{b} c)_\markup{c} d_\markup{d} e(_\markup{e} f)_\markup{f} g_\markup{g}
        		\repeat unfold 13 {s4}
        		}
        	}
        >>
        \layout { 
        	indent = 0\in
        	ragged-right = ##t 
        }
      } " "
}
inlineScoreScaleLines = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c,,{
		\clef bass
		\tempo "Bass"
		\cadenzaOn
		f^\markup{F} a^\markup{A} c^\markup{C} e^\markup{E} \bar "|"
		g^\markup{G} b^\markup{B} \stemUp d^\markup{D} \stemNeutral f^\markup{F} a^\markup{A} \bar "|"
		c^\markup{C} e^\markup{E} g^\markup{G} \bar "||" 
		s2
		\clef treble
		\tempo "Treble"
		
		a,4^\markup{A} c^\markup{C} \bar "|" e^\markup{E} g^\markup{G}  b^\markup{B}
		d^\markup{D}  f^\markup{F}  \bar "|" a^\markup{A} c^\markup{C} e^\markup{E}
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}
inlineScoreScaleSpaces = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c,{
		\clef bass
		\tempo "Bass"
		\cadenzaOn
		g^\markup{G} b^\markup{B} d^\markup{D} f^\markup{F} \bar "|" 
		a^\markup{A} c^\markup{C} e^\markup{E} g^\markup{G} \bar "|" 
		 b^\markup{B} d^\markup{D}  f^\markup{F} \bar "||" 
		s2
		\clef treble
		\tempo "Treble"
		
		g,4^\markup{G}  b^\markup{B} d^\markup{D} \bar "|" 
		f^\markup{F} a^\markup{A} c^\markup{C} e^\markup{E} \bar "|"
		g^\markup{G}  b^\markup{B} d^\markup{D} f^\markup{F}
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}
inlineScoreExerciseTreble = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c''{
		\clef treble
		\cadenzaOn
			c4 e e,g a f c'a f, b c e g'c,a'a,f'd,g'e,c''g,,a f'''d b e
			g,,,c g''a f,d b' c e g e, a f d b c1
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}
inlineScoreExerciseBass = \markup { \general-align #Y #CENTER 
	\score{
		\new Staff \with {\remove Time_signature_engraver}
        	 	{
		\relative c{
		\clef bass
		\cadenzaOn
			c4 g g' e d g,b'f e c'e,,g'd,f'e c,g g'd'
			g,c'c,e'e,,f,a''b,g'e c' a f'd b g g,f'a, g e'd f,e c'a a,b g'e c
			g''e,f a'g, b c,1
			
		\bar "||"
			}
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
      } " "
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneScale = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph {""}
    \paragraph {Shewing the position, and name of the notes.}
    \paragraph{\inlineScoreScale}
  \paragraph{" "}
  \paragraph{
  	  Let the \caps Pupil \normal-text now strike the notes on the instrument; taking notice, 
  	  that the first \caps long \normal-text key, on the left hand, serves for the first F; the
  	  second \caps Long \normal-text key for G; the third for A; and so on: making no other use,
  	  at present, of the \caps short \normal-text keys, than as \caps guides \normal-text 
  	  to direct the eye; by observing, that between B and C, and between E and F, there are 
  	  no \caps short \normal-text keys; which places in the scale are distinguished thus \lower #1.5 \huge \char ##x2040 .
  }
  \paragraph{" "}
  \paragraph{  \huge \bold "Remark on the foregoing Scale."}
  \paragraph{
  	  	The first \caps eight notes \normal-text in the treble-stave from G to G, are the
  	  	\caps same \normal-text as the corresponding \caps eight notes, \normal-text
  	  	perpendicularly under them in the bass-stave, both in \caps name \normal-text and 
  	  	\caps sound \normal-text; they are played, therefore, on the \caps same \normal-text keys. 
  }
  \paragraph{
  	  As a help to memory; let the Pupil contemplate the notes, \caps separately, \normal-text 
  	  on the lines, and spaces; beginning by the \caps five \normal-text lines.
  }
  \paragraph{" "}
  \paragraph{\inlineScoreScaleLines}
  \paragraph{\inlineScoreScaleSpaces}
  \paragraph{" "}
  \paragraph{  \huge \bold "Exercise for treble notes:"}
  \paragraph{\inlineScoreExerciseTreble}
  \paragraph{" "}
  \paragraph{  \huge \bold "Exercise for bass notes:"}
  \paragraph{\inlineScoreExerciseBass}
  \paragraph{" "}
  \paragraph{\bold "N.B." Let the Pupil \caps first \normal-text be familiarized with the notes,
  	  by \caps readily \normal-text naming them; and then find them out as \caps readily \normal-text
  	  on the instrument.
  }
}
}
