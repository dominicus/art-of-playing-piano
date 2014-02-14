%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                          %
%   MUZIO CLEMENTI'S                                       %
%   Art of Playing on the Piano Forte                      %
%                                                          %
%   Typeset by Javier Ruiz-Alma                            %
%                                                          %
%   Book Makefile                                          %
%                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.16.1"
#(set-default-paper-size "letter")
%\pointAndClickOff

%----------------------GENERAL HEADERS---------------------%
\header {
  title = "Introduction to the Art of Playing on the Piano Forte"
  composer = "Muzio Clementi"
  author = "Muzio Clementi"
  opus = "Op. 42"
  typesetter = "Javier Ruiz-Alma"
  date = "1801"
  source = "Clementi, Banger, Hyde, Collard & Davis; London [1803] (Sibley Music Library); Gera: C.G. Menzel, n.d. [1820] (Bavarian State Library)"

  coverLineOne = "Muzio Clementi's"
  coverLineTwo = "Introduction to the"
  coverLineThree = "Art of Playing"
  coverLineFour = "on the"
  coverLineFive = "Piano Forte"
  coverLineSix = \markup { \concat { "LilyPond Typesetting " \char ##x00A9 " 2014 by Javier Ruiz-Alma" } }
  coverScrollTop = \markup { \epsfile #X #60 #(format #f "scroll-one-top.eps" (ly:parser-output-name parser)) }
  coverScrollBottom = \markup { \epsfile #X #60 #(format #f "scroll-one-btm.eps" (ly:parser-output-name parser)) }
      
  
  mutopiatitle = "Clementi's Art of Playing on the Piano Forte"
  mutopiaopus = "Op. 42"
  mutopiacomposer = "ClementiM"
  mutopiainstrument = "piano, pianoforte, harpsichord, clavichord"
  style = "Classical"
  maintainer = "Javier Ruiz-Alma"
  maintainerEmail = "javier (at) ruiz-alma.com"
  copyright = "Creative Commons Attribution 4.0"
  license = "Creative Commons Attribution 4.0"
  lastupdated = "2014/02/08"
  
  footer = "Mutopia-2014/02/08-0"
  tagline = "Mutopia Tagline"
}

%--------------------MARGINS AND PAGE FORMATS--------------%
\paper {
     top-margin = 8\mm
     bottom-margin = 8\mm
     tocTitle = "Table of Contents"
     first-page-number = -2
     print-first-page-number = ##t
     page-breaking = #ly:minimal-breaking
     system-system-spacing #'padding = #6
}

%--------------------INCLUDED FILES------------------------%
  #(ly:set-option 'relative-includes #t)
  \include "ilys/book-titling.ily"
  \include "ilys/definitions.ily"
  \include "ilys/clementi-op42-p1-01-inner-cover.ily"
  \include "ilys/clementi-op42-p1-02-prelims.ily" 
  \include "ilys/clementi-op42-p1-03-clefs.ily"

  \include "ilys/clementi-op42-p1-04-scale.ily"
  \include "ilys/clementi-op42-p1-05-intervals.ily"

  \include "ilys/clementi-op42-p1-06-clefs-expl.ily"
  \include "ilys/clementi-op42-p1-07-notes.ily"
  \include "ilys/clementi-op42-p1-08-time.ily"
  \include "ilys/clementi-op42-p1-09-sharps-flats.ily"
  \include "ilys/clementi-op42-p1-10-marks.ily"
  \include "ilys/clementi-op42-p1-11-abbrevs.ily"
  \include "ilys/clementi-op42-p1-12-style.ily"
  \include "ilys/clementi-op42-p1-13-turns.ily"
  \include "ilys/clementi-op42-p1-14-maj-min.ily"
  \include "ilys/clementi-op42-p1-15-terms.ily"
  \include "ilys/clementi-op42-p1-16-fingering.ily"
  \include "ilys/clementi-op42-p1-17-directions.ily"
  \include "ilys/clementi-op42-p1-18-scales.ily"
  \include "ilys/clementi-op42-p1-19-scales.ily"
  \include "ilys/clementi-op42-p1-20-extensions.ily"
  \include "ilys/clementi-op42-p1-21-exercise-rh.ily"
  \include "ilys/clementi-op42-p1-22-exercise-lh.ily"
  \include "ilys/clementi-op42-p2-01-introduction.ily"

%---------------------- CONTENT PAGE HEADER----------------%
  \bookTitle "Clementi's Art of Playing on the Piano Forte"
  \useRehearsalNumbers ##f  %% set to #f to turn off piece numbering

%---------------------- COVER PAGE-------------------------%
  \pageBreak  %force printing front page
    
%-----------------------INNER COVER------------------------%
  \innerCover
  \pageBreak
  
%----------------------TABLE OF CONTENTS-------------------%
  \markuplist \table-of-contents
  \pageBreak

%----------------------BOOK CONTENTS-----------------------%
  \chapter "Music Notation"
  
  \markup \vspace #5
  \titledPiece \markup "Preliminaries"
  \partOnePreliminaries 
 
  \markup \vspace #2
  \titledPiece \markup "Clefs"
  \partOneClefs
  \pageBreak %---------------------------------------------
  
  \titledPiece \markup "The Scale, or Gamut"
  \partOneScale
  \pageBreak %---------------------------------------------
  
  \titledPiece \markup "Intervals"
  \partOneIntervals
  \pageBreak %---------------------------------------------

  \titledPiece \markup "Tenor, Counter-tenor, and Soprano clefs explained"
  \partOneClefsExplained
  \pageBreak %---------------------------------------------
  
  \titledPiece \markup "Figure, Length, and the relative Value of Notes and Rests"
  \partOneValueOfNotes
  \pageBreak %---------------------------------------------
  
  \titledPiece \markup "Time and its Divisions"
  \partOneTimeAndItsDivisionsOne
  \pageBreak
  \partOneTimeAndItsDivisionsTwo
  \pageBreak %---------------------------------------------
  
  \titledPiece \markup "Sharps, Flats, etc."
  \partOneSharpsFlatsOne
  \pageBreak
  \partOneSharpsFlatsTwo
  \pageBreak %---------------------------------------------
  
  \titledPiece \markup "Various other marks."
  \partOneOtherMarks
  
  \titledPiece \markup "Abbreviations"
  \partOneAbbreviations
  \pageBreak %---------------------------------------------
  
  \titledPiece \markup "Style, Graces, and marks of Expression, etc."
  \partOneStyleGracesOne
  \pageTurn %---------------------------------------------
  \partOneStyleGracesTwo

  \titledPiece \markup "Turns, Shakes, and Beats, explained"
  \partOneTurnsShakesBeats
  \pageBreak %---------------------------------------------
  
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
  \include "ilys/clementi-op42-lyt-L01-prel-cmaj.ily"
  \titledPiece \markup "Away with melancholy: by Mozart"
  \include "ilys/clementi-op42-lyt-L01-mozart.ily"
  \pageBreak

  \section "Lesson II"
  \titledPiece \markup "Aria"
  \include "ilys/clementi-op42-lyt-L02-aria.ily"
  \section "Lesson III"
  \titledPiece \markup "Air, in Atalanta, by Handel"
  \include "ilys/clementi-op42-lyt-L03-handel.ily"
  \pageBreak

  \section "Lesson IV"
  \titledPiece \markup "Air, in Saul, by Handel"
  \include "ilys/clementi-op42-lyt-L04-handel.ily"
  \pageBreak

  \section "Lesson V"
  \titledPiece \markup "Dead March, in Saul, by Handel"
  \include "ilys/clementi-op42-lyt-L05-handel.ily"
  \pageBreak
  
  \section "Lesson VI"
  \titledPiece \markup "Allegro by Corelli"
  \include "ilys/clementi-op42-lyt-L06-corelli.ily"
  \pageBreak
    
  \section "Lesson VII"
  \titledPiece \markup "Prelude in A minor"
  \include "ilys/clementi-op42-lyt-L07-prel-amin.ily"    
  \titledPiece \markup "Gavotta by Corelli"
  \include "ilys/clementi-op42-lyt-L07-corelli.ily"
  \pageBreak

  \section "Lesson VIII"
  \titledPiece \markup "Prelude in F Major"
  \include "ilys/clementi-op42-lyt-L08-prel-fmaj.ily"
  \titledPiece \markup "Air, in Judas Maccabeus, by Handel"
  \include "ilys/clementi-op42-lyt-L08-handel.ily"
  \pageBreak
  
  \section "Lesson IX"
  \titledPiece \markup "March, in Judas Maccabeus, by Handel"
  \include "ilys/clementi-op42-lyt-L09-handel.ily"
  \pageBreak

  \section "Lesson X"
  \titledPiece \markup "Sarabanda, by Corelli"
  \include "ilys/clementi-op42-lyt-L10-corelli.ily"
  \pageBreak 

  \section "Lesson XI"
  \titledPiece \markup "Giga, by Corelli"
  \include "ilys/clementi-op42-lyt-L11-corelli.ily"
  \pageBreak

  \section "Lesson XII"
  \titledPiece \markup "Arietta, by Mozart"
  \include "ilys/clementi-op42-lyt-L12-mozart.ily"
  \pageBreak
  
  \section "Lesson XIII"
  \titledPiece \markup "Minuet and Trio, by Mozart"
  \include "ilys/clementi-op42-lyt-L13-mozart-minuet.ily"
  \include "ilys/clementi-op42-lyt-L13-mozart-trio.ily"
  \pageBreak
  
  \section "Lesson XIV"
  \titledPiece \markup "Le Réveilmatin, by Couperin"
  \include "ilys/clementi-op42-lyt-L14-couperin.ily"
  \pageBreak

  \section "Lesson XV"
  \titledPiece \markup "Prelude in D minor"
  \include "ilys/clementi-op42-lyt-L15-prel-dmin.ily"
  \titledPiece \markup "Larghetto, by Scarlatti"
  \include "ilys/clementi-op42-lyt-L15-scarlatti.ily"
  \pageBreak

  \section "Lesson XVI"
  \titledPiece \markup "Allemanda, by Corelli"
  \include "ilys/clementi-op42-lyt-L16-corelli.ily"
  \pageBreak
  
  \section "Lesson XVII"
  \titledPiece \markup "Sarabanda, by Corelli"
  \include "ilys/clementi-op42-lyt-L17-corelli.ily"
  \pageBreak

  \section "Lesson XVIII"
  \titledPiece \markup "Prelude in G Major"
  \include "ilys/clementi-op42-lyt-L18-prel-gmaj.ily"
  \titledPiece \markup "Ah vous dirai - je maman"	
  \include "ilys/clementi-op42-lyt-L18-ah-vous.ily"
  \pageBreak

  \section "Lesson XIX"
  \titledPiece \markup "Triste Raison"
  \include "ilys/clementi-op42-lyt-L19-triste-raison.ily"
  \pageBreak
  
  \section "Lesson XX"
  \titledPiece \markup "Fal, lal, la. Air in the Cherokee."
  \include "ilys/clementi-op42-lyt-L20-air-fal-lal-la.ily"
  \pageBreak

  \section "Lesson XXI"
  \titledPiece \markup "Larghetto, by Pleyel"
  \include "ilys/clementi-op42-lyt-L21-pleyel.ily"
  \pageBreak

  \section "Lesson XXII"
  \titledPiece \markup "Arietta"
  \include "ilys/clementi-op42-lyt-L22-arietta.ily"

  \section "Lesson XXIII"
  \titledPiece \markup "German Hymn, with Variations by Pleyel"
  \include "ilys/clementi-op42-lyt-L23-pleyel-theme.ily"
  \include "ilys/clementi-op42-lyt-L23-pleyel-v1.ily"
  \include "ilys/clementi-op42-lyt-L23-pleyel-v2.ily"
  \include "ilys/clementi-op42-lyt-L23-pleyel-v3.ily"
  \pageBreak
  
  \section "Lesson XXIV"
  \titledPiece \markup "Andantino, by Dussek"
  \include "ilys/clementi-op42-lyt-L24-dussek.ily"
  \pageBreak

  \section "Lesson XXV"
  \titledPiece \markup "Allegro, by Handel"
  \include "ilys/clementi-op42-lyt-L25-handel.ily"
  \pageBreak
  
  \section "Lesson XXVI"
  \titledPiece \markup "Minuet in Samson, by Handel"
  \include "ilys/clementi-op42-lyt-L26-handel.ily"
  \pageBreak
  
  \section "Lesson XXVII"
  \titledPiece \markup "God Save the Emperor, composed by Dr. Haydn"
  \include "ilys/clementi-op42-lyt-L27-haydn.ily"
  \pageBreak

  \section "Lesson XXVIII"
  \titledPiece \markup "Rondo in the Gipsy stile, by Dr. Haydn"
  \include "ilys/clementi-op42-lyt-L28-haydn.ily"
  \pageBreak
 
  \section "Lesson XXIX"
  \titledPiece \markup "Prelude in E minor"
  \include "ilys/clementi-op42-lyt-L29-prel-emin.ily"
  \titledPiece \markup "Tambourin by Rameau"
  \include "ilys/clementi-op42-lyt-L29-rameau.ily"
  \pageBreak

  \section "Lesson XXX"
  \titledPiece \markup "Prelude in B flat, Major"
  \include "ilys/clementi-op42-lyt-L30-prel-besmaj.ily"
  \titledPiece \markup "Minuetto by Scarlatti"
  \include "ilys/clementi-op42-lyt-L30-scarlatti.ily"
  \pageBreak

  \section "Lesson XXXI"
  \titledPiece \markup "Lindor - an Air"
  \include "ilys/clementi-op42-lyt-L31-air.ily"
  \pageBreak

  \section "Lesson XXXII"
  \titledPiece \markup "Minuet and Trio, By Mozart"
  \include "ilys/clementi-op42-lyt-L32-mozart-minuet.ily"
  \noPageBreak
  \include "ilys/clementi-op42-lyt-L32-mozart-trio.ily"
  \pageBreak

  \section "Lesson XXXIII"
  \titledPiece \markup "Gavotta in Otho, by Handel"
  \include "ilys/clementi-op42-lyt-L33-handel.ily"
  \pageBreak
  
  \section "Lesson XXXIV"
  \titledPiece \markup "Andante with Variations, by Cramer"
  \include "ilys/clementi-op42-lyt-L34-cramer-theme.ily"
  \include "ilys/clementi-op42-lyt-L34-cramer-v1.ily"
  \include "ilys/clementi-op42-lyt-L34-cramer-v2.ily"
  \include "ilys/clementi-op42-lyt-L34-cramer-v3.ily"
  \pageBreak

  \section "Lesson XXXV"
  \titledPiece \markup "Prelude in G minor"
  \include "ilys/clementi-op42-lyt-L35-prel-gmin.ily"
  \titledPiece \markup "Allegro, by Scarlatti"
  \include "ilys/clementi-op42-lyt-L35-scarlatti.ily"
  \pageBreak

  \section "Lesson XXXVI"
  \titledPiece \markup "Prelude in D Major"
  \include "ilys/clementi-op42-lyt-L36-prel-dmaj.ily"
  \titledPiece \markup "Gavotta, by Corelli"
  \include "ilys/clementi-op42-lyt-L36-corelli.ily"
  \pageBreak
  
  \section "Lesson XXXVII"
  \titledPiece \markup "Minuet in Ariadne, by Handel"
  \include "ilys/clementi-op42-lyt-L37-handel.ily"      %---- Get's warning on rehersal mark
  \pageBreak
  
  \section "Lesson XXXVIII"
  \titledPiece \markup "March in the Occasional Oratorio, by Handel"
  \include "ilys/clementi-op42-lyt-L38-handel.ily"
  \pageBreak
  
  \section "Lesson XXXIX"
  \titledPiece \markup "Waltz, by Beethoven"
  \include "ilys/clementi-op42-lyt-L39-beethoven.ily"
  \pageBreak

  \section "Lesson XL"
  \titledPiece \markup "Allegro, by Corelli"
  \include "ilys/clementi-op42-lyt-L40-corelli.ily"
  \pageBreak
  
  \section "Lesson XLI"
  \titledPiece \markup "Prelude in B minor"
  \include "ilys/clementi-op42-lyt-L41-prel-bmin.ily"
  \titledPiece \markup "Giga, by Corelli"
  \include "ilys/clementi-op42-lyt-L41-corelli.ily"
  \pageBreak
  
  \section "Lesson XLII"
  \titledPiece \markup "Prelude in E Flat Major"
  \include "ilys/clementi-op42-lyt-L42-prel-eesmaj.ily"
  \titledPiece "Rondo by C.P.E. Bach"
  \include "ilys/clementi-op42-lyt-L42-cpebach.ily"  % ---------- Warnings: Rest collisions
  \pageBreak

  \section "Lesson XLIII"
  \titledPiece \markup "Prelude in C minor"
  \include "ilys/clementi-op42-lyt-L43-prel-cmin.ily"
  \titledPiece \markup "Minuet, by Scarlatti"
  \include "ilys/clementi-op42-lyt-L43-scarlatti.ily"
  \pageBreak
  
  \section "Lesson XLIV"
  \titledPiece \markup "Prelude in A Major"
  \include "ilys/clementi-op42-lyt-L44-prel-amaj.ily"
  \titledPiece \markup "Andante Allegretto by Paradies."
  \include "ilys/clementi-op42-lyt-L44-paradies.ily"  %----Warning: colliding rests
  \pageBreak
  
  \section "Lesson XLV"
  \titledPiece \markup "Prelude in F# minor"
  \include "ilys/clementi-op42-lyt-L45-prel-fismin.ily"
  \titledPiece \markup "Adagio by Corelli."
  \include "ilys/clementi-op42-lyt-L45-corelli.ily"
  \pageBreak
     
  \section "Lesson XLVI"
  \titledPiece \markup "Prelude in A flat Major"
  \include "ilys/clementi-op42-lyt-L46-prel-aesmaj.ily"
  \titledPiece \markup "Slow March by Couperin."
  \include "ilys/clementi-op42-lyt-L46-couperin.ily"
  \pageBreak
  
  \section "Lesson XLVII"
  \titledPiece \markup "Prelude in F minor"
  \include "ilys/clementi-op42-lyt-L47-prel-fmin.ily"
  \titledPiece \markup "Allegretto by Couperin"
  \include "ilys/clementi-op42-lyt-L47-couperin.ily"
  \pageBreak
  
  \section "Lesson XLVIII"
  \titledPiece \markup "Prelude in E Major"
  \include "ilys/clementi-op42-lyt-L48-prel-emaj.ily"
  \titledPiece \markup "Polonoise and Minuet, by Sebastian Bach"
  \include "ilys/clementi-op42-lyt-L48-bach-polonaise.ily"
  \include "ilys/clementi-op42-lyt-L48-bach-minuet.ily"
  \pageBreak
 
  \section "Lesson XLIX"
  \titledPiece \markup "Gavotta, by Corelli"
  \include "ilys/clementi-op42-lyt-L49-corelli.ily"
  \pageBreak
 
  \section "Lesson L"
  \titledPiece \markup "Prelude in C# minor"
  \include "ilys/clementi-op42-lyt-L50-prel-cismin.ily"  
  \titledPiece \markup "Minuet, by Dr. Haydn"
  \include "ilys/clementi-op42-lyt-L50-haydn.ily"

  %{
  CREDITS:
  
  Nicolas Sceaux: book titling framework
  Mats Bengtsson: defer page numbering several pages into the book
  Mike Solomon: up-tied fingering markup, slur as tuplet bracket
  Phil Holmes: fix encoding errors, explicit breaks
  Jakob Lund: segment sequencing for MIDI
  Janek Warchoł: fixes to polyphony in MIDI, beam positioning
  Keith OHara: fixes to polyphony in MIDI
  Nick Payne: ordering scripts and fingering attached to notes, printing ledger lines without notes,
              reversed noteheads, shortening slurs
  David Nalesnik: adjusting beam slopes without reference to staff positions,
                  suppressing key cancellation, slur as tuplet bracket
  Reinhold Kainhofer: positioning fingering under slurs
  David Kastrup: rehearsal mark positioning, vertical line spacing
  Shane Brandes: markup positioning, reversed noteheads
  Xavier Scheuer: polymetric notation, rehearsal mark positioning
  Eluze W: bar line removal
  Robin Bannister: disable bar printing by using cadenza
  Thomas Morley: printing arpeggio symbol
  Edward Neeman: baroque slash ornament
  Valentin Villenave: LilyPond syntax
  Federico Bruni: custom MIDI filenames for each score in a book (requested)
  Glen Larsen: git syntax
  Felix Janda: LilyPond compile with no MIDI output
  
  %}

