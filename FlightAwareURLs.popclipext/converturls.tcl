#!/usr/bin/tclsh

set input $::env(POPCLIP_TEXT)
set pattern {\S*flightaware\.com\S*}
set matches [regexp -all -inline -nocase $pattern $input]

foreach m $matches {
	if {[string first sulak $m] > -1} {
		exec open [regsub -nocase sulak\. $m {}] 
	} else {
		exec open [regsub -nocase flightaware\.com $m sulak.flightaware.com]
	}
}

