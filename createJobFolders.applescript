set default_path to "/Users/aaron/eprdctn/Client/"
set jobNum to text returned of (display dialog "Client Name:" default answer "")
set jobName to text returned of (display dialog "Project Name:" default answer "")
set folderpath to (choose folder with prompt "Select Client Folder" default location default_path)
set newJobFolder to my newFold(jobNum, jobName, folderpath)
on newFold(theNumber, theName, thefolder)
	set subNameList to {"~finals", "~src", "EPUB2", "EPUB3", "KF8"}
	set itemCount to count of subNameList
	tell application "Finder"
		set newJobFolder to (make new folder at thefolder with properties {name:theNumber & "_" & theName})
		repeat with i from 1 to itemCount
			set thisFolder to make new folder at newJobFolder with properties {name:"" & item i of subNameList}
			if item i of subNameList contains "~orig" then
				make new folder at thisFolder with properties {name:"Archive"}
			end if
		end repeat
	end tell
end newFold