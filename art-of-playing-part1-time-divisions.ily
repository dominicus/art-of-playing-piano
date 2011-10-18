\version "2.14.2"


inlineScoreBarExample = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \cadenzaOn
		    	    \hideNotes c''4 \bar "|" c
			}
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    } "  "	   
}
inlineScoreSimpleCommon = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff
		    {  
		    	    \time 4/4
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes c''64-\markup{\whiteout \general-align #Y #-4 "or"}
		    	    \time 2/2
		    	    c''64
			}
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-0.5 " Which are equal to" }	   
}
inlineScoreQuavers = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = #"8 Quavers"
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''2 c''8} \unHideNotes 
		    	    \autoBeamOff 
		    	    c''8 c''8 c''8[ c''8] c''8[ c''8 c''8 c''8] { \hideNotes c''2 \unHideNotes} 
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-0.5 " Which are equal to" }	   
}
inlineScoreSemiQuavers = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = #"16 semi-quavers"
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''2 } \unHideNotes 
		    	    \autoBeamOff 
		    	    c''16 c''16 c''16[ c''16] 
		    	    \repeat unfold 3 {c''16[ c''16 c''16 c''16]} { \hideNotes c''2 \unHideNotes} 
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-0.5 " Which are equal to" }	   
}
inlineScoreDemiSemiQuavers = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = \markup{\column {"32 demisemi-" "   quavers"}}
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''4 } \unHideNotes 
		    	    \autoBeamOff 
		    	    c''32 c''32 c''32[ c''32] 
		    	    \repeat unfold 7 {c''32[ c''32 c''32 c''32]} { \hideNotes c''4 \unHideNotes} 
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	     % ragged-right = ##t
	    }
	    } "  "
	}
	\column {
		\left-align
		\general-align #Y #-0.5
		\transparent 
		" Which are equal to" }	   
}

inlineScoreDottedMinim = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemUp
        	c''2. 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreDottedCrotchetRest = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \remove Staff_symbol_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemUp
        	r4.
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        }
}
inlineScoreCrotchetQuaverRests = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \remove Staff_symbol_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemUp
        	d''4\rest d8\rest
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreDoubleDottedCrotchet = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	c''4..
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTie = \markup { \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \remove Staff_symbol_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\hideNotes
        	a4^( f a^)
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreDottedMinimDown = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemDown
        	c''2. 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTiedMinimCrotchet = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\stemDown
        	c2~c4 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTiedCrotchets = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\stemDown
        	c4~c~c \bar "||" 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreDoubleDottedMinim = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	c''2..
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTiedMinimCrotchetQuaver = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\stemDown
        	c2~c4~c8 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneTimeAndItsDivisions = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph {
    	The \caps bar, made thus \inlineScoreBarExample divides a musical composition into \caps equal
    	portions of time.
    }
    \paragraph {
    	\caps Time is divided into two sorts; \caps common and \caps triple; and of which is either
    	\caps simple or \caps compound: and the character or sign, which denotes it, is placed at
    	the beginning of every composition, after the clef. 
    }
    \paragraph{
    	\caps Simple common time, when marked thus \inlineScoreSimpleCommon	    
    }
     \paragraph{" "}
}
}
