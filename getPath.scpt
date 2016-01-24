tell application "Finder"
	set finderSelList to selection as alias list
	
	if finderSelList ≠ {} then
		repeat with i in finderSelList
			set contents of i to POSIX path of (contents of i)
		end repeat
		
		set AppleScript's text item delimiters to linefeed
		set filePath to finderSelList as text
	end if
	
end tell
