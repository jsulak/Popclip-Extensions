#!/usr/bin/tclsh

set input $::env(POPCLIP_URLS)
set pattern {\S*flightaware.com/admin/staging/commit\.rvt\?file=[^\s]+from=[^\s]+to=HEAD\S*}
set matches [regexp -all -inline -nocase $pattern $input]

foreach m $matches {
	exec open $m
}

