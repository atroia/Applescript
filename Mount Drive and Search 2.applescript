------------------------------------------------------------------------------------------------------------------
-- Mount Drive or Search 2 for Alfred 3
-- by Aaron Troia
-- created: 5/11/22
-- modified: 

-- This script will first search for the mounted network drive
-- If network drive is not mounted, it will mount drive and search prompt (Alfred) will appear
-- If network drive is mounted, search prompt (Alfred) will appear
-- This script will also make a list of the parent folders as list them in a window
-- Once the folder has been selected from the list you can search it from Alfred. 
------------------------------------------------------------------------------------------------------------------

-- This path is your server path you can find in Info next to Server
set drivePath to "(* Volume SMB path *)"
-- This is the name of the drive found in the path above
set searchPath to "(* Mounted Voume path /Volume/... *)"
set mountedDiskName to "(* Mounted volume name *)"

tell application "Finder"
	if not (disk mountedDiskName exists) then
		mount volume drivePath
		--do shell script "open /Volumes/" & mountedDiskName
		display notification "'" & mountedDiskName & "' has been mounted"
		activate
		do shell script "ls /Volumes/" & mountedDiskName
		get paragraphs of result
		
		-- remove DfsrPrivate folder
		set folderList to result
		rest of folderList
		set newFolderList to items 2 thru -1 of folderList
		
		-- display list of folders
		set volumeSearch to choose from list (result) with prompt "Choose a Volume folder to search:" OK button name "Search"
		if result is false then
			display dialog "This is not the drive you are looking for."
		else if volumeSearch is result then
			tell application "Alfred 3" to search searchPath & result
		end if
	else
		activate
		do shell script "ls /Volumes/" & mountedDiskName
		get paragraphs of result
		
		-- remove DfsrPrivate folder
		set folderList to result
		rest of folderList
		set newFolderList to items 2 thru -1 of folderList
		
		-- display list of folders
		set volumeSearch to choose from list (result) with prompt "Choose a Volume folder to search:" OK button name "Search"
		if result is false then
			display dialog "This is not the drive you are looking for."
		else if volumeSearch is result then
			tell application "Alfred 3" to search searchPath & result
		end if
	end if
end tell
