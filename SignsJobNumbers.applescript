set num3 to 3
set en4 to 1
set es4 to 3
set mo to do shell script "date +%m"
set yr to (do shell script "date '+%y'")
set {month:m, year:y} to (current date)
set m2 to do shell script "date -v+1m +%m"
set y2 to do shell script "date -v+1y +%y"

set enJobNum to yr & num3 & en4 & mo
set esJobNum to yr & num3 & es4 & mo

set enJobNum2 to yr & num3 & en4 & m2
set esJobNum2 to yr & num3 & es4 & m2

set enJobNum3 to y2 & num3 & en4 & "01"
set esJobNum3 to y2 & num3 & es4 & "01"

set enDialogText to "Signs: " & enJobNum as text
set esDialogText to "El Centinela: " & esJobNum as text

set enDialogText2 to "Signs: " & enJobNum2 as text
set esDialogText2 to "El Centinela: " & esJobNum2 as text

set enDialogText3 to "Signs: " & enJobNum3 as text
set esDialogText3 to "El Centinela: " & esJobNum3 as text

try
	if m = 12 then
		display alert "Job Numbers for " & (m as integer) & "/" & y & "
" & enDialogText & "
" & esDialogText & " 
" & "
" & "Job Numbers for " & "1/20" & y2 & "
" & enDialogText3 & "
" & esDialogText3 & "
" & "
" & "Process Number: 11420" buttons {"Cancel", "Ok"}
	else
		display alert "Job Numbers for " & (m as integer) & "/" & y & "
" & enDialogText & "
" & esDialogText & " 
" & "
" & "Job Numbers for " & m2 & "/" & y & "
" & enDialogText2 & "
" & esDialogText2 & "
" & "
" & "Process Number: 11420" buttons {"Cancel", "Ok"}
	end if
end try