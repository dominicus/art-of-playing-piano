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
	    \score {
	    	    \new Staff
		    {  
		    	    \time 4/4
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes 
		    	    \override TextScript #'extra-offset = #'(1 . 6.5)
		    	    c''64-\markup{\whiteout \pad-markup #0.5 "or"}
		    	    c''64
		    	    \time 2/2
		    	     c''64
			}
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    } "  "	   
}
inlineScoreSimpleCommonExample = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
		    {  
		    	    \set Staff.instrumentName = #'"Example"
		    	    \time 4/4
		    	    \clef treble
		    	    \hideNotes 
		    	    \override TextScript #'extra-offset = #'(1 . 5.6)
		    	    c''64-\markup{\whiteout \pad-markup #0.5 "or"}
		    	    c''64
		    	    \time 2/2
		    	    c''64
		    	     \unHideNotes
		    	     \set Timing.measureLength = #(ly:make-moment 4 4)
		    	     c''1 \noBreak
		    	     c''2 c''2 \noBreak
		    	     c''2. c''4 \noBreak
		    	     c''8[ c''8 c''8 c''8] c''4 c''4 \noBreak
		    	     \cadenzaOn
		    	     c''1   \bar "||"
			}
	  \layout {
	      indent = 0.5\in
	      ragged-right = ##t
	    }
	    }	   
}
inlineScoreSimpleTwoFourths = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
		    {  
		    	    \time 2/4
		    	    \clef treble 
		    	    \hideNotes c''4
			}
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    } "  "	   
}
inlineScoreSimpleTwoFourthsExample = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
		    {  
		    	    \set Staff.instrumentName = #'"Example"
		    	    \time 2/4
		    	    \clef treble
		    	     c''2 \noBreak
		    	     c''4 c''4 \noBreak
		    	     c''4. c''8 \noBreak
		    	     c''16[ c''16 c''16 c''16] c''8[ c''8] \noBreak
		    	     c''2   \bar "||"
			}
	  \layout {
	      indent = 0.5\in
	      ragged-right = ##t
	    }
	    }	   
}

inlineScoreTwelveEigthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
	    	    	    \setProportionalScore
		    	    \set Staff.instrumentName = \markup{"1" \super "st" " sort"}
		    	    \relative c''{
		    	    	    \time 12/8
		    	    	    \clef treble
		    	    	    c1. \noBreak
		    	    	    c2. c4. c \noBreak
		    	    	    c4. c4 \autoBeamOff c8 c[ c c] c4. 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column {\left-align \general-align #Y #-1.3 \smaller " containing 12 quavers in a" 
	 \general-align #Y #-1 \line{\smaller "  bar, or their equivalent"}
}	   
}
inlineScoreSixEigthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \set Staff.instrumentName = \markup{"2" \super "d" " sort"}
		    	    \relative c''{
		    	    	    \time 6/8
		    	    	    \clef treble
		    	    	    c2. \noBreak
		    	    	    c4. c4 c8 \noBreak
		    	    	    \autoBeamOff c8[ c c] c4. 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column {\left-align \general-align #Y #-1.3 \smaller " six quavers in a bar, or" 
	 \general-align #Y #-1 \line{ \smaller "  their equivalent"}
}	   
}
inlineScoreTwelveFourthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \set Staff.instrumentName = \markup{"3" \super "d" " sort"}
		    	    \relative c''{
		    	    	    \time 12/4
		    	    	    \clef treble
		    	    	    c1. c1. \noBreak
		    	    	    c2 c4 c c c c2. c2. \noBreak 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column {\left-align \general-align #Y #0 \smaller " 12 crotchets in a bar, etc."}	   
}
inlineScoreSixFourthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \set Staff.instrumentName = \markup{"4" \super "th" " sort"}
		    	    \relative c''{
		    	    	    \time 6/4
		    	    	    \clef treble
		    	    	    c2. c2 c4 \noBreak
		    	    	    \repeat unfold 6 {c4} \noBreak 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column {\left-align \general-align #Y #0 \smaller " 6 crotchets in a bar, etc."}	   
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
    	\caps Simple common time, when marked thus \inlineScoreSimpleCommon denotes, that each bar 
    	contains one semibreve, or its equivalent.
    }
    \paragraph{
    	    \inlineScoreSimpleCommonExample
    }
    \paragraph{
    	When marked thus \inlineScoreSimpleTwoFourths the bar contains one minim, or its equivalent.	    
    }
    \paragraph{
    	    \inlineScoreSimpleTwoFourthsExample
    }
    \paragraph{" "}
    \paragraph{
    	Four sorts of \caps compound common time explained:	    
    }
    \paragraph{
    	\inlineScoreTwelveEigthsCompound	    
    }
    \paragraph{
    	    \inlineScoreSixEigthsCompound
    }
    \paragraph{
    	    \inlineScoreTwelveFourthsCompound
    }
    \paragraph{
    	    \inlineScoreSixFourthsCompound
    }
    \paragraph{The two last sorts are very seldom used in modern music.}
    \paragraph{" "}
    \paragraph{"                             " \caps Simple triple time explained.}
    \paragraph{" "}
}
}
