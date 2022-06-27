------------------------------------------------------------------------------------------------------------------
-- Map Drive for Alfred 3
-- by Aaron Troia
-- created: 6/27/22
-- modified: 

-- This script will first search for the mounted network drive
-- If network drive is not mounted, it will mount drive
-- Next a text file list will be made of all the folders on the drive
------------------------------------------------------------------------------------------------------------------

-- This path is your server path you can find in Info next to Server (smb, ftp, etc)
set drivePath to "smb://tradebooks01/tradebooks"
-- Set to the path of specific folder on the volume to search
set mountedDiskName to "Tradebooks" -- Network drive name
-- Other sounds include: "Basso", "Blow", "Bottle", "Frog", "Funk", "Glass", "Hero", "Morse", "Ping", "Pop", "Purr", "Sosumi", "Submarine", "Tink"
-- This is your search path (found in Info next to Where) 
set searchPath to "/Volumes/" & mountedDiskName

tell application "Finder"
	if not (disk mountedDiskName exists) then
		-- If drive is not detected, mount drive
		mount volume drivePath
		display notification mountedDiskName & " has been mounted" sound name "glass"
		activate
		do shell script "cd " & searchPath & ";ls -A > /Volumes/Active/Print/__SEARCHES__/Tradebooks.txt"
		
	else
		activate
		do shell script "cd " & searchPath & ";ls -A > /Volumes/Active/Print/__SEARCHES__/Tradebooks.txt"
	end if
end tell