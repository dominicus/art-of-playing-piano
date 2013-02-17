\version "2.16.1"

%-----------------------------------------------------------------
%Custom functions to add an upper tie between two text characters
%
#(define-markup-command (up-tied-lyric layout props a b)
  (markup? markup?)
  (let*
          ((tie-str (ly:wide-char->utf-8 #x2040))
           (joined  (list-join `(,a ,b) tie-str))
           (join-stencil (interpret-markup layout props tie-str))
           )

        (interpret-markup layout
                          (prepend-alist-chain
                           'word-space
                           (/ (interval-length (ly:stencil-extent join-stencil X)) -2.5)
                           props)
                          (make-line-markup joined))))
                          
                              
trillFour= \markup{\up-tied-lyric \finger 4 \finger 5}
trillThree = \markup{\up-tied-lyric \finger 3 \finger 2}
trillTwo = \markup{\up-tied-lyric \finger 2 \finger 1}
trillOne = \markup{\up-tied-lyric \finger 1 \finger 2}
trillFourTwo= \markup{\up-tied-lyric \finger 4 \finger 2}
switchOneTwo= \trillOne
switchOneThree= \markup{\up-tied-lyric \finger 1 \finger 3}
switchOneFive= \markup{\up-tied-lyric \finger 1 \finger 5}
switchTwoOne= \trillTwo
switchTwoThree = \markup{\up-tied-lyric \finger 2 \finger 3}
switchTwoFour = \markup{\up-tied-lyric \finger 2 \finger 4}
switchTwoFive = \markup{\up-tied-lyric \finger 2 \finger 5}
switchThreeOne= \markup{\up-tied-lyric \finger 3 \finger 1}
switchThreeFive= \markup{\up-tied-lyric \finger 3 \finger 5}
switchThreeFour= \markup{\up-tied-lyric \finger 3 \finger 4}
switchFourOne = \markup{\up-tied-lyric \finger 4 \finger 1}
switchFourThree = \markup{\up-tied-lyric \finger 4 \finger 3}
switchFourFive= \trillFour
switchFiveOne= \markup{\up-tied-lyric \finger 5 \finger 1}
switchFiveTwo= \markup{\up-tied-lyric \finger 5 \finger 2}
switchFiveFour= \markup{\up-tied-lyric \finger 5 \finger 4}
switchFiveThree= \markup{\up-tied-lyric \finger 5 \finger 3}
switchFiveFourFive= \markup{ \finger \halign #CENTER \concat{"   5" \hspace #0.3 "4" \hspace #0.3 "5"}}
preTrill =  \once \override Staff.Script #'outside-staff-priority = #0

%{--------This approach stopped no longer functional after 2.14.2
		trillFour= \markup{\finger{ \concat{ "4" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "3"}}}
		trillThree = \markup{\finger{ \concat{ "3" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "2"}}}
		trillTwo = \markup{\finger{ \concat{ "2" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "1"}}}
		trillOne = \markup{\finger{ \concat{ "1" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "2"}}}
		trillFourTwo= \markup{\finger{ \concat{ "4" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "2"}}}
		switchOneTwo= \markup{\finger{ \concat{ "1" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "2"}}}
		switchOneThree= \markup{\finger{ \concat{ "1" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "3"}}}
		switchOneFive= \markup{\finger{ \concat{ "1" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "5"}}}
		switchTwoOne= \markup{\finger{ \concat{ "2" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "1"}}}
		switchThreeOne= \markup{\finger{ \concat{ "3" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "1"}}}
		switchFourFive= \markup{\finger{ \concat{ "4" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "5"}}}
		switchThreeFive= \markup{\finger{ \concat{ "3" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "5"}}}
		switchThreeFour= \markup{\finger{ \concat{ "3" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "4"}}}
		switchFiveFour= \markup{\finger{ \concat{ "5" \hspace #-0.5 \char ##x2040 \hspace #-0.5 "4"}}}
%}
%-----------------------------------------------------------------
                          
forceClef = \set Staff.forceClef = ##t
sameSizeClef = \override Staff.Clef #'full-size-change = ##t
beamUp = \override Beam #'neutral-direction = #1
beamDown = \override Beam #'neutral-direction = #-1
beamFlat = \once \override Beam #'damping = #+inf.0
hideTempo = \set Score.tempoHideNote = ##t
autoLineBreakOff= \override NonMusicalPaperColumn #'line-break-permission = ##f
autoLineBreakOn= \override NonMusicalPaperColumn #'line-break-permission = ##t

hideTuplet = \override TupletNumber #'stencil = ##f
showTuplet = \override TupletNumber #'stencil = ##t

ignoreClashNote = \override NoteColumn #'ignore-collision = ##t
lessScriptPriority = \once \override Script #'script-priority = #-100
lessTextScriptPriority = \once \override TextScript #'script-priority = #-100
hideKeyCancellation = \set Staff.printKeyCancellation = ##f
setFingeringLeft = \set fingeringOrientations = #'(left)
setFingeringRight = \set fingeringOrientations = #'(right)
setFingeringDown = \set fingeringOrientations = #'(down)
setFingeringUp = \set fingeringOrientations = #'(up)
pushFingerLeft = \once \override Voice.Fingering #'extra-offset = #'(-0.2 . -1.4 )
allowFingeringInStaff = \once \override Fingering #'staff-padding = #'()
forceFingeringToStem = \override Fingering #'add-stem-support = ##t  % used in the context of polyphonic
hideAccidental = \once \override Voice.Accidental #'stencil = ##f

noteheadGreen = \override NoteHead #'color = #green
noteheadBlue = \override NoteHead #'color = #blue
noteheadRed = \override NoteHead #'color = #red
noteheadMagenta = \override NoteHead #'color = #magenta

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"


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
        \override Slur #'control-points = #(alter-slur-curve offsets)
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

%To hide dynamics or other grobs, use "-\tweak #'stencil ##f"

