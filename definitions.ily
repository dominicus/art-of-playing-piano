\version "2.14.2"

beamUp = \override Beam #'neutral-direction = #1
beamDown = \override Beam #'neutral-direction = #-1
hideTempo = \set Score.tempoHideNote = ##t
preTrill =  \once \override Staff.Script #'outside-staff-priority = #0
trillFour= \markup{\finger{ \concat{ "4" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "3"}}}
trillThree = \markup{\finger{ \concat{ "3" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "2"}}}
trillTwo = \markup{\finger{ \concat{ "2" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "1"}}}
autoLineBreakOff= \override NonMusicalPaperColumn #'line-break-permission = ##f
autoLineBreakOn= \override NonMusicalPaperColumn #'line-break-permission = ##t
ignoreClashNote = \override NoteColumn #'ignore-collision = ##t
hideKeyCancellation = \set Staff.printKeyCancellation = ##f
setProportionalScore = {
		  	\override Score.SpacingSpanner #'strict-note-spacing = ##t
			\set Score.proportionalNotationDuration = #(ly:make-moment 1 16)
}
setProportionalScoreCortchet = {
		  	\override Score.SpacingSpanner #'strict-note-spacing = ##t
			\set Score.proportionalNotationDuration = #(ly:make-moment 1 18)
}
