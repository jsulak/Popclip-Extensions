bugzid=$(echo $POPCLIP_TEXT | sed -E 's/(FB|BUGZID(:)*)//g')
open "http://flightaware.fogbugz.com/default.asp?$bugzid"
