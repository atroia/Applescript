-- Create job subfolders in selected folder
-- Currently set for Short Run Reprints (Body & Cover Folders) to be used with Alfred 2
-- Original script: http://stackoverflow.com/questions/17432796/create-folders-applescript

tell application "Finder"
	set finderSelList to selection as alias list
	set newfo to finderSelList
	
	make new folder at newfo with properties {name:"Body"}
	make new folder at newfo with properties {name:"Cover"}
end tell



if finderSelList ­ {} then
	repeat with i in finderSelList
		set contents of i to POSIX path of (contents of i)
	end repeat
	
	set AppleScript's text item delimiters to linefeed
	finderSelList as text
end if

repeat
	try
		if subCount ­ "" then
			subCount as integer
			exit repeat
		end if
	end try
end repeat

repeat with i from 1 to subCount
	tell application "Finder" to make new folder at targetFolder with properties {name:"Subfolder " & i}
end repeat