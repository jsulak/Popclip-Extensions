output=$(perl -e "print scalar(localtime($POPCLIP_TEXT))")
output_gmt=$(perl -e "print scalar(gmtime($POPCLIP_TEXT))")
osascript << eof
tell application "System Events"
  activate 
  display dialog "$output Local \n$output_gmt GMT"
end tell 
eof
