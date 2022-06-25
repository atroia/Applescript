-- Mount Drive or Search for Alfred 3
-- by Aaron Troia

-- This script will first search for the mounted network drive
-- If network drive is not mounted, it will mount drive and search prompt (Alfred) will appear
-- If network drive is mounted, search prompt (Alfred) will appear

-- This path is your server path you can find in Info next to Server (smb, ftp, etc)
set drivePath to "(* Volume SMB path *)"
-- This is the name of the drive found in the path above
set searchPath to "(* Mounted Voume path /Volume/... *)"
set mountedDiskName to "(* Mounted volume name *)" -- Network drive name
-- Other sounds include: "Basso", "Blow", "Bottle", "Frog", "Funk", "Glass", "Hero", "Morse", "Ping", "Pop", "Purr", "Sosumi", "Submarine", "Tink"

tell application "Finder"
	if not (disk mountedDiskName exists) then
		-- If drive is not detected, mount drive
		mount volume drivePath
		display notification mountedDiskName & " has been mounted" sound name "glass"
		-- open Alfred with Path loaded ready for user input
		tell application "Alfred 3" to search searchPath
	else
		-- open Alfred with Path loaded ready for user input
		tell application "Alfred 3" to search searchPath
	end if
end tell