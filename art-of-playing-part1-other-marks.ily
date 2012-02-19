\version "2.14.2"



  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneOtherMarks = \markuplines {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph {
    	    The \caps sharp \sharp placed before a note, raises it a semitone or half-tone.  Let us now 
    	    observe a scale of semitones, called the \caps chromatic scale.
    }
    \paragraph{\inlineScoreChromaticScale}
    \paragraph{
    	N.B. The \caps long keys of the Piano-Forte, or Harpsichord, are commonly called the \caps natural 
    	keys, tho'they ocassionally serve for \caps sharps and \caps flats; and the \caps short keys, are 
    	called \caps sharps and \caps flats, being only used for \caps sharp and \caps flat notes.
    }
    \paragraph{
    	Now if a \caps sharp be placed before C, thus: \inlineScoreCsharpExample the note is called 
    	C \caps sharp; and it is found on the instrument between C \caps natural, and D \caps natural; 
    	being one of the \caps short keys: D  \caps sharp is the  \caps short key between D, and E; but 
    	between E, and F, ther is no  \caps short key; nor is it wanted: for the  \caps interval between E and 
    	F, is but a semitone; and therefore when we want E  \caps sharp, we strike the key generally called 
    	F \caps natural.  F \caps sharp will be found between F \caps natural, and G \caps natural: G  \caps sharp 
    	between G and A \caps natural: A \caps sharp between A and B \caps natural: and B \caps sharp is under the same 
    	predicament as E  \caps sharp; we therefore strike C \caps natural for it.
    }
    \paragraph{
    	The flat \flat placed before a note, lowers it a semitone or half-tone: and if the note is a B, 
    	to which the \caps flat is prefixed, it is then called B \caps flat; and it is found between B \caps natural, 
    	and A  \caps natural, being one of the  \caps short keys.
    }
    \paragraph{
    	    =====General rule: every \caps flat is found by going one semitone \caps lower; that is, 
    	    toward the left-hand: and every \caps sharp, contrariwise, by going one semitone \caps higher; that is, 
    	    toward the right-hand.
    }
    \paragraph{
    	The double \caps sharp \general-align #Y #-0.9 \doublesharp raises the note \caps two semitones; and therefore, if it be 
    	F double \caps sharp, we strike G \caps natural; etc.
    }
    \paragraph{
    	The double \caps flat \general-align #Y #-0.9 \doubleflat lowers the note \caps two semitones; and therefore, we go as much to 
    	the \caps left for a double \caps flat, as we did to the \caps right for a double \caps sharp.
    }
    \paragraph{
    	The \caps natural \general-align #Y #-0.4 \natural takes away the effect of a \caps sharp, or a \caps flat; whether single, or 
    	double.  And \general-align #Y #-0.4 { \natural\sharp}, or
        \general-align #Y #-0.4 \natural \general-align #Y #-0.9 \flat, \caps reinstates the single sharp, or flat.
    }
    \paragraph{
    	    The Pupil must by this time have observed, that \inlineScoreBflatExample is struck by the \caps 
    	    same key as \inlineScoreAsharpExample and \inlineScoreGflatExample by the \caps same key as 
    	    \inlineScoreFsharpExample etc.
    }
    \paragraph{
    	Now, the inconveniency of charging to memory with the \caps various uses of the \caps same keys, is 
    	but small; when compared with the impracticableness of performing on an instrument, furnished with keys, 
    	\caps perfectly corresponding with every flat, and sharp, single or double, which composition may require: 
    	a method therefore, has been adopted in tuning, called \caps temperament, which, by a small deviation 
    	from the truth of every interval, \caps {except the octave}, renders the instrument capable of satisfying 
    	the ear in \caps every key.
    }
    \paragraph{
    	When a \caps sharp is placed close to the clef thus \inlineScoreGmajorKeyExample it affects every F 
    	throughout the piece; except where the sharp is contradicted by the natural.
    }
    \paragraph{
    	    N.B.  The same rule holds, when there are two or more sharps at the clef; every one 
    	    affecting its corresponding note.
    }
    \paragraph{
    	    When a \caps flat is placed by the clef \inlineScoreFmajorKeyExample it affects every B throughout the piece; except 
    	    where the flat is contradicted by the natural.
    }
        \paragraph{
    	    N.B.  The same rule holds, when there are two or more flats at the clef; every one 
    	    affecting its corresponding note.
    }
    \paragraph{
    	    When a sharp, flat, or natural is prefixed to a note, in the course of a piece, it affects all the 
    	    following notes of the \caps {same name}, contained in the \caps {same bar}: it is then called 
    	    an \caps accidental sharp, flat, or natural.
    }
    \paragraph{\inlineScoreFirstExampleSharp}
    \paragraph{\inlineScoreSecondExampleFlat}
    \paragraph{\inlineScoreThirdExampleNatural}
    \paragraph{"          which abbreviations, are a modern improvement."}
    \paragraph{" "}
    \paragraph{
    	The foregoing \caps rule extends even to the first note of the subsequent bar, when 
    	the affected note is the last of one, and first of the next.
    }
    \paragraph{\inlineScoreFourthExampleSharpOverBar}
    \paragraph{"           And the same with flats and naturals."}
    \paragraph{" "}
    \paragraph{\inlineScoreOrderOfSharps}
    \paragraph{\inlineScoreOrderOfFlats}
    \paragraph{" "}
    \paragraph{" "}
}
}
