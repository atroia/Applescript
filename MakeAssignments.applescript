-- Create InCopy Assignments in InDesign from list
-- by Aaron Troia
-- c: 3/31/2022
-- m: 

(*
This script will take a list from a text file to create InCopy Assignments in InDesign  

This script is modified from from Script Doctor (Shirley Hopkins) "Create Assignments for InCopy With Scripts" code
https://yourscriptdoctor.com/create-assignments-for-incopy-with-scripts/
*)


set userName to "" -- Username will appear next to Assignment name in parenthesis when created

tell application "Adobe InDesign 2022"
	-- next two lines taken from user225057
	-- https://stackoverflow.com/questions/4278704/applescript-get-filenames-in-folder-without-extension
	set docName to name of front document as string
	set docName2 to text 1 thru ((offset of "." in docName) - 1) of docName
	-- set Assignment color - notice color is an enumeration value 
	set userColor to gray
	set docRef to front document
	tell docRef
		save
		set docPath to file path as string
		-- I think this line only pertains if you are creating the assignment from a selection (possibly not needed)
		set storyPath to docPath & "Assignments:content:"
		-- iterating through a text file snippet from kdmurray and originally HexMonkey (MacRumors)
		-- https://stackoverflow.com/questions/3305966/iterating-through-file-line-by-line-in-applescript
		set asgnPath to paragraphs of (read (choose file with prompt "Pick text file containing Assignment names"))
		repeat with nextLine in asgnPath
			if length of nextLine is greater than 0 then
				set asgnName to nextLine
				-- I believe this line creates the Assignments folder (if it doesnt already exist)
				set nextLine to docPath & docName2 & " Assignments:" & asgnName & ".icma"
				if not (exists assignment nextLine) then
					set asgnRef to make assignment with properties {name:asgnName, user name:userName, frame color:userColor, export options:assigned spreads, file path:nextLine}
				else
					set asgnRef to assignment asgnName
				end if
			end if
		end repeat
		set icmlPath to storyPath & ".icml" --set icmlPath to storyPath & baseName & ".icml"
		set unasgnRef to assignment -1
		set unasgnName to name of unasgnRef
		(*
		if unasgnName is not asgnName then
			tell unasgnRef to move last assigned story to asgnRef
		end if
		*)
		tell asgnRef to update
		save
	end tell
end tell