set thePath to choose folder with prompt "Select folder to rename files in:"
set ext to text returned of (display dialog "Extenstion to Replace:" default answer "html")
set extNew to text returned of (display dialog "Replace  with:" default answer "php")

tell application "Finder" to set name extension of (files of thePath whose name extension is ext) to extNew