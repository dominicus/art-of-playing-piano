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
    \paragraph{
    	    N.B. When the composer leaves the \caps legato, and \caps staccato to the performer's taste; the best 
    	    rule is, to adhere chiefly to the \caps legato; reserving the \caps staccato to give \caps spirit 
    	    occasionally to certain passages, and to set off the \caps "higher beauties" of the \caps legato.
    }
    \paragraph{" "}
    \paragraph{" "}
}
}
