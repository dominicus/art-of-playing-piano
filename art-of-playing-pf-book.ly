%%
%%
%%%%MUZIO CLEMENTI'S Art of Playing on the Piano Forte
%%  Typeset by Javier Ruiz-Alma
%%
%%
\version "2.14.2"

%% INCLUDED FILES
  \include "book-titling.ily"
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
    copyright = \markup{"2012 - Creative Commons Attribution-ShareAlike 3.0 (Unported) License " \epsfile #X #10 #(format #f "cc-by-sa-lic-logo.eps" (ly:parser-output-name parser))} 
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
  \markuplines \table-of-contents
  }
  
	
  
  \chapter "Part I"
  \section "Music Notation"
 %{     
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
  
  \titledPiece \markup "Fingering"
  \partOneFingering
 
  \titledPiece \markup "Preliminary Directions"
  \partOnePrelimDirections

  \titledPiece \markup "Scales in all the Major keys, with their relative Minors"
  \partOneMajorMinorScales
 
  \titledPiece \markup "General Remarks on the foregoing Scales"
  \partOneRemarksOnScales
   %}
  \titledPiece \markup "Extensions and Contractions etc."
  \partOneExtensionsContractions
  
  \titledPiece \markup "Examples of fingering for the Right Hand."
  \partOneFingeringRightHand
  
%{
  \pageBreak
  \section "Scene 2"
  \piece \markup { Choir: \italic { bla bla bla } }
  \repeat unfold 12 { g'4 f' e' d'  \break }
  
  \chapter "Act II"
  \section "Scene 1"
  \titledPiece \markup Overtura
  { c'4 d' e' f' g'1 }
  %}
