%{
%%
%%%%MUZIO CLEMENTI'S Art of Playing on the Piano Forte
%%  Typeset by Javier Ruiz-Alma
%%
%}

\version "2.16.1"

%% INCLUDED FILES
  \include "book-titling.ily"
  \include "definitions.ily"
  \include "art-of-playing-inner-cover.ily"
  \include "art-of-playing-part1-preliminaries.ily"
  \include "art-of-playing-part1-clefs.ily"
  \include "art-of-playing-part1-scale.ily"
  \include "art-of-playing-part1-intervals.ily"
  \include "art-of-playing-part1-clefs-explained.ily"
  \include "art-of-playing-part1-note-values.ily"
  \include "art-of-playing-part1-time-divisions.ily"
  \include "art-of-playing-part1-sharps-flats.ily"
  \include "art-of-playing-part1-other-marks.ily"
  \include "art-of-playing-part1-abbreviations.ily"
  \include "art-of-playing-part1-style-graces.ily"
  \include "art-of-playing-part1-turns-shakes.ily"
  \include "art-of-playing-part1-major-minor-keys.ily"
  \include "art-of-playing-part1-explain-various-terms.ily"
  \include "art-of-playing-part1-fingering.ily"
  \include "art-of-playing-part1-prelim-directions.ily"
  \include "art-of-playing-part1-scales.ily"
  \include "art-of-playing-part1-scales-remarks.ily"
  \include "art-of-playing-part1-extensions.ily"
  \include "art-of-playing-part1-fingering-exerc-rh.ily"
  \include "art-of-playing-part1-fingering-exerc-lh.ily"
  \include "art-of-playing-part2-introduction.ily"
  
  \bookTitle "Clementi's Art of Playing on the Piano Forte"

  %}
  %% set to #f to turn off piece numbering
  \useRehearsalNumbers ##f

\bookpart{
  \header {
    composer = "Muzio Clementi's"
    poet = "Introduction to the"
    title = "Art of Playing on the Piano Forte"
    date = "LilyPond Typesetting by Javier Ruiz-Alma"
    arrangement = "From editions published in 1801 and 1803"
    copyright = \markup{"2012 Javier Ruiz - Creative Commons Attribution-ShareAlike 3.0 (Unported) License " \epsfile #X #10 #(format #f "cc-by-sa-lic-logo.eps" (ly:parser-output-name parser))} 
  }
  \markup {""}  %force printing front page
}
  \paper {
    %% Translate the TOC title
    tocTitle = "TABLE OF CONTENTS"
  }
  
  %% Inner Cover
  \bookpart{
  	  \pageBreak
  	  \innerCover
  }
  %% Table of contents
  \bookpart{
  \markuplist \table-of-contents
  }
    
  \chapter "Music Notation"
  %\section "Music Notation"
 %{  %}
  \titledPiece \markup "Preliminaries"
  \partOnePreliminaries 

  \titledPiece \markup "Clefs"
  \partOneClefs
  
  \titledPiece \markup "The Scale, or Gamut"
  \partOneScale
  
  \titledPiece \markup "Intervals"
  \partOneIntervals
  
  \titledPiece \markup "Tenor, Counter-tenor, and Soprano clefs explained"
  \partOneClefsExplained
  
  \titledPiece \markup "Figure, Length, and the relative Value of Notes and Rests"
  \partOneValueOfNotes
  
  \titledPiece \markup "Time and its Divisions"
  \partOneTimeAndItsDivisions
  
  \titledPiece \markup "Sharps, Flats, etc."
  \partOneSharpsFlats
  %}
  \titledPiece \markup "Various other marks."
  \partOneOtherMarks
  
  \titledPiece \markup "Abbreviations"
  \partOneAbbreviations

  \titledPiece \markup "Style, Graces, and marks of Expression, etc."
  \partOneStyleGraces
 
  \titledPiece \markup "Turns, Shakes, and Beats, explained"
  \partOneTurnsShakesBeats
        
  \titledPiece \markup "Major and Minor Modes or Keys; vulgarly called Sharp and Flat Keys."
  \partOneMajorMinorKeys
  
  \titledPiece \markup "Explanation of Various Terms"
  \partOneVariousTerms
  
  \chapter "Fingering"
  
  \partOneFingering
 
  \titledPiece \markup "Preliminary Directions"
  \partOnePrelimDirections

  \titledPiece \markup "Scales in all the Major keys, with their relative Minors"
  \partOneMajorMinorScales
 
  \titledPiece \markup "General Remarks on the foregoing Scales"
  \partOneRemarksOnScales
  
  \titledPiece \markup "Extensions and Contractions etc."
  \partOneExtensionsContractions
  
  \titledPiece \markup "Examples of fingering for the right hand."
  \partOneFingeringRightHand
  
  \titledPiece \markup "The left hand."
  \partOneFingeringLeftHand
  
  \chapter "Preludes and Lessons"
  \partTwoIntroduction
  
  \section "Lesson I"
  \titledPiece \markup "Prelude in C Major"
  \include "art-of-playing-part2-lesson1-prel-cmaj.ily"
  \titledPiece \markup "Away with melancholy: by Mozart"
  \include "art-of-playing-part2-lesson1-moderato.ily"
  \pageBreak
  
  \section "Lesson II"
  \titledPiece \markup "Aria"
  \include "art-of-playing-part2-lesson2-aria.ily"
  %{ %}
  \section "Lesson III"
  \titledPiece \markup "Air, in Atalanta, by Handel"
  \include "art-of-playing-part2-lesson3-air-handel.ily"
  \pageBreak
  
  \section "Lesson IV"
  \titledPiece \markup "Air, in Saul, by Handel"
  \include "art-of-playing-part2-lesson4-air-handel.ily"
  \pageBreak
  
  \section "Lesson V"
  \titledPiece \markup "Dead March, in Saul, by Handel"
  \include "art-of-playing-part2-lesson5-march-handel.ily"
  \pageBreak
  
  \section "Lesson VI"
  \titledPiece \markup "Allegro by Corelli"
  \include "art-of-playing-part2-lesson6-allegro-corelli.ily"
  \pageBreak
  
  \section "Lesson VII"
  \titledPiece \markup "Prelude in A minor"
  \include "art-of-playing-part2-lesson7-prel-amin.ily"
  \titledPiece \markup "Gavotta by Corelli"
  \include "art-of-playing-part2-lesson7-gavotta-corelli.ily"
  \pageBreak
  
  \section "Lesson VIII"
  \titledPiece \markup "Prelude in F Major"
  \include "art-of-playing-part2-lesson8-prel-fmaj.ily"
  \titledPiece \markup "Air, in Judas Maccabeus, by Handel"
  \include "art-of-playing-part2-lesson8-air-handel.ily"
  \pageBreak
  
  \section "Lesson IX"
  \titledPiece \markup "March, in Judas Maccabeus, by Handel"
  \include "art-of-playing-part2-lesson9-march-handel.ily"
  \pageBreak
   
  \section "Lesson X"
  \titledPiece \markup "Sarabanda, by Corelli"
  \include "art-of-playing-part2-lesson10-sarabanda-corelli.ily"
  \pageBreak 
   
  \section "Lesson XI"
  \titledPiece \markup "Giga, by Corelli"
  \include "art-of-playing-part2-lesson11-giga-corelli.ily"
  \pageBreak
     
  \section "Lesson XII"
  \titledPiece \markup "Arietta, by Mozart"
  \include "art-of-playing-part2-lesson12-arietta-mozart.ily"
  \pageBreak
  
  \section "Lesson XIII"
  \titledPiece \markup "Minuet and Trio, by Mozart"
  \include "art-of-playing-part2-lesson13-minuet-mozart.ily"
  \include "art-of-playing-part2-lesson13-trio-mozart.ily"
  \pageBreak
  
  \section "Lesson XIV"
  \titledPiece \markup "Le Réveilmatin, by Couperin"
  \include "art-of-playing-part2-lesson14-couperin.ily"
  \pageBreak
  
  \section "Lesson XV"
  \titledPiece \markup "Prelude in D minor"
  \include "art-of-playing-part2-lesson15-prel-dmin.ily"
  \titledPiece \markup "Larghetto, by Scarlatti"
  \include "art-of-playing-part2-lesson15-scarlatti.ily"
  \pageBreak
  
  \section "Lesson XVI"
  \titledPiece \markup "Allemanda, by Corelli"
  \include "art-of-playing-part2-lesson16-corelli.ily"
  \pageBreak
  
  \section "Lesson XVII"
  \titledPiece \markup "Sarabanda, by Corelli"
  \include "art-of-playing-part2-lesson17-corelli.ily"
  \pageBreak
  
  \section "Lesson XVIII"
  \titledPiece \markup "Prelude in G Major"
  \include "art-of-playing-part2-lesson18-prel-gmaj.ily"
  \titledPiece \markup "Ah vous dirai - je maman"	
  \include "art-of-playing-part2-lesson18-dirai-maman.ily"
  \pageBreak
  
  \section "Lesson XIX"
  \titledPiece \markup "Triste Raison"
  \include "art-of-playing-part2-lesson19-triste.ily"
  
  \section "Lesson XX"
  \titledPiece \markup "Fal, lal, la. Air in the Cherokee."
  \include "art-of-playing-part2-lesson20-fal-lal-la.ily"
  \pageBreak
  
  \section "Lesson XXI"
  \titledPiece \markup "Larghetto, by Pleyel"
  \include "art-of-playing-part2-lesson21-pleyel.ily"
   
  \section "Lesson XXII"
  \titledPiece \markup "Arietta"
  \include "art-of-playing-part2-lesson22-arietta.ily"
  
  \section "Lesson XXIII"
  \titledPiece \markup "German Hymn, with Variations by Pleyel"
  \include "art-of-playing-part2-lesson23-hymn.ily"
  \include "art-of-playing-part2-lesson23-hymn-v1.ily"
  \include "art-of-playing-part2-lesson23-hymn-v2.ily"
  \include "art-of-playing-part2-lesson23-hymn-v3.ily"
  \pageBreak
  
  \section "Lesson XXIV"
  \titledPiece \markup "Andantino, by Dussek"
  \include "art-of-playing-part2-lesson24-dussek.ily"
  \pageBreak
  
  \section "Lesson XXV"
  \titledPiece \markup "Allegro, by Handel"
  \include "art-of-playing-part2-lesson25-handel.ily"
  \pageBreak
  
  \section "Lesson XXVI"
  \titledPiece \markup "Minuet in Samson, by Handel"
  \include "art-of-playing-part2-lesson26-handel.ily"
  \pageBreak
  
  %Arpeggio warning
  \section "Lesson XXVII"
  \titledPiece \markup "God Save the Emperor, composed by Dr. Haydn"
  \include "art-of-playing-part2-lesson27-haydn.ily"
  \pageBreak
  
  \section "Lesson XXVIII"
  \titledPiece \markup "Rondo in the Gipsy stile, by Dr. Haydn"
  \include "art-of-playing-part2-lesson28-haydn.ily"
  \pageBreak
  
  \section "Lesson XXIX"
  \titledPiece \markup "Prelude in E minor"
  \include "art-of-playing-part2-lesson29-prel-emin.ily"
  \titledPiece \markup "Tambourin by Rameau"
  \include "art-of-playing-part2-lesson29-rameau.ily"
  \pageBreak
  
  \section "Lesson XXX"
  \titledPiece \markup "Prelude in B flat, Major"
  \include "art-of-playing-part2-lesson30-prel-bfmaj.ily"
  \titledPiece \markup "Minuetto by Scarlatti"
  \include "art-of-playing-part2-lesson30-scarlatti.ily"
  \pageBreak
  
  \section "Lesson XXXI"
  \titledPiece \markup "Lindor - an Air"
  \include "art-of-playing-part2-lesson31-lindor.ily"
  \pageBreak
  
  \section "Lesson XXXII"
  \titledPiece \markup "Minuet and Trio, By Mozart"
  \include "art-of-playing-part2-lesson32-mozart.ily" \noPageBreak
  \include "art-of-playing-part2-lesson32-trio-mozart.ily"
  \pageBreak
  
  \section "Lesson XXXIII"
  \titledPiece \markup "Gavotta in Otho, by Handel"
  \include "art-of-playing-part2-lesson33-handel.ily"
  \pageBreak
  
  \section "Lesson XXXIV"
  \titledPiece \markup "Andante with Variations, by Cramer"
  \include "art-of-playing-part2-lesson34-cramer.ily"
  \include "art-of-playing-part2-lesson34-cramer-v1.ily"
  \include "art-of-playing-part2-lesson34-cramer-v2.ily"
  \include "art-of-playing-part2-lesson34-cramer-v3.ily"
  \pageBreak
  
  \section "Lesson XXXV"
  \titledPiece \markup "Prelude in G minor"
  \include "art-of-playing-part2-lesson35-prel-gmin.ily"
  \titledPiece \markup "Allegro, by Scarlatti"
  \include "art-of-playing-part2-lesson35-scarlatti.ily"
  \pageBreak
  
  \section "Lesson XXXVI"
  \titledPiece \markup "Prelude in D Major"
  \include "art-of-playing-part2-lesson36-prel-dmaj.ily"
  \titledPiece \markup "Gavotta, by Corelli"
  \include "art-of-playing-part2-lesson36-corelli.ily"
  \pageBreak
  
  \section "Lesson XXXVII"
  \titledPiece \markup "Minuet in Ariadne, by Handel"
  \include "art-of-playing-part2-lesson37-handel.ily"
  \pageBreak
  
  \section "Lesson XXXVIII"
  \titledPiece \markup "March in the Occasional Oratorio, by Handel"
  \include "art-of-playing-part2-lesson38-handel.ily"
  \pageBreak
  
  \section "Lesson XXXIX"
  \titledPiece \markup "Waltz, by Beethoven"
  \include "art-of-playing-part2-lesson39-beethoven.ily"
  \pageBreak
  
  \section "Lesson XL"
  \titledPiece \markup "Allegro, by Corelli"
  \include "art-of-playing-part2-lesson40-corelli.ily"
  \pageBreak
  
  \section "Lesson XLI"
  \titledPiece \markup "Prelude in B minor"
  \include "art-of-playing-part2-lesson41-prel-bmin.ily"
  \titledPiece \markup "Giga, by Corelli"
  \include "art-of-playing-part2-lesson41-corelli.ily"
  \pageBreak
  
  \section "Lesson XLII"
  \titledPiece "Rondo by C.P.E. Bach"
  \include "art-of-playing-part2-lesson42-cpebach.ily"
  \pageBreak
  
  \section "Lesson XLIII"
  \titledPiece "Prelude in C minor"
  \include "art-of-playing-part2-lesson43-prel-cmin.ily"
  \titledPiece "Minuet, by Scarlatti"
  \include "art-of-playing-part2-lesson43-scarlatti.ily"
  \pageBreak
  
  \section "Lesson XLIV"
  \titledPiece "Prelude in A Major"
  \include "art-of-playing-part2-lesson44-prel-amaj.ily"
  \titledPiece "Andante Allegretto by Paradies."
  \include "art-of-playing-part2-lesson44-paradies.ily"
  \pageBreak
  
  \section "Lesson XLV"
  \titledPiece "Prelude in F# minor"
  \include "art-of-playing-part2-lesson45-prel-fsmin.ily"
  \titledPiece "Adagio by Corelli."
  \include "art-of-playing-part2-lesson45-corelli.ily"
  \pageBreak
  
  \section "Lesson XLVI"
  \titledPiece "Prelude in A flat Major"
  \include "art-of-playing-part2-lesson46-prel-abmaj.ily"
  \titledPiece "Slow March by Couperin."
  \include "art-of-playing-part2-lesson46-couperin.ily"
  \pageBreak
  
  \section "Lesson XLVII"
  \titledPiece "Prelude in F minor"
  \include "art-of-playing-part2-lesson47-prel-fmin.ily"
  \titledPiece "Allegretto by Couperin"
  \include "art-of-playing-part2-lesson47-couperin.ily"
  \pageBreak
  
  \section "Lesson XLVIII"
  \titledPiece "Prelude in E Major"
  \include "art-of-playing-part2-lesson48-prel-emaj.ily"
  \titledPiece "Polonoise by Sebastian Bach"		%BWV 817
  \include "art-of-playing-part2-lesson48-pol-emaj.ily"
  \titledPiece "Minuet by Sebastian Bach"		%BWV 817
  \include "art-of-playing-part2-lesson48-men-emaj.ily"
  
  \section "Lesson XLIX"
  \titledPiece "Gavotta by Corelli"
  \include "art-of-playing-part2-lesson49-corelli.ily"
  
  \section "Lesson XL"
  \titledPiece "Prelude in C sharp minor"
  %\include "art-of-playing-part2-lesson50-prel.ily"
  %}
