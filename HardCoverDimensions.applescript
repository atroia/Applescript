--Creator: Aaron Troia
--Creation Date: 2/8/17
--Modified Date: 11/12/25

(*
I created this applescript because I can never remember the dimensions that are needed 
for hard cover book dimensions, considering there are only two or three variables and the rest
are constants, I figured this script would take some of the guess work out of the process.
*)

--| Bleed (.125) | Wrap (.625) | Board (5.75) | Fold (.375) || Spine ( x + .125) || Fold (.375) | Board (5.75) | Wrap (.625) | Bleed (.125) |

set wrap to 1.25 -- wrap is .625" * 2 - the outside area beyond the board width
set fold to 0.75 -- fold is .375" * 2 - on both sides of the spine, between the board and the spine
set bleed to 0.25 -- bleed is .125" * 2

(* WIDTH *)
display dialog "What is your width in inches: " default answer ""
-- bwidth is the board width
set bwidth to text returned of result
-- since there are two boards (front and back) this number is multiplied by two
-- the formula takes the board width formula which subtracts 0.25" before multiplying by two
set boardTotal to ((bwidth - 0.25) * 2) + wrap

(* HEIGHT *)
display dialog "what is your height in inches: " default answer ""
set bheight to text returned of result
-- the formula takes the board width formula which adds 0.25" before multiplying by two
set heightTotal to (bheight + 0.25) + wrap

-- SPINE
display dialog "What is your spine width (book bulk) in inches (decimal): " default answer ""
-- swidth is the book bulk width of the spine
set swidth to text returned of result
-- the spine needs 1/16" added to each side of the book bulk width, so 1/8" (.125") total
set spineTotal to swidth + 0.125

set widthTotal to boardTotal + fold + spineTotal
set softWidth to (bwidth * 2) + swidth

set dialogText to ("Dimensions 

Softcover: 
" & softWidth & " x " & bheight & "

Hardcover Without Bleed: 
" & widthTotal & " x " & heightTotal & "

Hardcover With Bleed: 
" & widthTotal + bleed & " x " & heightTotal + bleed) as text
display alert dialogText buttons {"Cancel", "Ok"}
