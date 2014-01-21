\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"

% LESSON XLVII.  Allegretto by Couperin.

global = { \key f \minor  }

tempoLegend = \markup { \right-align "Più tosto Vivace."}

LessonXLVIIUpper = \relative c''{
	\time 6/8
	\tempo 4=110 \hideTempo
	\partial 8
	\repeat volta 2 {
	f8-2				 %partial
	f8-2^\tempoLegend g f c4-1 f8-2	| %1
	g4.\trill c,4-1 a'8-4		| %2
	g8-3 aes-4 f e\prall^\switchThreeTwoThreeTwo d-1 e-2 | %3
	f8-3 g f c4-1 f8-3		| %4
	f-2 g f  c4-1 f8		| %5
	g4.\trill c,4 aes'8		| %6
	g8 aes f e\prall d e-4		| %7
	\mergeDifferentlyDottedOn
	<<{
		\stemDown f8 c aes-2_~ aes4
	}\\{
		\stemUp s8 <c^3>4^~ \ignoreClashNoteOnce c4
	}\\{
		\stemUp f4.-5 ^~ \shiftOff f4
	}>>
	}
	\repeat volta 2 {
	\stemDown c'8-5			| %8
	c8-4 bes aes  c bes aes		| %9
	\preTrill bes4.\trill^\switchFourThree
	    \grace {aes8-2} g4-1 bes8-3	| %10
	bes8-4 aes g  bes aes g		| %11
	
	}
}

LessonXLVIILower= \relative c {
	\time 6/8
	\partial 8
	\repeat volta 2 {
	
	r8				  %partial
	f4-5 g8-4 aes4-3 f8-5		| %1
	c'4-1 d8-3 ees4-2 f8-1		| %2
	bes,4-4 des!8-2 c4-1 bes8-2	| %3
	aes4-3 g8-4 aes4-3 bes8-2	| %4
	aes4-3 bes8-4 aes4 f8		| %5
	c'4-1 d8-3 e4 f8		| %6
	<<{
		\mergeDifferentlyDottedOn
		s4. c4.			| %7a
		\stemDown f,4. s4	| %8a
	}\\{
		bes4 des8 c4 \stemUp c,8 | %7b
		f4.^( <f f,>4)		| %8b
	}>>
	}
	g8				| %8
	
	\repeat volta 2 {
	<<{
		aes4. aes, \stemDown	| %9a
		ees'4._~ ees4 f8	| %10a
	}\\{
		aes2. \stemUp		| %9b
		ees4 f8 g4 s8		| %10b
	}>>
	e4 d8 e4 c8-5			| %11
	}
}


\score{ % LESSON XLVII.  Allegretto by Couperin - PRINT
	  \new PianoStaff <<
	  	    \set PianoStaff.connectArpeggios = ##t
		    \new Staff = "upper" { \clef treble \global \LessonXLVIIUpper }
		    \new Staff = "lower" { \clef bass \global \LessonXLVIILower }
	  >>
	  \layout{ }
}



\score{ % LESSON XLVII.  Allegretto by Couperin - MIDI
	\unfoldRepeats %\articulate          
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXLVIIUpper
		    \new Staff = "lower" \LessonXLVIILower
	  >>
	  \midi {}
}

