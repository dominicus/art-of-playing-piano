\version "2.16.1"
\include "definitions.ily"

% LESSON XLIV. Andante Allegretto by Paradies.

global = { \key a \major \time 2/4 }

LessonXLIVUpperOne= \relative c'''{
	\ignoreClashNote
	\override Staff.BarLine #'allow-span-bar = ##f
	b8\rest-2 e,-3 a4-5		| %1
	s2				| %2
	g8\rest-1 cis,8-3 fis4-5	| %3
	s2				| %4
	g8\rest-2 a,8-3 \once \override Stem #'length-fraction = #(magstep -2.2) d4-5 | %5
	s2				| %6
	s2				| %7
	s2				| %8
	s2				| %9
	s2				| %10
	s2				| %11
	\staffDown r8 ais,-2[ b-3 fis-1] | %12
	f8\rest b,-3 e4-1 _~		| %13
	\stemDown e4 s4 \staffUp	| %14
	\repeat unfold 10 {s2 |} \bar "|." %15-24
	\stemNeutral b''4\rest b8\rest cis,-2 | %25
	cis4-2_( b8-1) e-3		| %26
	e4-3_( dis8-2) fis-4]		| %27
	fis4-3_( e8-2) gis-4		| %28
	gis8-3_([ fis-2) a-3_( gis-2)]	| %29
	\stemUp
	b8-4_([ a-1) cis-3_( b-1)]	| %30
	d!-3_([ cis-2) fis-5_( e-4)]	| %31
	\grace e16-4 dis8-3 cis16 dis b8-1 fis' | %32
	fis8([ e) e( a)]		| %33
	<a dis,>4( <e gis>8) fis	| %34
	fis8([ e) e( a)]		| %35
	<a dis,>4( <e gis>8) fis	| %36
	fis8( e)  e( dis)		| %37
	\grace e16 dis8 cis16 b e8 a,	| %38
	gis4 fis\trill			| %39
	e4 b'8\rest fis\p		| %40
	fis8_([ e) e_( a)]		| %41
	<a dis,>4( <gis e>8) fis	| %42
	fis8_([ e) e_( a)]		| %43
	<a dis,>4( <gis e>8) fis	| %44
	fis8_([ e) e_( dis)]		| %45
	\grace e16 dis8 cis16 b \once \override Beam #'positions = #'(0.6 . 0.4) e8 \staffDown a, | %46
	\once \override NoteColumn #'force-hshift = #-0.5 gis4 fis\trill | %47
	e4 \staffUp \stemNeutral e''16 \f d!16 cis16 \trill b16   %48
        _\markup { \halign #-1.3 \raise #-4 \abs-fontsize #11  \override #'( baseline-skip . 2.2 ) \column { \halign #-1 "D.C."  \concat { "sin'" \hspace #0.3 "al  " \raise #0.8 \halign #-0.5 \musicglyph #"scripts.ufermata" } } } 
	\bar "|." 
	s2 \bar "||"			| %49
	b4\rest b8\rest a		| %50
	\grace a8-3 gis4.-2 bis8-4	| %51
	\hideAccidental \grace bis8-4 cis4.-5 g8-1 | %52
	\hideAccidental \grace g-1 fis4.-2 ais8-4  | %53
	\hideAccidental \grace ais8-4 b4.-5 fis8-2 | %54
	eis8-1_([ gis) fis_( a!)]	| %55
	gis8_([ b) a_( cis)]		| %56
	a4\trill gis			| %57
	b4\rest b8\rest \stemUp e	| %58
	e4( d)				| %59
	d4\rest e8\rest d		| %60
	d4( cis) ~			| %61
	cis8 cis b4			| %62
	b8\rest b[ a gis]		| %63
	a4 gis\trill			| %64
	fis2				| %65
	b4\rest b8\rest e,-\tweak #'stencil ##f \p | %66
	e4( d)				| %67
	b'4\rest d8\rest d,		| %68
	d4( cis)			| %69
	c8\rest cis b4			| %70
	b8\rest b[ a gis]		| %71
	a4 gis\trill			| %72
	\staffDown fis \staffUp \grace b'16 a16\f[ gis a b] | %73
	\bar "|."
	
}
LessonXLIVUpperTwo= \relative c''{
	\ignoreClashNote
	<a_1>2 ~  		| %1
	a8 <a_1> <gis_2>4	| %2
	<fis_1>2 ~		| %3
	fis8 <fis_1> <e_2>4	| %4
	<d_1>2 ~		| %5
	d8 d-1 cis4-2		| %6
	d4 cis			| %7
	s2			| %8
	s2			| %9
	r8 \override Beam #'positions = #'(-4.8 . -5.8) \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 0.5 ) <cis^2>8_[ \allowFingeringInStaff <d^3> \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.5 ) <a^1>] | %10
	s2			| %11
	s2			| %12
	s2			| %13
	s2			| %14
	\staffDown \allowFingeringInStaff <e_1>2 | %15
	\staffUp s2		| %16
	s2			| %17
	r8 \once \override Beam #'positions = #'(-4.8 . -5.8) \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 0.5 ) <cis'^2>8_[ \allowFingeringInStaff <d^3> \allowFingeringInStaff \once \override Voice.Fingering #'extra-offset = #'(0.0 . 1.5 ) <a^1>] | %18
	s2 \staffDown \stemUp	| %19
	\revert Beam #'positions
	d8\rest ais[ b fis]	| %20
	s2			| %21
	c'8\rest gis s4		| %22
	\once \allowFingeringInStaff
	\stemDown <e_1>2	| %23
	\staffUp s2		| %24  -Must move one voice to uppers staff for proper double-fermata layout
	\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
	\mark \markup { \musicglyph #"scripts.ufermata" }
	s2			| %25
	s2			| %26
	s2			| %27
	s2			| %28
	s2			| %29
	s2			| %30
	s2			| %31
	s2			| %32
	s2			| %33
	\shiftOn b''2		| %34
	s2			| %35
	b2			| %36
	\repeat unfold 36 {s2 |} %37-73
}
LessonXLIVBUpperThree = \relative c''{
	%\noteheadGreen
	\ignoreClashNote
	\once \override Stem #'length-fraction = #(magstep -2)
	cis4. cis8^2  			| %1
	\lessScriptPriority
	\once \override Stem #'length-fraction = #(magstep -2)
	cis4\trill^\trillThree b8-1_( gis'-5)	| %2
	\once \override Stem #'length-fraction = #(magstep -2.2)
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
	fis4. a8				| %32
	a8_([ gis) gis_( fis)]			| %33
	fis4_( e8) a				| %34
	a8_([ gis) gis_( fis)]			| %35
	fis4_( e8) a				| %36
	a_( gis) gis_( fis)			| %37
	fis4 e					| %38
	e4 dis					| %39
	s2					| %40
	s2					| %41
	\staffDown \stemUp b2			| %42
	s2					| %43
	b2					| %44
	s2					| %45
	s2					| %46
	s2					| %47
	s2					| %48
	s2					| %49
	s2					| %50
	s2					| %51
	s2					| %52
	s2					| %53
	s2					| %54
	s2					| %55
	s4  \staffUp \stemDown fis'		| %56
	fis4 eis				| %57
	s4. cis'8				| %58
	cis8([ ais) b( fis)]			| %59
	e4 g8\rest b				| %60
	b8([ gis) a( e)]			| %61
	d4. d8					| %62
	cis8 eis fis4 _~			| %63
	fis4 eis				| %64
	s2					| %65
	s4. cis8-\tweak #'stencil ##f \p	| %66
	cis8[ ais b \staffDown \stemUp fis]	| %67
	e4 \staffUp d'8\rest \stemDown b 	| %68
	b[ \staffDown \stemUp gis a e]		| %69
	d4. d8					| %70
	cis8 eis fis4 ~				| %71
	fis4 eis				| %72
	s2					| %73	
}


nbr = \noBreak
br = \break
LessonXLIVBreaks = {
	s2 \repeat unfold 6 { \nbr s2 } \br  %System1
	s2 \repeat unfold 8 { \nbr s2 } \br  %System2
	s2 \repeat unfold 8 { \nbr s2 } \br  %System3
	s2 \repeat unfold 7 { \nbr s2 } \br  %System4
	s2 \repeat unfold 7 { \nbr s2 } \br  %System5
	s2 \repeat unfold 7 { \nbr s2 } \br  %System6
	s2 \repeat unfold 7 { \nbr s2 } \br  %System7
	s2 \repeat unfold 7 { \nbr s2 } \br  %System8
	s2 \repeat unfold 7 { \nbr s2 } \br  %System9
}

LessonXLIVsoprano = { << \LessonXLIVUpperOne \\ \LessonXLIVUpperTwo \\ \LessonXLIVBUpperThree \\ \LessonXLIVBreaks >> }

LessonXLIVLowerOne= \relative c' {
	%\noteheadRed
	\ignoreClashNote
	s2 			| %1
	s  			| %2
	s  			| %3
	s  			| %4
	s  			| %5
	s  			| %6
	<b-1>4 \shape Tie #'((0 . 0.3) (0 . 0.9) (0 . 0.9) (0 . 0)) <a-1> ~ | %7
	<a^3^1>8 a^1 <gis-2>4	| %8
	r8-5 <e^3> \shape Tie #'((0 . 0.3) (0 . 0.9) (0 . 0.9) (0 . 0)) <a^1>4 ~| %9
	<a-1>4 <fis-2>		| %10
	r8-5 cis8-3 fis4-1 ~	| %11
	\stemDown \shiftOn fis4 <d_2> | %12
	s2			| %13
	\stemUp r8 gis-2 a4-1 ~	| %14
	\crossStaff a gis	| %15
	s2			| %16
	a8\rest <e-2> <a-1>4 ~	| %17
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
	b2 ~			| %32
	b4 d,4\rest		| %33
	b'2 ~			| %34
	b4 d,4\rest		| %35
	b'2 ~			| %36
	b4 d,4\rest		| %37
	a'4 gis8 a		| %38
	b2			| %39
	e,4 d8\rest a'		| %40
	a([ gis) gis( fis)]	| %41
	\shiftOn fis4 \once \override Beam #'positions = #'(-1.8 . -1) e8 a | %42
	\once \override Beam #'positions = #'(0.2 . -1)	\shiftOff a([ gis) gis( fis)]	| %43
	\shiftOn fis4 \once \override Beam #'positions = #'(-1.8 . -1) e8 a | %44
	\once \override Beam #'positions = #'(0.2 . -1)	\shiftOff a([ gis) gis( fis)]	| %45
	fis4 \stemUp e _~	| %46
	\stemDown \shiftOn e4 dis | %47
	s2			| %48
	s2			| %49
	\stemUp r8 cis' d4	| %50
	r8 bis cis4		| %51
	r8 ais cis4		| %52
	r8 ais b4		| %53
	r8 gis b4 ~		| %54
	b4 a			| %55
	\once \override NoteColumn #'force-hshift = #-0.4
	eis4 fis		| %56
	cis'4. b8		| %57
	r8 cis fis4 ~		| %58
	fis4 e\rest		| %59
	r8 b e4 ~		| %60
	e4 e\rest		| %61
	s2			| %62
	s2			| %63
	\once \override Stem #'no-stem-extend = ##t
	\once \override Stem #'length-fraction = #(magstep -2.5)
	\stemDown cis2 ~	| %64
	\shiftOff cis		| %65
	a8\rest^\markup{ \column{ \musicglyph #"p" \vspace #0.1 } } \stemUp cis, fis4 ~ | %66
	\stemDown fis4 f\rest	| %67
	\stemUp \once \override Voice.Rest #'extra-offset = #'(1.2 . 0.1 ) b,8\rest b \stemDown e4 ~ | %68
	e4 c\rest		| %69
	s2			| %70
	s2			| %71
	cis2 _~			| %72
	cis2			| %73	
}

LessonXLIVLowerTwo= \relative c{
	%\noteheadMagenta
	\ignoreClashNote
	d4\rest <a'^5>		| %1
	<e'^3>4. <e^3>8		| %2
	d,4\rest <fis^5>4	| %3
	<cis'^3>4. <cis^3>8	| %4
	d,4\rest <d^5>		| %5
	<a'^3>4. <a^3>8		| %6
	b8 <gis^3> a <dis,^4>	| %7
	e4. <d!^4>8		| %8
	cis4. <cis^4>8		| %9
	<d_3>2			| %10
	ais4. ais8-4		| %11
	<b_3>2			| %12
	gis4.-5 gis8-5		| %13
	\once \override Beam #'positions = #'(-4.2 . -2.7)
	\shiftOff
	fis8-4[ e'-1 fis-2 d-3]	| %14
	\once \override  Voice.Rest #'extra-offset = #'( 0.6 . 0 )
	c,4\rest e | %15
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
	s2			| %29
	s2			| %30
	s2			| %31
	s2			| %32
	s2			| %33
	s2			| %34
	s2			| %35
	s2			| %36
	s2			| %37
	s2			| %38
	s2			| %39
	s2			| %40
	s2			| %41
	\stemDown b2 _~		| %42
	b4 r			| %43
	b2 _~			| %44
	b4 r			| %45
	a4 gis8 a		| %46
	b2			| %47
	\once \override  Voice.Tie #'transparent = ##t
	e,2 ~ \hideNotes	| %48
	e2 \unHideNotes 	| %49  %-----holding the note for spacing only
	fis'2			| %50
	eis2			| %51
	e!2			| %52
	dis2			| %53
	d!2			| %54
	cis2			| %55
	cis2			| %56
	cis2			| %57
	ais'4. ais8		| %58
	b4. a!8			| %59
	gis4. gis8		| %60
	a4. gis8		| %61
	fis4 gis		| %62
	eis8[ cis' d b]		| %63
	\once \override Voice.Rest #'extra-offset = #'(0.5 . 0)
	b,4\rest cis		| %64
	fis2			| %65
	ais,4.-\tweak #'stencil ##f \p ais8	| %66   %------ piano for midi
	b4. a8			| %67
	gis4. gis8		| %68
	a4. gis8		| %69
	fis4 gis		| %70
	eis8[ cis' d b]		| %71
	\once \override Voice.Rest #'extra-offset = #'(0.8 . 0.0 )
	c,4\rest cis		| %72
	fis2_\markup{ \halign #-2.2 \raise #-6 \override #'(baseline-skip . 1.8)  \abs-fontsize #11 \column{ \halign #-1 \concat{ "D.C." \hspace #0.3 "sin'" } "al  Fine." } } | %73
}

LessonXLIVbass = {<< \LessonXLIVLowerOne \\ \LessonXLIVLowerTwo >> }
