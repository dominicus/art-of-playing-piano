%#(ly:set-option 'old-relative)
\version "2.16.1"

\include "definitions.ily"

LessonXLIIUpperA =  \relative c'' {
	\clef treble
	\key ees \major 
	\time 2/4
	\partial 8
	
	\stemUp bes8
	bes[^( g' f ees])
	ees4-1-3^( d8-2) aes-1
	aes[^( aes' g f])
	f4-3^( ees8) bes
	
	bes[^( bes' aes g])
	g-4[^( e-2 f-3 c'-5])
	bes-4[ as^\switchThreeFive g-5 f-4]
	es4^1^\switchThreeFour^( d8-1-3) r

	\stemNeutral
	r <bes g'>[^(\p-2-5 <aes f'>-1-4 <g ees'>])-1-3
	\stemDown <g ees'>4^(-1-4 <f d'>8)-1-3 r
	\stemNeutral r <c' aes'>-1-5[^(\p <bes g'>-2-5 <aes f'>-1-4])
	<aes f'>4-2-5 <g ees'>8-1-4 \staffDown aes,-2

	\stemUp as[-2 as as as] \stemNeutral \staffUp
	<d' f c'>4^\markup{\tiny ten} \grace es8 
	\override TextScript #'extra-offset = #'(0.9 . -2.2 )
	\once \override Script #'script-priority = #-100
	d4\trill\turn
	\revert TextScript #'extra-offset
	\once \override Script #'script-priority = #-100
	es16 bes c as g8-1 f\trill\turn
	es4 r8 \stemUp bes'\p
	
	bes2^~
	bes4. bes8
	bes2^~
	bes4. bes8
	
	bes2^5^~
	bes8^5[ g-4 as^\switchFiveFour c-5]~
	c s4.
	\stemNeutral ees,!4_( \autoBeamOff d!8) \autoBeamOn <bes' bes'>\ff
	
	<bes bes'> r r4
	r r8 <bes bes'>_\ff
	<bes bes'> r r4
	r r8 <es es'>_\ff
	
	<es es'> \stemUp <es, g>[ <es g> <es as>]
	<es as>[ a a bes]
	<es, c'>4^\markup{\tiny \halign #CENTER ten} \stemNeutral d^\markup{\musicglyph #"scripts.trill"}^\markup{\musicglyph #"scripts.turn"}
	es r8 g\p
	
	\stemUp r8 b^([ d c)]
	r d^([ f ees)]
	g ees^([ d c)]
	bes!4^( a8) f
	
	\stemNeutral f-2[_( g-3) g-2_( a-3])
	a4-2_( bes8-3) g-1
	g-1_([ a-2) a-1_( bes-2)]
	\stemUp b4-3_( c8-4) a!-2 \stemNeutral
	
	a-2_([ bes!-3) bes-2( b-3)]
	\stemUp b-2_([ c-3) c-2_( cis-3)]
	cis-2^([ d-1 ees!-2 e-3)]
	<a, f'>4.-1-4 <c a'>8-2-5
	
	<c aes'>4.-1-4 \stemDown <a' c>8-3-5
	<aes c>4.-1-3 <aes f'>8-1-5
	<aes f'\fermata>4. \stemNeutral f,8\p
	f[^( d' c bes])
	
	\stemUp bes4^( a8) es
	es^([ es' d c])
	c4^( bes8) f
	f^([ f' es d)]
	
	d^([ b c g')]
	f^([ es d c)]
	bes4^( a8) r
	\stemNeutral r <f' d'>\p^([ <es c'> <d bes'>)]
	
	\stemUp <d bes'>4^( <c a'>8) r
	\stemNeutral r <g' es'>\p^([ <f d'> <es c'>)]
	\stemUp <ees c'>4^( <d bes'>8)^[ es,]\ff
	ees[ ees ees ees]
	
	\stemNeutral <a c g'>4^\markup{\tiny \halign #CENTER ten} \grace bes8
	\once \override Script #'script-priority = #-100
	a4^\trill\turn
	bes16 f g es d8 \once \override Script #'script-priority = #-100 c^\trill\turn
	bes4 r
	\stemUp bes'2\ff^~
	
	bes
	as4^( ges)
	\grace {
	\override Flag #'stroke-style = #"grace"
	f16[ as]
	\revert Flag #'stroke-style }
	ges4^( f)
	d'2^~
	
	d4 es^~
	es es,\p _~
	es d
	r <bes bes'>\ff ~
	
	<bes bes'> <as! as'!> ~
	<as as'> \stemDown <as' as'> ~
	<as as'>4. \stemNeutral as8-1\p
	\stemNeutral as-1^([ f'-4 ees-3 des-2)]
	
	des4-3^( c8-2)_[ ges-1]
	ges-1^([ ges'-5 f-4 ees-3])
	ees4-3 ^(des8-2) aes-1
	as^([ as' ges f)]
	
	f-3^([ d!-1 ees-2 bes'-5)]
	aes-4^([ ges-3 f-1 ees-3)]
	des4^\switchTwoFour ^( c8-3)\pp aes-2
	\stemUp aes2-5^~
	
	as4. as8
	as2-5^~
	as4. \staffDown ges,8^\ff
	ges8[ ges ges ges]
	
	\staffUp \stemNeutral <c' es bes'>4^\markup{\tiny \halign #CENTER ten}
	\grace des8 \once \override Script #'script-priority = #-100 c4^\trill\turn
	des16 as bes ges f8^1 \once \override Script #'script-priority = #-100 es^\trill\turn
	<bes' d! f bes>4^\markup{\tiny \halign #CENTER ten} \once \override Script #'script-priority = #-100 d4^\trill\turn
	\stemUp es16 bes ces as g8 \once \override Script #'script-priority = #-100 f^\trill\turn
	
	\stemNeutral <c' e g! c>4\arpeggio r4\fermata
	r8 c,[_( e f])
	aes!4_( g8) r
	r <e des'>-1-5_([ <f c'>-2-5 <e bes'>-1-4)]
	
	<e bes'>4-1-5_( <f as>8-2-4) <b, b'>
	<b b'>4. <b b'>8\p
	<b b'>2 ~
	<b b'>4. <b b'>8\f
	
	<b b'>4. <b b'>8
	<b b'>4^( <a! a'!>8) <c e>\p
	\key c \major
	\stemUp e8^([ c' b a)]
	a4^( gis8) d
	
	d^([ d' c b)]
	b4^( a8) e
	e^([ e' d c)]
	c^([ ais b f')]
	
	e^([ d c b)]
	a4^( gis8) r
	r e'[ gis a]^~
	a[ fis a g!]
	
	r8\p c,[ e f!] ~
	f[ dis e f,!]\ff
	\stemUp f[ f f \stemDown <d' d'>]\p
	<d d'>[ <d d'> <d d'> \stemUp fis,]\ff
	
	fis[ fis fis \stemDown <d' d'>]\p \stemNeutral
	<d d'>4-. <d d'>-.
	<d d'>-. <d d'>-.
	s2
	
	\repeat unfold 2 {s2}
	\key ees \major
	\repeat unfold 2 {s2}
	
	s
	s
	s
	es,8^([ cis d as')]
	
	g^([ f es d)]
	c4_( b8) <g' g'>\ff
	\stemUp <g g'> r r4
	r r8 <g g'>\ff
	
	<g g'> r r4
	r2
	s2
	r4 r8 es
	
	\stemUp r4 r8 a
	a[ a a] <a d>
	d[ d d] <d g>
	g[ g g] <g c>
	
	\stemNeutral c16 aes! g f es8 \once \override Script #'script-priority = #-100 d^\trill\turn
	c4 r8 g
	g^(^[ des' c bes])
	\stemUp bes4^( a8) a
	
	a^([ es'! d c)]
	\stemUp r d[\f d as'!]
	r b[ b f']
	f_[^( <es g,> <d f,> <c ees,>])
	
	d4 c8_[ \lessScriptPriority b]^\trill\turn
	\stemDown b4^( c8) g\rest
	\stemUp ges2^~
	ges4 f^~
	
	f es
	es^( des)
	aes'!2^~
	as4 g!^~
	
	g f
	f^( e)
	\stemUp r <c c'> ~
	<c c'> <c c'> ~
	
	<c c'> <c c'> ~
	<c c'> <c c'> ~
	<c c'>8 <des des'> <des des'>4^~
	<des des'>8 <c c'> <c c'>4^~
	
	<c c'>8 <bes bes'>4 <as as'>8
	<as as'>4^( <g! g'!>8)\noBeam es^\p
	es([ c' bes as])
	as4( g8) des
	
	des([ des' c bes)]
	bes4( as8) es
	es([ es' des c)]
	c(_[ a bes f')]
	
	\stemNeutral es([ des c bes)]
	as4( 
	\once \override  DynamicText #'extra-offset = #'(1.8 . -2.9 )
	\once \override Beam #'damping = #+inf.0
	g8)_\f \staffDown ees,
	s2
	\stemUp as2^~
	
	as8[ as as \staffUp \stemDown as']
	\stemNeutral as2 ~
	as4. f8\p
	es4_( \stemUp \once \override Beam #'damping = #+10 des8) \staffDown f,^\f \stemNeutral
	
	f \staffUp des' c bes
	bes2 ~
	bes8 bes bes bes'
	bes2 ~
	
	bes4. g8
	f4 es8 es
	es f f g
	g4 as8 f
	
	f g g as
	as4 bes8 g
	g as as a
	a bes bes b
	
	b c4 d8^~
	d es4 e8 ~
	e f4 g8 ~
	g as4 b8 ~
	
	b c bes16 as g f
	es4 d8 <bes bes'>
	<bes bes'>4. <d d'>8
	<d d'>4. <bes, bes'>8
	
	<bes bes'>4. <f'' f'>8
	<f f'>2 ~
	<f f'>4. bes,8
	bes g' f es
	
	\stemUp es4 d8 as
	as as' g f
	f4 es8 bes
	bes bes' as g
	
	g e f c'
	bes as g f
	es4 d8 r
	\stemNeutral r <bes g'> <as f'> <g es'>
	
	<g es'>4 <f d'>8 r
	r <c' as'> <bes g'> <as f'>
	<as f'>4 <g es'>8 as,
	as as as as
	
	<d' f c'>4\arpeggio \grace {
	\override Flag #'stroke-style = #"grace"
	es16 
	\revert Flag #'stroke-style }
	d4^\prall\turn
	es16 bes c as g8 f^\prall\turn
	es4 r8 bes
	bes es d g
	
	f es d f
	\times 4/6 { es[ d c bes g f]}
	bes2
	as4.^\prall\turn as8
	
	as f' es d
	bes' as g f
	\stemUp \times 4/6 { es[ d c \staffDown bes as g]}
	f2

  es4^\prall\turn \staffUp r8 bes'
  bes bes' as g
  g e f c
  c c' bes as

  as fis g des
  \stemNeutral des des' c bes
  bes g bes as
  g f b c

  es,4 d!8 g
  g32 bes as g as bes c d es f g f es d c bes
  as8 r r as
  as32 c bes as bes c d es f g as g f es d c

  bes8 r r bes
  bes32 d c bes c d es f g as g f es d c bes
  c d es d c bes as g f g as g f es d c
  \stemUp bes c d es f g as g f es d c \staffDown bes as g f

  es8 <g bes> <g bes> \staffUp g'
  \stemNeutral f4 es8 <g' bes>
  <f c'>2
  <es g>4 s4
  \bar "|."
  }
LessonXLIIUpperB =  \relative c'' {
  \stemDown g8\p
  g2
  as4. s8
  as2
  bes4. s8

  bes2
  c2_~
  c8[ c bes aes]
  g4 f8 s

  \repeat unfold 8 {s2}
  
  r8 bes,( g' es)
  es4_( d)
  r8 as'_([ d, f)]
  f4_( es)

  r8 es_2 g_4 bes,_1
  des_2 b_1 c_1 e_2
  f_1[ c' as f]
  s2

  s
  s
  s
  s

  s8 bes, bes c
  c ees ees d
  c4 s
  s2

  g'4. g8
  g4. g8
  r g[\f f ees]
  d4_( c8) s

  s2
  s
  s
  s

  s
  s
  s
  r8 ees!_\mf es4 _~

  ees8 ees es4_~
  \override Beam #'auto-knee-gap = #3
  es8 s4.
  s2
  d2

  es4. s8
  es2
  f4. s8
  f2
  g2_~
  g8[ g f es]
  d4_( c8) s
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  d4\p^( es)
  f_( es)
  es_( d!)
  f2\ff _~

  f4 ges_~
  ges s
  s2
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  r8 \staffDown \stemUp as,-1[ \staffUp \stemDown \allowFingeringInStaff f'-4^( \allowFingeringInStaff des-2)]

  des4^( c)
  r8 \allowFingeringInStaff ges'-4[ \allowFingeringInStaff c,-1 \allowFingeringInStaff ees-3]
  ees4_( \allowFingeringInStaff des8-2)-\tweak #'stencil ##f \ff s
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  c2
  d4. s8

  d2
  e4. s8
  e2
  f_~

  f8[ f e d]
  c4 b8 s
  s e'\p[ d c]
  b2

  s8 a4.
  gis4. s8
  s2
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  ees8[ ees ees ees]
  ees4 d
  a' g
  d' c

  s2
  s
  s
  s

  s
  c4 b
  g'8 f es4
  s8 s s s

  f4 s
  s2
  \stemUp ges,\ff
  a4 bes

  \stemDown c2
  s
  aes!\ff
  \stemUp b4 c

  \shiftOn d2
  des
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  \staffDown \stemUp s4 es,,
  s2
  s

  s
  s
  s
  s4 f

  \staffUp
  s2
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  \stemDown as'4. s8
  as2
  bes4. s8
  bes2

  c2 ~
  c8 c bes as
  g4 f8 s
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  bes,2
  c
  s

  des
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s
  }

LessonXLIILowerA =  \relative c {
  r8
  \stemNeutral es4 es
  f f
  f f
  g g

  g g
  as as
  as as
  bes4. <bes,, bes'>8^\ff

  <bes bes'> r r4
  r8 a''8-1^([ bes-2)] <bes,, bes'>^\ff
  <bes bes'> r r4
  r8 d''[( es]) \override Stem #'length-fraction = #(magstep -3.5) \once \override TextScript #'extra-offset = #'(-2.8 . 2.1 ) <as,,, as'>\ff
  \revert Stem #'length-fraction

  <as as'>[ <as as'> <as as'> <as as'>]
  \stemDown <as'' d f>4_\markup{\tiny ten} \stemUp <bes f'>
  \stemNeutral g8[ as bes bes,]
  es[ bes es,] r

  r4 \stemUp s
  as'as
  r as
  bes bes

  \stemNeutral r es,
  as aes,_~
  aes \stemUp c'
  g f8 r

  \stemNeutral r8 <g bes>-3-1^([_\p <f as>-4-2 <es g>-5-3])
  <es g>4-4-2^( <d f>8-5-3) r
  r_\p <d f>-5-3^([ <es g>-4-1 <f as>-3-2)]
  <f aes>4-3-2^( <es g>8-4-1) r

  r <des, des'> <des des'> <c c'>
  <c c'> <ces ces'> <ces ces'> <bes bes'>
  <as as'>4^\markup{\tiny \halign #CENTER ten} <bes' f' as>
  es8[ bes es,] r

  r d''^([ g es)]
  r b^([ d c)]
  r c,^([ d es_5)]
  \stemUp s4. a8^\p
  a8^([ bes) bes^( c)]
  c4^( des8) bes
  bes8^([ c) c^( d!)]
  d4^( ees8) c
  c^([ des) des^( d)]
  d^1[ \staffUp \stemDown es_2_( es_3 e_2)]
  ees_4_([ f_3 ges_2 g_1)]
  \staffDown \stemUp s2

  s
  s8 ees, ees4^~
  es4.\fermata r8
  \stemNeutral bes4 bes

  c c
  c c
  d d
  d d

  es es
  es es
  f4. <f, f'>8\ff
  <f f'> r r4

  r8 \staffUp e''^(_[ f)] \staffDown <f,, f'>\ff
  <f f'> r r4
  r8 \staffUp fis''^(_[ g)] \staffDown <es,, es'>
  <es es'>[ <es es'> <es es'> <es es'>]

  <es' a c>4^\markup{\tiny \halign #CENTER ten} \stemUp <f c'>
  \stemNeutral d8[ es f f,]
  bes[ f bes,] r
  r2

  aes''!4^( ges)
  d!^( ees)
  bes2
  r

  <ces, ces'>
  \stemUp s4 ges''
  f2
  des

  ges
  ges
  \stemDown ges4^( f)^~
  f2

  ges
  c
  as
  des

  bes
  bes
  \stemNeutral as4. r8
  r4 \stemUp f

  ges ges
  r4 ges
  \stemNeutral <f as> \stemDown \once \override Beam #'positions = #'(-0.5 . 0.2) <f as>8\ff \stemUp <ges,, ges'>
  \override Beam #'positions = #'(0 . 0) <ges ges'>[ <ges ges'> <ges ges'> <ges ges'>] \revert Beam #'positions

  \stemDown <ges'' c es>4^\markup{\tiny \halign #CENTER ten} \stemUp <as es'>
  \stemNeutral f8[ ges as \stemUp as,]
  \stemDown <as' d! f>4_\markup{\tiny \halign #CENTER ten} \stemUp <bes f'>
  \stemDown ges8[ as bes \stemUp bes,] \stemNeutral

  <bes' e g>4\arpeggio r8\fermata c,\p
  \stemUp r8 aes'![ g f]
  f4^( e8) r
  r bes'_([ as g)]

  g4^( f)
  r8 \stemNeutral <des f>[ <des f>] r
  r <f aes!> <f aes>4 ~
  <f aes> r

  r8 <gis, d'!>[ <gis d'>] r
  <c e>4. r8
  \key c \major
  a4 a
  b b

  b b
  c c
  c c
  d d

  d d
  e4. <e, e'>8\ff
  <e e'>2 ~
  <e e'>4. <e e'>8\ff

  <e e'>2 ~
  <e e'>4. <f f'>8
  <f f'>[ <f f'> <f f'>] r
  r4 r8 <fis fis'>

  <fis fis'>[ <fis fis'> <fis fis'>] r
  r <fis' c'> r <g b>
  r <a c fis> r <b d g>
  \stemNeutral b16 d \staffUp f! aes  b! d f aes!

  f, as b! d f as b! d
  f4 r8\fermata \staffDown \stemUp g,,,^\p
  \key ees \major
  \once \override Beam #'positions = #'(11.3 . 10.3)
  g^([ \staffUp es' d c)]
  \staffDown c4^( b8) f

  \once \override Beam #'positions = #'(11.8 . 10.8)
  f^([ \staffUp f' es d)]
  d4^( c8) \staffDown g
  \once \override Beam #'positions = #'(12.3 . 11.3)
  g^([ \staffUp g' f es^)]
  \staffDown \stemNeutral <f, as>2

  <f as>
  g4. r8
  r <es g>\p^([ <d f> <c es>)]
  \stemUp <c es>4_( <b d>8) r

  r <b d>\p_([ <c es> <d f>)]
  \stemDown <d f>4^( <c es>8) <as as'>^\ff
  \staffUp r4 r8 \staffDown \stemUp bes'
  bes[ bes bes bes]

  bes4 a8 c
  c4 a
  c b
  g2

  as4 g8 g,
  \stemNeutral c g16 es c8 r
  \staffUp \stemDown r4 e''\p
  f \staffDown f, \stemNeutral

  \clef treble fis'4 r8 d
  d[_( as'! g f!)]
  \stemUp r4 a'8\rest aes,!
  s8 \clef bass s s c,

  s2
  s
  r
  \staffUp \stemDown es4 f

  s2
  f
  \staffDown r
  \staffUp f4 g

  g2
  g
  ges\ff
  f\f

  e\mf
  ees\p
  \staffDown \stemUp as,4. \staffUp \stemDown <f' as>8\f
  <es ges>4. <es ges>8

  <des f>4 <d f>
  es4. r8
  \staffDown \stemNeutral <as,, c>4 <as c>
  <bes des> <bes des>

  r4 \stemUp g'
  es es
  r as
  f f

  r f
  \stemNeutral es4. \stemUp s8
  es[ c' bes as]
  d,4\rest es8 f

  \shiftOn ges2_~
  ges4. ges8^~
  ges[ e f as]
  ges4^( f8) s

  \override Rest   #'extra-offset = #'(0 . -4) r2
  \revert Rest #'extra-offset r4 f8 g
  as2 ~
  as4. as8 ~

  as fis g bes
  as4 g8 g
  g as as bes
  bes4 c8 as

  as bes bes c
  c4 des8 bes
  \stemNeutral bes ces ces c
  c des des d

  es4 b
  c \stemUp bes!
  c c
  c g

  \stemNeutral as2
  r8 bes, bes' r
  r <as, as'> <as as'>4 ~
  <as as'>8 <as as'> <as as'>4 ~

  <as as'>8 <as as'> <as as'>4 ~
  <as as'> \clef treble \stemUp c''
  bes as
  g2

  \clef bass \stemNeutral f,4 f
  f f
  g g
  g g

  as as
  as as
  bes4. <bes,, bes'>8
  <bes bes'> r r4

  r8 a'' bes <bes,, bes'>
  <bes bes'> r r4
  r8 d'' es <as,,, as'>
  <as as'> <as as'> <as as'> <as as'>

  <as'' d f>4\arpeggio \stemUp <bes f'>
  \stemNeutral g8 as bes bes,
  es bes es, r
  r2

  r
  r
  r4 f
  \stemUp d'2

  r
  r
  r
  s

  s4 es
  s2
  s
  f

  s
  g
  es
  c

  \stemNeutral bes4. r8
  es,2
  r8 <f' d'> <f d'> r
  f,2

  r8 <g' es'> <g es'> r
  g,2
  as
  bes

  \stemDown es,8 r r bes''
  as4 g8 r
  r2
  r
  }
LessonXLIILowerB =  \relative c' {
	\clef bass
	\key ees \major 
	\time 2/4
	\partial 8
  s8
  s2
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s4 \stemDown as
  s2
  s

  s4 es
  f f
  s f
  g g

  s2
  s
  s4 \stemUp as, \stemDown
  bes4. s8 \stemNeutral

  s2
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  f'2

  f
  r8 f f4
  f2
  r8 f f4

  f2
  f4 s
  s2
  s

  r8 es8 es4^~
  es8_[ es,] es4_~
  es4. s8
  s2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s4 es'
  s2
  s
  s

  s
  s
  s
  s

  s
  \stemDown a,2
  as!
  g!

  <c es>
  es
  es4 des_~
  des2

  es
  es
  f
  f

  ges
  ges
  s
  s4 des

  es es
  s es
  s2
  s

  s4 ges
  s2
  s4 as
  s2

  s
  c,2_~
  c4. c8
  c2

  des
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  <c es>
  <d f>

  <d f>
  <es g>
  <es g>
  s

  s
  s
  s
  s

  s
  s
  <as, as'>8-\tweak #'stencil ##f \ff[ <as as'> <as as'>] as'
  as4 g

  ges2
  f
  fis4 f
  es es

  f s
  s2
  s
  s

  s
  s
  \once \override Beam #'positions = #'(0 . -1.8)
  \stemUp es'8_([ d) c b]
  <c aes'> c,_[ c aes']

  <as c>[ \staffUp \stemDown <f' as>_( <es g> <d f>)]
  <d f>4^( <c es>8) ees\rest
  \staffDown s2
  \staffUp c4_(\p des) \staffDown

  a2
  bes
  s
  \staffUp d!4_(\p es)

  \staffDown b2
  bes!
  a
  aes!

  g
  ges
  f4. s8
  s2

  s
  s
  s
  s

  s4 <bes, des>
  c c
  s <c es>
  des des

  s des
  s4. r8
  r2
  f,8\rest c'4._~

  c2_~
  c8 c4.
  des2_~
  des4. b8\rest

  \revert Rest #'extra-offset s2
  r8 d!4. ~
  d2 ~
  d8 d4.

  es2 ~
  es
  es,
  r8 es es'4

  es,2
  r8 es es'4
  s2
  s

  s
  s4 g
  as e
  f s

  s2
  s
  s
  s

  s
  s4 d'! ~
  d d
  es2

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s4 as,
  s2
  s
  s

  s
  s
  s
  f,4 ~ f

  s2
  s
  s
  r4 g ~

  <g bes>2
  g
  as ~
  as

  bes ~
  bes
  c
  as

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s
  }

\score { {
  \context PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "upper" <<
      \override Staff.TimeSignature   #'style = #'default
      \context Voice=One \LessonXLIIUpperA
      \context Voice=Two \LessonXLIIUpperB
    >>
    \context Staff = "lower" <<
      \override Staff.TimeSignature   #'style = #'default
      \context Voice=One \LessonXLIILowerA
      \context Voice=Two \LessonXLIILowerB
    >>
  >>
}

  \midi {
    \tempo 4 = 66
    }


\layout {}
}


