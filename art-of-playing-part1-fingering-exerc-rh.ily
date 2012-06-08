\version "2.14.2"

\include "definitions.ily"

scoreFingeringExerciseOne = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    %LINE1
		    	    g'8-5[ f-4] e-3[ e-3 d-2 d-2] c4-1 
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	      line-width = 1.6\in 
	    }
	    }
}

scoreFingeringExerciseTwo = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \set Staff.instrumentName = \markup \override #'(baseline-skip . 1.5 ) {\column{ \tiny{ \line{But when the notes re-}\line{-peat too quick for the}\line{same finger, it is then}\line{necessary to change.}}}}
		    	    %LINE1-cont
		    	    g'16-4[ f-3] e-2[ e-3 d-2 d-3] c8-2 
		    	    \bar "|."
		    	    \stemDown
		    	    g'16-4[ f-3] f-4[ e-3 d-2 c-1] c-4[ b-3 a-2 g-1] c8-4  
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.8\in
	      line-width=3.8\in
	      ragged-right = ##t	      
	    }
	    }
}

scoreFingeringExerciseThree = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
		    	     c16-2-3[ c-1-2 d-2-3 d-1-2] e-2-3[ e-1-2 f-2-3 f-1-2] g-2-3[ g a a] b[ b] c8-2-3 
		    	     \bar "|" \noBreak
		    	     c,16-3-4[ c-2-3 c-1-2] e-3-4[ e-2-3 e-1-2] g[ g g] c8-4-5
		    	     \bar "|." \noBreak
		    	     c,16-4[ c-3 c-2 c-1] e-4[ e-3 e-2 e-1] g-4[ g-3 g-2 g-1] c4-4
		    	     \bar "|" \noBreak
		    	     g'16-4[ g-3 a-4 g-3] f-2[ f-3 g-4 f-3] e-2[ e-3 f-4 e-3] d-2[ d-3 e-4 d-3] c4-2
		    	     \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
 
	    }
	    }
}

scoreFingeringExerciseFour = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    r16 bes16-3[ a-2 bes-3] c-4[ c-3 bes-2 c-3] d-4[ d-3 c-2 d-3] ees-4[ ees-3 d-2 ees-3] \stemNeutral 
		    	    \once \override Stem #'transparent = ##t
		    	    f16-4
			    \bar "|." \noBreak
			    r16 f16-3[ a-5 f-3] c-1[ c-3 f-5 c-3] \stemDown a-1[ a-3 c-5 a-3] \stemNeutral 
			    \once \override Stem #'transparent = ##t
			    f16-1
			    \bar "|."  \noBreak 
			    r16 f'16-3[ bes-5 f-3] d-1[ d-3 f-5 d-3] bes!-1[ bes-3 d-5 bes-3] 
			    \once \override Stem #'transparent = ##t
			    f16-1
			    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
 
	    }
	    }
}

scoreFingeringExerciseFive = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
			    r16 ees16-2[ d-1 ees-2] g-4[ g-2 f-1 g-2] \stemDown bes!-4[ bes-2 a-1 bes-2] ees!-4[ ees-2 d-1 ees-2] \stemNeutral 
			    \once \override Stem #'transparent = ##t
			    g16-4
			    \bar "|." \noBreak
			    s32
			    \sameSizeClef \forceClef
			    \key d \major
			    r16 d,16-1[ cis-2 d-1] fis-4[ fis-2 e-1 fis-2] a-4[ a-3 gis-2 a-3] d-5[ d-3 cis-2 d-3] fis4-5
			    \bar "|." \noBreak
			    s32
			    \sameSizeClef \forceClef
			    \set Staff.printKeyCancellation = ##f
			    \set Staff.lastKeySignature = #`()
			    \set Staff.keySignature = #`()
			    \key c \major
			    c,16-1-2[ e-3-4  d-1-2 f-3-4] e-1-2[ g-3-4 f-1-2 a-3-4] 
			    \stemDown g[ bes a c] b-1-2[ d-3-4 c8-2-3] \stemNeutral
			    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
 
	    }
	    }
}

scoreFingeringExerciseSix = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \key bes \major
		    	    bes16-2[ d-4 c-1 ees-3] d-1[ f-3 ees-2 g-4] f-1[ aes-3 g-1 bes-3] a-1[ c-3 bes8-2]
		    	    \bar "|." \noBreak
		    	    s32
		    	    \forceClef \sameSizeClef
		    	    \set Staff.lastKeySignature = #`()
		    	    \set Staff.keySignature = #`()
		    	    \key g \major
		    	    e,16-1[ g-3 fis-2 a-4] g-1[ b-3 a-1 c-3]
		    	    \bar "|." \noBreak
		    	    s32
		    	    \forceClef \sameSizeClef
		    	    \key d \major
		    	    d16-5[ b-3 cis-4 a-2] b-3[ g-1 a-4 fis-2] g-3[ e-1 fis-3 d-1]
		    	    \bar "|." \noBreak
		    	    s32
		    	    \forceClef \sameSizeClef
		    	    \set Staff.lastKeySignature = #`()
		    	    \set Staff.keySignature = #`()
		    	    \key c \major
		    	    c8-1-2[ d-2-3 e-3-4] d-1-2[ e-2-3 f-3-4] e-1-2[ f-2-3 g-3-4] f-1-2[ g-2-3 a-3-4]
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    }
}

scoreFingeringExerciseSeven = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c'{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \key d \major
		    	    d8-1[ e-2 fis-3] e-1[ fis-2 g-3] fis-2[ g-3 a-4] g-1[ a-2 b-3] \stemUp a-1[ b-2 c-3] \stemNeutral
		    	    \bar "|" \noBreak
		    	    b-1[ cis-2 d-3] cis-2[ d-3 e-4] d2-3
		    	    \bar "|." \noBreak
		    	    s32
		    	    \forceClef \sameSizeClef
		    	    \set Staff.lastKeySignature = #`()
		    	    \set Staff.keySignature = #`()
		    	    \key c \major
		    	    d,16-4[ c-3 b-2 c-1] f-4[ e-3 dis-2 e-1] a-4[ g-3 fis-2 g-1] d'-4[ c-3 b-2 c-1]
		    	    \bar "|" \noBreak
		    	    c'4-5
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    }
}

scoreFingeringExerciseEight = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \time 4/4
		    	    g16-3[ fis-2 e-1 fis-2] b-4[ a-3 gis-2 a-1] e'-4[ d-3 cis-2 d-1] g-4[ fis-3 e-2 fis-1]
		    	    \noBreak
		    	    \cadenzaOn
		    	    a4-5
		    	    \bar "|." \noBreak
		    	    \cadenzaOff
		    	    c,16-3[ bes-2 a-1 bes-2] ees-4[ d-3 cis-2 d-1] g-4[ f-3 e-2 f-1] bes4-4
		    	    \bar "|." \noBreak
		    	    bes16-4[ a-3 gis-2 a-5] g-4[ f-3 e-2 f-5] d-4[ c-3 b!-2 c-5] bes-4[ a-3 gis-2 a-5]
		    	    \bar "|" \noBreak
		    	    f4-1
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    }
}

scoreFingeringExerciseNine = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    \time 4/4
		    	    g16-3[ fis-2 e-1 fis-2] b-4[ a-3 gis-2 a-1] e'-4[ d-3 cis-2 d-1] g-4[ fis-3 e-2 fis-1]
		    	    \noBreak
		    	    \cadenzaOn
		    	    a4-5
		    	    \bar "|." \noBreak
		    	    \cadenzaOff
		    	    c,16-3[ bes-2 a-1 bes-2] ees-4[ d-3 cis-2 d-1] g-4[ f-3 e-2 f-1] bes4-4
		    	    \bar "|." \noBreak
		    	    bes16-4[ a-3 gis-2 a-5] g-4[ f-3 e-2 f-5] d-4[ c-3 b!-2 c-5] bes-4[ a-3 gis-2 a-5]
		    	    \bar "|" \noBreak
		    	    f4-1
		    	    \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    }
}

scoreFingeringExerciseTen = \markup { \general-align #Y #CENTER 
   \score {
   	   \new Staff \with { \remove Time_signature_engraver }
	    	     \relative c''{
		    	    \clef treble
		    	    %\cadenzaOn
		    	    \time 3/4
			      c8-3-1[ d32-4 c-3 b-2 c-1] c'8-5  
			      \bar "|." \noBreak
			      c,16-3[ bes-2 a-1 bes-2] g'8-5 
			      \bar "|." \noBreak
			      \set Staff.lastKeySignature = #`()
			      \set Staff.keySignature = #`()
			      d16-3[ cis-2  b-1 cis-2] a'8-5 
			      \bar "|."   \noBreak
			      e16-4[ d-3 cis!-2 d-1] a'8 
			      \bar "|." \noBreak
			      bes,16-2-2[ c-1-1 d-2-3 ees-3-4] f-4-5[ ees-3-4 d-2-3 c-1-1]
			      \once \override Stem #'transparent = ##t
			      bes4-2-2
			      \bar "|." \noBreak
			      ees16-2-2[ f-1-1 g-2-3 aes-3-4] bes-4-5[ aes-3-4 g-2-3 f-1-1] 
			      \once \override Stem #'transparent = ##t
			      ees4-2-2
		    	      \bar "|."
		     }
	  \layout {
	      indent = 0.0\in
	      ragged-right = ##t
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneFingeringRightHand = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{  }
    \paragraph{ \scoreFingeringExerciseOne " " \scoreFingeringExerciseTwo }
    \paragraph{ \scoreFingeringExerciseThree }
    \paragraph{ \scoreFingeringExerciseFour }
    \paragraph{ \scoreFingeringExerciseFive }
    \paragraph{ \scoreFingeringExerciseSix }
    \paragraph{ \scoreFingeringExerciseSeven }
    \paragraph{ \scoreFingeringExerciseEight }
    \paragraph{ \scoreFingeringExerciseNine }
    \paragraph{ \scoreFingeringExerciseTen }
    \paragraph{  }
    \paragraph{  }
    \paragraph{  }
    \paragraph{  }
}
}
