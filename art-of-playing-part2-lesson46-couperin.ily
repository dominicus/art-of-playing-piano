\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"

% LESSON XLVI.  March by Couperin.

global = { \key aes \major \time 4/4  }

tempoLegend = \markup { \right-align "Un poco Andante."}

LessonXLVIUpper = \relative c''{
	\tempo 4=68 \hideTempo
	\partial 2
	\repeat volta 2 {
	aes4-4( \scriptRightOne g8)\prall^\switchThreeFourThree^\tempoLegend f-1 | %1
	ees2-2 f4-4( \scriptRightOne ees8)\prall^\switchThreeFourThree des-2 |  %2
	c4\prallprall^\switchFourThree \grace {bes8-2} aes4-1 c8-2 des-3 ees-4 f-5 |	%3
	bes,4-2 ees2-4 d4\prallprall\turn^\switchFourThree    	| %4
	ees-4\arpeggio \staffDown \stemUp bes-2 
	\once \override Beam #'damping = #5
	\once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.5 )
	c8-1 \staffUp d-3 ees-4 f-5  				| %5
	\lessScriptPriority
	d4\trill\turn^\switchFourThree ees-4 ees4.\prallprall^\switchFiveFour d!8-3	| %6
	g2-4\arpeggio
	}
	bes,4-2( \scriptRightOne c8)\prallmordent^\switchOneTwoOne des-2	| %7
	\mark \markup { \musicglyph #"scripts.segno" }
	\repeat volta 2 {
	ees2-3 c4-1( \scriptRightOne des8)\prallmordent^\switchTwoOneTwo ees8-3	| %8
	f2-4 des4(-2 \scriptRightOne ees8)\prallmordent^\switchThreeTwoThree f-4	| %9
	ges8-5 f-4 ees des c4-1 f-5	| % 10
	\scriptRightOne d4(\prallprall^\switchFourThreeTwo \grace {c8}
	      bes4) bes'4-5( \scriptRightOne aes8)\prall^\switchThreeFourThree g-2 | % 11
	      f4(-1 g8-3 aes)-4 \grace {aes8-5} g4(-4 \scriptRightOne f8)\prall^\switchThreeFourThree ees-2 	| %12 
	}
}

LessonXLVILowerOne= \relative c {
	\partial 2
	\repeat volta 2{
	d2\rest |  %1
	<aes c ees aes>2\arpeggio des4-2_(  \scriptRightOne c8)\prall^\switchThreeTwoThree bes-4 | %2
	a'2\rest ees-1 ~ | %3
	ees4-1 ees-1 r f | %4
	b,4\rest \stemDown ees \stemUp \ignoreClashNoteOnce aes, f	| %5
	bes4 g aes bes		| %6
	\crossStaff { <g' bes>2\arpeggio }
	} 
	\restRightOne d2\rest	| %7
	\repeat volta 2 {
	\stemDown
	c4-4 des!8 ees \stemUp <f f,>2	| %8
	\stemDown des4-4 ees8 f \stemUp <ges ges,>4 \stemDown f	| %9
	ees4 \stemUp c f f,	| %10
	bes4 bes, \stemDown g''! aes	| %11
	\stemUp bes4 d, ees ees,	| %12
	}
	
}

LessonXLVILowerTwo= \relative c {
	\partial 2
	\repeat volta 2 {
	s2 s1 		| %1-2
	\stemUp
	e4\rest <c^2>2.  	| %3
	\stemDown
	\staffUp bes'2 aes	| %4
	\staffDown \stemUp \crossStaff { <g bes>4\arpeggio } s2. | %5
	s1		| %6
	b,4\rest \stemDown ees
	}
	s2		| %7
	\repeat unfold 5 {s1}	| %8-12
}

LessonXLVILowerThree= \relative c {
	\partial 2
	\repeat volta 2{
	s2 s1 			| %1-2
	\stemDown
	<aes_5>2. <aes_3>4	| %3
	<g_4>2 <f_5>		| %4
	ees2 s2			| %5
	s1			| %6
	ees2
	}
	s2			| %7
	\repeat unfold 2 {s1}	| %8-9
	s2 f'2			| %10
	bes,2 s2		| %11
	bes'2 ees,		| %12
}

LessonXLVILower = {<< \LessonXLVILowerOne \\ \LessonXLVILowerTwo \\ \LessonXLVILowerThree >>}

\score{ % LESSON XLVI.  March by Couperin - PRINT
	  \new PianoStaff <<
	  	    \set PianoStaff.connectArpeggios = ##t
		    \new Staff = "upper" { \clef treble \global \LessonXLVIUpper }
		    \new Staff = "lower" { \clef bass \global \LessonXLVILower }
	  >>
	  \layout{
	  	  \context {
	  	  	  \PianoStaff
	  	  	  \consists #Span_stem_engraver
	  	  }
	  }
}
\score{ % LESSON XLVI.  March by Couperin - MIDI
	\unfoldRepeats \articulate  
	  \new PianoStaff <<
		    \new Staff = "upper" \LessonXLVIUpper
		    \new Staff = "lower" \LessonXLVILower
	  >>
	  \midi {}
}
