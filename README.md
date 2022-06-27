# Applescripts
Just some applescript files that have helped speed up my workflow

**createAssignmentsFromList.scpt**

Script to create InCopy Assignments in InDesign from a list in a text file (it might still have some bugs that I need to work out but so far it's doing what I need it to do).

Simply save a list (with hard returns) in a text file of all the assignment names you would like in your document (Frontmatter, Preface, Chapter 1, Chapter 2, etc.) and run the script. The script will prompt you to select the text file you saved and then it will create a new assignment for each line item in the file.


**getPath.scpt**

Simple script to find the POSIX file path of a selected file. I use this with some workflows in Alfred. **_Note:_** This was copied and slightly modified from a KeyboardMaestro forum post. The url to that post is https://forum.keyboardmaestro.com/t/getting-the-path-of-currently-selected-file-in-finder/1507/2


**Mount Drive and Search**

This script will first search for the specific mounted network drive. If the network drive is not mounted, it will mount the drive and search prompt (Alfred) will appear. If the network drive is mounted, the search prompt (Alfred) will appear.


**Mount Drive and Search 2**

This script will first search for the specific mounted network drive. If the network drive is not mounted, it will mount the drive and the search prompt (Alfred) will appear. If the network drive is mounted, the search prompt (Alfred) will appear. This script will also make a list of the folders in the parent folder of the drive and list them in a window prompt. Once the folder has been selected from the list the search prompt (Alfred) will appear and you can search that folder from Alfred.


**Check Digit Check**

ISBN-13 Check Digit Check. Enter your 12 ISBN digits and you will get your check digit back.

**Create Folder Structure**

Create "Body" and "Cover" folders in parent folder.
