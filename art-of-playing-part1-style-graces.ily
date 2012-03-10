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
    \paragraph{" "}
}
}
