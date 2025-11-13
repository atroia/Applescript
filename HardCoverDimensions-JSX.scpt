//Creator: Aaron Troia
//Creation Date: 11/12/25
//Version: 0.1

/*
I created this JSX because I was curious how to use JS to automate MacOS
*/

//| Bleed (.125) | Wrap (.625) | Board (5.75) | Fold (.375) || Spine ( x + .125) || Fold (.375) | Board (5.75) | Wrap (.625) | Bleed (.125) |

const app = Application.currentApplication()
app.includeStandardAdditions = true

// constants
const wrap = 1.25;
const fold = 0.75;
const bleed = 0.25;

// Get Width
const wText = "What is your width in inches: ";
var bWidthDialog = app.displayDialog(wText, {
	defaultAnswer:'',
    buttons: ["Cancel", "OK"],
	defaultButton: "OK",
})

// Get Height
const hText = "What is your height in inches: ";
var bHeightDialog = app.displayDialog(hText, {
	defaultAnswer:'',
    buttons: ["Cancel", "OK"],
	defaultButton: "OK",
})

// Get Spine Width
const sText = "What is your spine width in inches: ";
var sWidthDialog = app.displayDialog(sText, {
	defaultAnswer:'',
    buttons: ["Cancel", "OK"],
	defaultButton: "OK",
})

// text returned from dialogs
let bWidthReturned = bWidthDialog.textReturned;
let bHeightReturned = bHeightDialog.textReturned;
let sWidthReturned = sWidthDialog.textReturned;

// convert text returned from string to number
let bWidth = Number(bWidthReturned);
let bHeight = Number(bHeightReturned);
let sWidth = Number(sWidthReturned);

// totals
let boardTotal = ((bWidth - 0.25) * 2) + wrap;
let heightTotal = (bHeight + 0.25) + wrap;
let spineTotal = sWidth + .125;
let widthTotal = boardTotal + fold + spineTotal;
let softWidth = (bWidth * 2) + sWidth;
let widthTotalBleed = widthTotal + bleed;
let heightTotalBleed = heightTotal + bleed;

// OUTPUT
let dialogText = app.displayAlert("Dimensions\r\rSoftcover:\r" + softWidth + " x " + bHeight + "\r\rHardcover Without Bleed:\r" + widthTotal + " x " + heightTotal + "\r\rHardcover With Bleed:\r" + widthTotalBleed + " x " + heightTotalBleed);

