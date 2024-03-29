---------------------------------------------------
-- Check PDF Page Count
-- Aaron Troia
-- version: 1.2
-- Modified: 11/30/22

-- version
-- v1.1 - fixed a bug where it would count all pages of all open docs
-- v1.2 - added progress and caution icon
---------------------------------------------------

tell application "Adobe Acrobat"
	set pageCount to (count pages) of front PDF Window
	if pageCount ≥ 32 then
		set sigMod to 16
	else if pageCount < 32 and pageCount > 8 then
		set sigMod to 8
	else
		display dialog "There are no sigs, your document is only " & pageCount & " page(s)."
		return
	end if
	set addPages to ((round (pageCount) / sigMod) * sigMod) - pageCount
	set removePages to pageCount - (((round (pageCount) / sigMod) - 1) * sigMod)
	set perfectBreak to "This document is " & pageCount & " pages. You're good."
	set unperfectBreak to "Your page count " & pageCount & " is not an even signature break. 
Try adding " & addPages & " pages, or removing " & removePages & " pages."
	if pageCount mod sigMod is not 0 then
		progress completed steps
		display dialog unperfectBreak with icon caution
	else
		progress completed steps
		display dialog perfectBreak
	end if
end tell