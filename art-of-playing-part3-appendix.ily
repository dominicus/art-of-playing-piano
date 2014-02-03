\version "2.16.0"

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partThreeFileListOne = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{ " " }
    \paragraph{
    	    \column { \hspace #10 }
    	    \column {
    	    	    \bold \caps "File name"
    	    	"art-of-playing-pf-book.midi"
		"art-of-playing-pf-book-1.midi"
		"art-of-playing-pf-book-2.midi"
		"art-of-playing-pf-book-3.midi"
		"art-of-playing-pf-book-4.midi"
		"art-of-playing-pf-book-5.midi"
		"art-of-playing-pf-book-6.midi"
		"art-of-playing-pf-book-7.midi"
		"art-of-playing-pf-book-8.midi"
		"art-of-playing-pf-book-9.midi"
		"art-of-playing-pf-book-10.midi"
		"art-of-playing-pf-book-11.midi"
		"art-of-playing-pf-book-12.midi"
		"art-of-playing-pf-book-13.midi"
		"art-of-playing-pf-book-14.midi"
		"art-of-playing-pf-book-15.midi"
		"art-of-playing-pf-book-16.midi"
		"art-of-playing-pf-book-17.midi"
		"art-of-playing-pf-book-18.midi"
		"art-of-playing-pf-book-19.midi"
		"art-of-playing-pf-book-20.midi"
		"art-of-playing-pf-book-21.midi"
		"art-of-playing-pf-book-22.midi"
		"art-of-playing-pf-book-23.midi"
		"art-of-playing-pf-book-24.midi"
		"art-of-playing-pf-book-25.midi"
		"art-of-playing-pf-book-26.midi"
		"art-of-playing-pf-book-27.midi"
		"art-of-playing-pf-book-28.midi"
		"art-of-playing-pf-book-29.midi"
		"art-of-playing-pf-book-30.midi"
		"art-of-playing-pf-book-31.midi"
		"art-of-playing-pf-book-32.midi"
		"art-of-playing-pf-book-33.midi"
		"art-of-playing-pf-book-34.midi"
		"art-of-playing-pf-book-35.midi"
		"art-of-playing-pf-book-36.midi"
		"art-of-playing-pf-book-37.midi"
		"art-of-playing-pf-book-38.midi"
		"art-of-playing-pf-book-39.midi"

    	    }
    	    \column { 
    		" "
    		" . . . . "
    	    }
    	    \column {
    	    	    \bold \caps "Lesson"
    	    	    " 1"
    	    	    " 2"
    	    	    " 3"
    	    	    
    	    }
    }
    \paragraph{" "}
    %{
    \paragraph{
    	    \column {
    	    	    \line{ "1  " \caps Adagio  }
    	    	    \line{ "2  " \caps Grave }
    	    	    \line{ "3  " \caps Largo }
    	    	    \line{ "4  " \caps Lento }
    	    	    \line{ "5  " \caps Larghetto }
    	    }
    	    %}
    \paragraph{" "}
  }
}
partThreeFileListTwo = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{
    	    \column {
    	    	    \bold \caps "File name"
		"art-of-playing-pf-book-40.midi"
		"art-of-playing-pf-book-41.midi"
		"art-of-playing-pf-book-42.midi"
		"art-of-playing-pf-book-43.midi"
		"art-of-playing-pf-book-44.midi"
		"art-of-playing-pf-book-45.midi"
		"art-of-playing-pf-book-46.midi"
		"art-of-playing-pf-book-47.midi"
		"art-of-playing-pf-book-48.midi"
		"art-of-playing-pf-book-49.midi"
		"art-of-playing-pf-book-50.midi"
    	    	"art-of-playing-pf-book-51.midi"
		"art-of-playing-pf-book-52.midi"
		"art-of-playing-pf-book-53.midi"
		"art-of-playing-pf-book-54.midi"
		"art-of-playing-pf-book-55.midi"
		"art-of-playing-pf-book-56.midi"
		"art-of-playing-pf-book-57.midi"
		"art-of-playing-pf-book-58.midi"
		"art-of-playing-pf-book-59.midi"
		"art-of-playing-pf-book-60.midi"
		"art-of-playing-pf-book-61.midi"
		"art-of-playing-pf-book-62.midi"
		"art-of-playing-pf-book-63.midi"
		"art-of-playing-pf-book-64.midi"
		"art-of-playing-pf-book-65.midi"
		"art-of-playing-pf-book-66.midi"
		"art-of-playing-pf-book-67.midi"
		"art-of-playing-pf-book-68.midi"
		"art-of-playing-pf-book-69.midi"
		"art-of-playing-pf-book-70.midi"
		"art-of-playing-pf-book-71.midi"
		"art-of-playing-pf-book-72.midi"
		"art-of-playing-pf-book-73.midi"
		"art-of-playing-pf-book-74.midi"
		"art-of-playing-pf-book-75.midi"
		"art-of-playing-pf-book-76.midi"

    	    }
    	    \column {
    	    	    \bold \caps "Lesson"
    	    	    " 1"
    	    	    " 2"
    	    	    " 3"
    	    	    
    	    }
    }
    \paragraph{" "}
    %{
    \paragraph{
    	    \column {
    	    	    \line{ "1  " \caps Adagio  }
    	    	    \line{ "2  " \caps Grave }
    	    	    \line{ "3  " \caps Largo }
    	    	    \line{ "4  " \caps Lento }
    	    	    \line{ "5  " \caps Larghetto }
    	    }
    	    %}
    \paragraph{" "}
  }
}
