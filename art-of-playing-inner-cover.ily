\version "2.16.0"

innerCoverCopyright = \markup{ \center-column { \concat { \epsfile #X #20 #(format #f "cc-by-sa-lic-logo.eps" (ly:parser-output-name parser)) } } }

innerCover = \markup {      
	\column { \small {
		\line { \vspace #35 }
		\line { \bold \larger "Acknowledgements" \postscript #"0 0 moveto 83 0 rlineto stroke" }
		\line { \vspace #0 }
                \line { \larger "My gratitude goes to the many volunteers at the LilyPond user forum:" }
                \line { \larger "Mats Bengtsson, Chris Sawer, Mike Solomon, Phil Holmes, Jakob Lund, Janek Warchoł, Keith O'Hara," }
                \line { \larger "Nick Payne, David Nalesnik, Reinhold Kainhofer, David Kastrup, Shane Brandes, Xavier Scheuer, Eluze," }
                \line { \larger "Robin Bannister, Thomas Morley, and Edward Neeman." }
                %{
                \line { \vspace #2 }
		\line { \bold "1803 English edition cover (Sibley Music Library)" \postscript #"0 0 moveto 39.8 0 rlineto stroke" }
		\line { \vspace # 0 }
		\line \bold \larger { "Clementi's" }
		\line \bold \larger {"Introduction to the Art of Playing on the Pianoforte:"}
		\line { "Containing the Elements of Music." }
		\line { "Preliminary notions on Fingering with Examples;" }
		\line {"and"}
		\line { "Fifty fingered Lessons," }
		\line { "In the major and minor keys mostly in use by" }
		\line { "Composers of the first rank, Ancient and Modern" }
		\line { "To which are prefixed sort Preludes by the" }
		\line { "Author." }
		\line \smaller { \concat { "Ent." \super "d" "at Sta. Hall.  Price 10 6" \super "d" } }
		\line { "LONDON" }
		\line { "Printed by Clementi, Banger, Hyde, Collard & Davis No. 26, Cheapside." }
		\line { "Where may be had as a SUPPLEMENT to the above Work " }
		\line { "CLEMENTI'S Six Progressive fingered SONATINAS." }
		\line { \vspace #3 }
		
		\line { \bold "1820 German edition cover (Bavarian State Library) " \postscript #"0 0 moveto 36.5 0 rlineto stroke" }
		\line { \vspace #0 }
		\line \bold \larger {"M. Clementi's"}
		\line \bold \larger {"Introduction to the Art of Playing on the Pianoforte:"}
		\line {"The Elements of Music;"}
		\line {"The necessary terms for fingering explained with examples,"}
		\line {"and"}
		\line {"50 Lessons"}
		\line {"to exercise in the fingering of the most common"}
		\line {"major and minor keys, according to the patterns of principal ancient and modern"}
		\line {"composers; together with short preceding"}
		\line {"PRELUDES"}
		\line {"from"}
		\line {"AUTHOR."}
		\line { \postscript #"0 0 moveto 12 0 rlineto stroke" }
		\line {"Gera"}
		\line {"by C. G. Menzel."}
		\line { \postscript #"0 0 moveto 85 0 rlineto stroke" }

		%{ ---------------------------German cover text
		M. Clementi's
		Einleitung in die Kunst das Piano-Forte zu spielen
		Entbaltend
		Die Anfangsgründe der Music;
		Die nöthigen Begriffe zur Fingersetzung mit Beispielen erläutert,
		und
		50 Lektionen
		zur Uibung in der Fingersetzung aus den gewölinlichsten
		Dur und Moltönen, nach den Musternder vorzüchlichsten ältern und neuern
		Komponisten; nebst kurzen vorangehenden"
		PRÆLUDIEN
		vom
		VERFASSER.
		____________
		Gera
		bey C.G. Menzel.
		%}

		\line { \vspace #5 }
		%\line { \innerCoverCopyright }
		}
	}
  }
