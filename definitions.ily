\version "2.14.2"

forceClef = \set Staff.forceClef = ##t
sameSizeClef = \override Staff.Clef #'full-size-change = ##t
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

%{
	Function to shorten slurs
%}
shapeSlur = #(define-music-function (parser location offsets) (list?)
    #{
        \override Slur #'control-points = #(alter-slur-curve $offsets)
    #})

#(define ((alter-slur-curve offsets) grob)
    ;; get default control-points
    (let ((coords (ly:slur::calc-control-points grob))
        (n 0))
    ;; add offsets to default coordinates
    (define loop (lambda (n)
        (set-car! (list-ref coords n)
            (+ (list-ref offsets (* 2 n))
                (car (list-ref coords n))))
        (set-cdr! (list-ref coords n)
            (+ (list-ref offsets (1+ (* 2 n)))
                (cdr (list-ref coords n))))
        (if (< n 3)
            (loop (1+ n)))))
    ;; return altered coordinates
    (loop n)
    coords))
%{
	%%USAGE OF shapeSlur FUNCTION
	
	\relative c'' {
	    c4( d)( e)( f)
	    \shapeSlur #'(0.2 0 0 0 0 0 0 -0.2)
	    c( d)( e)( f)
	    \revert Slur #'control-points
	    c( d)( e)( f)
	}
%}
