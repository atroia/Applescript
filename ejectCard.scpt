tell application "Finder"
	-- change the value of name of the_disk to the mounted name of your card
	set the_disk to "EOS_DIGITAL" as string
	if the_disk = "false" then return
	eject disk the_disk
	display notification the_disk & " has been safely ejected."
end tell
