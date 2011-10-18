\version "2.14.0"

\include "definitions.ily"

LessonIPreludeupper = \relative c'' {
				\clef treble
				\key c \major
				\time 2/4
				r16 c-1[ d-2 e-3] f-1[ g-2 a-3 b-4] |
				c-5[ b-4 a-3 g-2] f-1[ e-3 d-2 c-1] |
				r16 d,-2[ f-2 g-3] b-5[ g-3 f-2 d-1] |
				r16 c-1[ e-2 g-3] c4-5 |
				\bar "|."
}
LessonIPreludelower = \relative c {
				\clef bass
				\key c \major
				\time 2/4
				\set fingeringOrientations = #'(left)
				<<{ 
					\set fingeringOrientations = #'(left)
					<e-2 g-1>2~}
					\\{
					\set fingeringOrientations = #'(left)
					<c-4>~ 
					}>> 
				<<{ <e g> } \\ { c }>> 
				<<{
					\set fingeringOrientations = #'(left)
					<b-4 d-2 g-1> } \\ {
					\set fingeringOrientations = #'(left)
					<g-5> } >> 
				<<{
					\set fingeringOrientations = #'(left)
					<e'-2 g-1> } \\ { 
					\set fingeringOrientations = #'(left)
					<c-3> }>> 
				\bar "|."
}

LessonIModeratoUpper = \relative c'''{
				\clef treble
				\time 4/4
				\key c \major
				\tempo 4 = 100
				\hideTempo
				\repeat volta 2 {
				\set Score.measurePosition = #(ly:make-moment 3 4)
				g8-4\p^\markup\large{"Moderato de "\caps"Mozart"} f-3|
				e4-2 e-2 e-2 e-2 |
				g8-4 f-3 f4-3 r4 f8-3 e-2 |
				d4-1 d-1 d-1 d-1 |
				f-3 e-2 r e8-2\f f-3 |
				g4-4 g-4 g-4 g-4 |
				f4.-3 g8-4 a4-5 f-4|
				e8-3 e-3 e4-3 d8-2 d-2 d4-2 |
				\set Score.measurePosition = #(ly:make-moment 1 4) c-1 e-3 c-1| 
				}
				\repeat volta 2 {
				\set Score.measurePosition = #(ly:make-moment 3 4)
				f8-3\p e-2 |
				d4-1 d d d |
				f-3 e-2 r e-2 |
				f-3 f f f |
				f-3 e-2 r e8-2\f f-3|
				g4-4 g g g |
				f4.-3 g8-4 a4-5 f-4|
				e8-3 e-3 e4-3 d8-2 d-2 d4-2 |
				\set Score.measurePosition = #(ly:make-moment 1 4) c-1 e-3 c-1 |
				}
}
LessonIModeratoLower =  \relative c'{
				\clef bass
				\time 4/4
				\key c \major
				\repeat volta 2 {
				\set Score.measurePosition = #(ly:make-moment 3 4) r4
				c2-1 c-1   g-4 g-4   b-2 b-2
				c-1 c   e,-5 e   f-4 f  g-3 g
				\set Score.measurePosition = #(ly:make-moment 1 4)
				c2-1 c4}
				\repeat volta 2{
				\set Score.measurePosition = #(ly:make-moment 3 4)
				r4    <g b>2-4-2 <g b>
				<g c>-4-1 <g c>    <g b>2-4-2 <g b>   c-1 c-1
				e,-5 e     f-4 f    g-3 g
				\set Score.measurePosition = #(ly:make-moment 1 4)
				c2-1 c4}
}

