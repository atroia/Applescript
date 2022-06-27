-- ISBN Check Digit Calculator
-- by Aaron Troia


display dialog "Enter the first 12 digits of your ISBN:" default answer "97808163"
set myTestString to text returned of result

set myArray to my theSplit(myTestString, "")

on theSplit(theString, theDelimiter)
	-- save delimiters to restore old settings
	set oldDelimiters to AppleScript's text item delimiters
	-- set delimiters to delimiter to be used
	set AppleScript's text item delimiters to theDelimiter
	-- create the array
	set theArray to every text item of theString
	-- restore the old setting
	set AppleScript's text item delimiters to oldDelimiters
	-- return the result
	return theArray
end theSplit

set isbn1 to (item 1 of myArray) * 1
set isbn2 to (item 2 of myArray) * 3
set isbn3 to (item 3 of myArray) * 1
set isbn4 to (item 4 of myArray) * 3
set isbn5 to (item 5 of myArray) * 1
set isbn6 to (item 6 of myArray) * 3
set isbn7 to (item 7 of myArray) * 1
set isbn8 to (item 8 of myArray) * 3
set isbn9 to (item 9 of myArray) * 1
set isbn10 to (item 10 of myArray) * 3
set isbn11 to (item 11 of myArray) * 1
set isbn12 to (item 12 of myArray) * 3


set isbnSum to isbn1 + isbn2 + isbn3 + isbn4 + isbn5 + isbn6 + isbn7 + isbn8 + isbn9 + isbn10 + isbn11 + isbn12

set isbnRemain to isbnSum mod 10

if isbnRemain > 0 then
	set isbnCheck to 10 - isbnRemain
else
	set isbnCheck to 0
end if

display dialog "your check number is: " & isbnCheck & "
" & "
" & "Full ISBN:  " & myTestString & isbnCheck