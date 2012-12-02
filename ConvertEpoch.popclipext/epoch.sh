output=$(perl -e "print scalar(localtime($POPCLIP_TEXT))")
osascript << eof
tell application "System Events"
  activate 
  display dialog "$output"
end tell 
eof
