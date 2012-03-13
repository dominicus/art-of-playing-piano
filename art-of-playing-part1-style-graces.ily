\version "2.14.2"

inlineScoreStaccatissimo = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4\staccatissimo e\staccatissimo g,\staccatissimo \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreStaccato = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4\staccato e\staccato g,\staccato \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreTiedStaccato = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4(\staccato e\staccato g,)^\staccato \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreTiedNotes = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	 c4( e g,) \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreArpeggioSign = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
        \remove Clef_engraver
        }
        { \relative c''{
        	
        	\clef treble
        	\cadenzaOn
        	\hideNotes <g b d g>16\arpeggio \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        }
}
inlineScoreArpeggio = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	<g b d g>4\arpeggio \bar "|"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreBaroqueArpeggioSlash = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Collision_engraver

        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	<<{
        		\override NoteHead #'stencil = #(ly:make-stencil(list 'draw-line 0.15 -0.5 -0.4 2 0.4) '(-0.1 . 0.1) '(0.1 . 1))
        		\override Stem #'stencil = ##f
        		b4 s d s
        	}\\{
        		<g, c e> s <g c e g> s
        	}>>	
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreBaroqueArpeggioSlashEquiv = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \consists Span_arpeggio_engraver
        }
        { \relative c''{
        	\set Staff.connectArpeggios = ##t
        	\clef treble
        	\cadenzaOn
        	<<{
        		<c e>4\arpeggio s <d e g>\arpeggio s
        	}\\{
        		<g, b>\arpeggio s <g c>\arpeggio s
        	}>>	
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreCrescendo = \markup { " " \general-align #Y #-1
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
        \remove Clef_engraver
        %fontSize = #-5
        \override DynamicLineSpanner #'staff-padding = #0
 %       \override StaffSymbol #'staff-space = #(magstep -10)
        }
        { \relative c''{
        	
        	\clef treble
        	\cadenzaOn
        	\dynamicDown
        	\hideNotes 
        	b4\< b b\!
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreDecrescendo = \markup { " " \general-align #Y #-1
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
        \remove Clef_engraver
        %fontSize = #-5
        \override DynamicLineSpanner #'staff-padding = #0
 %       \override StaffSymbol #'staff-space = #(magstep -10)
        }
        { \relative c''{
        	
        	\clef treble
        	\cadenzaOn
        	\dynamicDown
        	\hideNotes 
        	b4\> b b\!
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreCrescDecrescendo = \markup { " " \general-align #Y #-1
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Staff_symbol_engraver
        \remove Clef_engraver
        %fontSize = #-5
        \override DynamicLineSpanner #'staff-padding = #0
 %       \override StaffSymbol #'staff-space = #(magstep -10)
        }
        { \relative c''{
        	
        	\clef treble
        	\cadenzaOn
        	\dynamicDown
        	\hideNotes 
        	b4\< b b\!\> b b\!
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}
inlineScoreExampleArpeggioOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "Ex:"
		    	    \clef treble
		    	    \cadenzaOn
		    	    <g c e>1_\markup{\italic "Arp:"} \bar "|" 
		    	    <<{
		    	    	\override NoteHead #'rotation = #'(-30 0 0)
		    	    	\override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    	\override NoteHead #'X-offset =  #-0.1
		    	    	\override NoteColumn #'force-hshift = #-0.95
				d'2 f
			    }\\{
			    	\override NoteHead #'rotation = #'(-30 0 0)
		    	    	\override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    	\override NoteHead #'X-offset =  #-1.36
			    	<b, g><d g,>
			    }>> \bar "|" \noBreak
		    	    <g, c e>1 \bar "||" \stopStaff \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes c2-\markup{\whiteout \pad-markup #0.4 "thus"} b2 \unHideNotes
		    	    \startStaff
		    	    \sameSizeClef \forceClef
		    	    \repeat unfold 2{g8[ c e c]} \bar "|" \noBreak
		    	    g[ b d b] g[ d' f d]\bar "|" \noBreak
		    	    \repeat percent 2{ g,[ c e c]} \bar "||" \noBreak
		    	    \stopStaff
		    	    \override TextScript #'extra-offset = #'(1 . 4.55)
		    	    \hideNotes f2_\markup{\whiteout \pad-markup #0.2 "  or"}_\markup{\whiteout \pad-markup #0.2 "thus"} f2 \unHideNotes \noBreak
		    	    \startStaff
		    	    \sameSizeClef \forceClef
		    	    \repeat percent 2{e8[ c g c]} \bar "|" \noBreak
		    	    d[ b g b] f'[ d g,d'] \bar "|" \noBreak
		    	    \repeat percent 2{e[ c g c]} \bar "||"
		     }
	  \layout {
	      indent = 0\in
	      ragged-right = ##f
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneStyleGraces = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{
    	    The best general rule, is to keep down the keys of the instrument, the \caps "full length" of very note;
    	    for when the contrary is required, the notes are marked either thus: \inlineScoreStaccatissimo " " called in 
    	    \caps "Italian, staccato;" denoting \caps "distinctness," and \caps shortness of sound; which is produced 
    	    by lifting the finger up, as soon as it has struck the key: or they are marked thus \inlineScoreStaccato which, 
    	    when composers are \caps exact in their writing, means \caps less staccato than the preceding mark; the finger, 
    	    therefore, is kept down somewhat longer: or thus \inlineScoreTiedStaccato which means \caps "still less" 
    	    staccato: the nice degrees of \caps more and \caps less, however, depend on the \caps character, and 
    	    \caps passion of the piece; the \caps style of which must be \caps "well observed" by the performer.  The 
    	    notes marked thus \inlineScoreTiedNotes called \caps legato in Italian, must be played in a \caps smooth and 
    	    \caps close manner; which is done by keeping down the first key, 'till the next is struck; by which means, the 
    	    strings \caps "vibrate sweetly" into one another.
    }
    \paragraph{" "}
    \paragraph{
    	    N.B. When the composer leaves the \caps legato, and \caps staccato to the performer's taste; the best 
    	    rule is, to adhere chiefly to the \caps legato; reserving the \caps staccato to give \caps spirit 
    	    occasionally to certain passages, and to set off the \caps "higher beauties" of the \caps legato.
    }
    \paragraph{" "}
    \paragraph{ 
    	    This mark \inlineScoreArpeggioSign prefixed to a chord \inlineScoreArpeggio signifies, that the notes must be played 
    	    \caps successively, from the lowest; with more or less velocity, as the sentiment may require; keeping each note 
    	    \caps down 'till the time of the chord be filled up.
    }
    \paragraph{" "}
    \paragraph{
    	    Chords marked thus \inlineScoreBaroqueArpeggioSlash are played as the preceding chords, with the addition of a note \caps where the oblique line is put, 
    	    as if written thus \inlineScoreBaroqueArpeggioSlashEquiv but the additional note is not to be kept down.
    }
    \paragraph{" "}
    \paragraph{
    	    \italic Dolce or \italic dol: means \caps sweet, with \caps taste; now and then \caps swelling some notes.
    }
    \paragraph{
    	    \italic Piano or \italic Pia: "or " \dynamic p , \caps soft.
    }
    \paragraph{
    	    \italic Mezzo, or \italic mez: or \italic "mezzo-piano," or \italic poco \dynamic p, or \italic "poc:P," \caps "rather soft."
    }
    \paragraph{
    	    \italic Pianissimo, or P \super mo or \dynamic pp, \caps "very soft."
    }
    \paragraph{
    	    \italic Fortissimo, or F \super mo or \dynamic ff, \caps "very loud."
    }
    \paragraph{
    	    \italic Forte, or \italic For: or \musicglyph #"f", \caps "loud."
    }
    \paragraph{
    	    \italic "Mezzo " \musicglyph #"f", or \italic "Mez:" \musicglyph #"f", \caps "rather loud."
    }
    \paragraph{
    	    \italic "Forzando," or \italic "sforzando" \dynamic fz, or \dynamic sf, 
    	    to \caps "force," or give emphasis to, \caps one note.
    }
    \paragraph{
    	    \italic "Rinforzando, " or \italic rinf: to \caps swell 2, 3, or 4 notes.
    }
    \paragraph{
    	    \italic "Crescendo, " or \italic cres: marked sometimes thus \inlineScoreCrescendo means \caps "gradually louder."
    }
    \paragraph{
    	    \italic "Decrescendo, " or \italic decres: \caps "gradually softer;" the same as the following; viz:
    }
    \paragraph{
    	    \italic Diminuendo, or \italic dim: thus \inlineScoreDecrescendo \caps "gradually softer. "  N.B. this last mark 
    	    \inlineScoreDecrescendo often denotes an \caps emphasis, where it is \caps widest, and then \caps diminishing.
    }
    \paragraph{
    	    This mark \inlineScoreCrescDecrescendo means to \caps swell and \caps diminish.	    
    }
    \paragraph{" "}
    \paragraph{
    	    \caps Arpeggio, or \caps Arpeggiato, requires that the notes of a \caps chord shall be played successively; which 
	    may be done in various ways.	    
    }
    \paragraph{" "}
    \paragraph{\inlineScoreExampleArpeggioOne}
    \paragraph{" "}
}
}
