\version "2.16.1"
\include "definitions.ily"
\include "articulate.ly"

% LESSON XLIV. Andante Allegretto by Paradies.

global = { \key a \major \time 2/4 }


LessonXLIVUpperOne= \relative c'''{

	c8\rest-2 e,-3 a4-5		| %1
	s2				| %2
	g8\rest-1 cis,8-3 fis4-5	| %3
	s2				| %4
	g8\rest-2 a,8-3 d4-5		| %5
	s2				| %6
	s2				| %7
	s2				| %8
	s2				| %9
	s2				| %10
	s2				| %11
	\staffDown r8 ais,-2[ b-3 fis-1] | %12
	f8\rest b,-3 <e-1>4 _~		| %13
	\stemDown e4 s4 \staffUp	| %14
	\repeat unfold 10 {s2}		| %15-24
	\stemNeutral b''4\rest b8\rest cis,-2 | %25
	cis4-2_( b8-1) e-3		| %26
	e4-3_( dis8-2) fis-4]		| %27
	fis4-3_( e8-2) gis-4		| %28
	gis8-3_([ fis-2) a-3_( gis-2)]	| %29
	\stemUp
	b8-4_([ a-1) cis-3_( b-1)]	| %30
	d!-3_([ cis-2) fis-5_( e-4)]	| %31
	
}
LessonXLIVUpperTwo= \relative c''{
	\noteheadBlue
	<a_1>2 ~  		| %1
	a8 <a_1> <gis_2>4	| %2
	<fis_1>2 ~		| %3
	fis8 <fis_1> <e_2>4	| %4
	<d_1>2 ~		| %5
	d8 d-1 cis4-2		| %6
	d4 cis			| %7
	s2			| %8
	s2			| %9
	r8 \override Beam #'positions = #'(-4.8 . -5.8) \allowFingeringInStaff <cis^2>8_[ \allowFingeringInStaff <d^3> \allowFingeringInStaff <a^1>] | %10
	s2			| %11
	s2			| %12
	s2			| %13
	s2			| %14
	\staffDown \allowFingeringInStaff <e_1>2 | %15
	\staffUp s2		| %16
	s2			| %17
	r8 \once \override Beam #'positions = #'(-4.8 . -5.8) \allowFingeringInStaff <cis'^2>8_[ \allowFingeringInStaff <d^3> \allowFingeringInStaff <a^1>] | %18
	s2 \staffDown \stemUp	| %19
	\revert Beam #'positions 	%\once \override Beam #'positions = #'(-4.8 . -5.8)
	d8\rest ais[ b fis]	| %20
	s2			| %21
	c'8\rest gis s4		| %22
	\once \allowFingeringInStaff
	\stemDown <e_1>2	| %23
	\staffUp s2 \bar "|."	| %24  -Must move one voice to uppers staff for proper double-fermata layout
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\mark \markup { \musicglyph #"scripts.ufermata" }
}
LessonXLIVBUpperThree = \relative c''{
	\noteheadGreen
	cis4. <cis^2>8  			| %1
	\lessScriptPriority
	cis4\trill^\trillThree b8-1_( gis'-5)	| %2
	a,4. a8-1				| %3
	\lessScriptPriority
	a4\trill^\switchFourThree gis8-2_( e'-5)| %4
	fis,4. <fis^2>8				| %5
	\lessScriptPriority
	fis4\trill^\trillThree e8-1_( cis'-5)	| %6
	d,8-1_( b'-5) cis,-2_( a'-5)		| %7
	\override Script #'script-priority = #-100
	cis,4\trill^\trillThree b-1		| %8
	a'4.\prallmordent^\switchFiveFourFive e8\trill\turn | %9
	fis2-5					| %10
	fis4.\prallmordent^\switchFiveFourFive cis8\trill\turn | %11
	d2-5					| %12
	e4.\prallmordent b8\trill\turn		| %13
	cis4.-4 d8-5				| %14
	cis4-4 \staffDown b\trill\turn		| %15
	r16 a[^\p b cis] \staffUp d e fis gis	| %16
	a4.\prallmordent^\switchFiveFourFive e8\trill\turn | %17
	fis2-5					| % 18
	fis4.\prallmordent^\switchFiveFourFive cis8\trill\turn | %19
	d2					| %20
	e4.\prallmordent b8\trill\turn		| %21
	cis4. d8				| %22
	cis4 \staffDown \shiftOff b\trill\turn	| %23
	a2^\markup{\larger \halign #-0.5 "Fine."}| %24
	s2					| %25
	s2					| %26
	s2					| %27
	s2					| %28
	s2					| %29
	\staffUp \stemDown s4 \setFingeringLeft \crossStaff <e'-1> | %30
	\crossStaff { e fis }			| %31
}
LessonXLIVsoprano = { << \LessonXLIVUpperOne \\ \LessonXLIVUpperTwo \\ \LessonXLIVBUpperThree >> }

LessonXLIVLowerOne= \relative c' {
	\noteheadRed
	s2 | %1
	s  | %2
	s  | %3
	s  | %4
	s  | %5
	s  | %6
	<b-1>4 \shape Tie #'((0 . 0.3) (0 . 0.9) (0 . 0.9) (0 . 0)) <a-1> ~ | %7
	<a^3^1>8 <a^1> <gis-2>4	| %8
	r8-5 <e^3> \shape Tie #'((0 . 0.3) (0 . 0.9) (0 . 0.9) (0 . 0)) <a^1>4 ~| %9
	<a-1>4 <fis-2>		| %10
	r8-5 cis8-3 <fis-1>4 ~	| %11
	\stemDown \shiftOn fis4 <d_2> | %12
	s2			| %13
	\stemUp r8 gis-2 a4-1 ~	| %14
	\crossStaff a gis	| %15
	s2			| %16
	a8\rest e-2 <a-1>4 ~	| %17
	<a-1>4 <fis-2>		| %18
	f8\rest cis-3 fis4-1 ~	| %19
	\stemDown fis4 <d_2>	| %20
	\stemUp
	f8\rest b,8-3 e4-1 ~	| %21
	\stemDown
	\shiftOff e4 \stemUp a~	| %22
	a4 gis			| %23
	<e cis a>2 \stemNeutral	| %24
	a,8^\f([ cis e a)]	| %25
	\stemUp
	<a-1>4( <gis-2>)	| %26
	\stemDown b,8-5([ dis-3 fis a)]	| %27
	\stemUp <a^5^3>4( gis-4)| %28
	\stemDown <a cis>4^\markup{\finger \concat {"3" \hspace #0.4 "5"}}^\switchTwoThree <b dis>^4^2 | %29
	\staffUp <e cis>_\markup{\finger 1}_\markup{\center-align \finger \concat {"  3" \hspace #0.4 "2"}} \staffDown \setFingeringLeft <gis,-5 b-3> | %30
	<a cis>4 <ais cis>	| %31
	
}

LessonXLIVLowerTwo= \relative c{
	\noteheadMagenta
	d4\rest <a'^5>		| %1
	<e'^3>4. <e^3>8		| %2
	d,4\rest <fis^5>4	| %3
	<cis'^3>4. <cis^3>8	| %4
	d,4\rest <d^5>		| %5
	<a'^3>4. <a^3>8		| %6
	b8 <gis^3> a <dis,^4>	| %7
	e4. <d!^4>8		| %8
	cis4. <cis^4>8		| %9
	d2-3			| %10
	ais4. ais8-4		| %11
	b2-3			| %12
	gis4.-5 gis8-5		| %13
	\once \override Beam #'positions = #'(-4.2 . -2.7)
	\shiftOff
	fis8-4[ e'-1 fis-2 d-3]	| %14
	b,4\rest e | %15
	\stemNeutral <a a,>2	| %16
	\stemDown \once \override Voice.DynamicText #'extra-offset = #'(-1.9 . 1.9 ) <cis_4>4.\p \once \forceFingeringToStem <cis_4>8	| %17
	<d_3>2			| %17
	\forceFingeringToStem
	<a_5>4. <a_4>8		| %18
	b2_3			| %19
	gis4.-5 gis8-5		| %20
	\once \override Beam #'positions = #'(-4.2 . -2.7) 
	fis8-4[ e'-1 fis-2 d-3]	| %21
	\stemDown b,4\rest e	| %23
	\stemUp a,2		| %24
	\override Staff.RehearsalMark #'direction = #DOWN
	\mark \markup { \musicglyph #"scripts.dfermata" }
	s2			| %25
	\stemNeutral <e''_3>2	| %26
	s2			| %27
	e2			| %28
}

LessonXLIVBreaks = {
	
}
LessonXLIVbass = {<< \LessonXLIVLowerOne \\ \LessonXLIVLowerTwo \\ \LessonXLIVBreaks >> }

\score{ % LESSON XLIV.  Andante Allegretto by Paradies. PRINT
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \clef treble \global \LessonXLIVsoprano }
	  	  \new Staff = "lower" \with { \consists "Mark_engraver" } 
	  	  	{ \clef bass \global \LessonXLIVbass }
	  >>
	  \layout{
	  	  \context {
		    \PianoStaff
		    \consists #Span_stem_engraver
		  }
	  }
}
\score{ % LESSON XLIV.  Andante Allegretto by Paradies. MIDI
	\unfoldRepeats \articulate
	  \new PianoStaff <<
	  	  \new Staff = "upper" { \clef treble \global \LessonXLIVsoprano }
	  	  \new Staff = "lower" { \clef bass \global \LessonXLIVbass }
	  >>
	  \midi {
	  	  \tempo 4=90
	  }
}
