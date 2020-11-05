//: [Previous](@previous) / [Next](@next)
//: # Blank canvas to copy
//:
//: ## To duplicate this page
//:
//: Place your cursor on line 19 of this page, press `Command-A` to select all text, and then `Command-C` to copy.
//:
//: Two-finger tap on the playground, then choose **New Playground Page**:
//:
//: ![new-playground](new-playground.png "New Playground")
//:
//: Move to the new page and press `Command-A` to select all text there, then `Command-V` to paste.
//:
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 19 and 20.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 28 to 36 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Color constants
let almostBlack = Color(hue: 282, saturation: 7, brightness: 16, alpha: 100)
let translucentPink = Color(hue: 328, saturation: 94, brightness: 80, alpha: 75)
let translucentYellow = Color(hue: 49, saturation: 96, brightness: 87, alpha: 75)
let translucentBlue = Color(hue: 194, saturation: 100, brightness: 78, alpha: 75)
let deepTan = Color(hue: 89, saturation: 6, brightness: 88, alpha: 50)


// Yellow Circles
canvas.drawShapesWithBorders = false

for x in stride(from: 25, through: 385, by: 36) {
    for y in stride(from: 215, through: 585, by: 36) {
    
        
        canvas.fillColor = translucentYellow
        canvas.drawEllipse(at: Point(x: x, y: y),
                           width: (160000 / (36 * 140) + 5) - ((x * (y - 200)) / (36 * 140)),
                           height: (160000 / (36 * 140) + 5) - ((x * (y - 200)) / (36 * 140)))
        
    }
}



// Pink Circles

for x in stride(from: 15, through: 375, by: 36) {
    
    x
    
    
    for y in stride(from: 215, through: 585, by: 36) {
    
        canvas.fillColor = translucentPink
        canvas.drawEllipse(at: Point(x: x, y: y),
                           width: (160000 / (36 * 140) + 5) - ((x * (y - 200)) / (36 * 140)),
                           height: (160000 / (36 * 140) + 5) - ((x * (y - 200)) / (36 * 140)))
        
    }
}

// Blue Circles

for x in stride(from: 20, through: 380, by: 36) {
    for y in stride(from: 224, through: 600, by: 36) {
    
        canvas.fillColor = translucentBlue
        canvas.drawEllipse(at: Point(x: x, y: y),
                           width: (160000 / (36 * 140) + 5) - ((x * (y - 200)) / (36 * 140)),
                           height: (160000 / (36 * 140) + 5) - ((x * (y - 200)) / (36 * 140)))
    }
}

// Texts
canvas.drawText(message: "the police", at: Point(x: 15, y: 120), size: 60, kerning: 0)
canvas.drawText(message: "friday & saturday", at: Point(x: 15, y: 40), size: 9, kerning: 0)
canvas.drawText(message: "october 20 & 21 1978", at: Point(x: 15, y: 25), size: 9, kerning: 0)


canvas.drawText(message: "at cbgb and omfug", at: Point(x: 110, y: 40), size: 9, kerning: 0)
canvas.drawText(message: "315 bowery at bleeker / new york city", at: Point(x: 110, y: 25), size: 9, kerning: 0)

canvas.drawText(message: "two nights", at: Point(x: 290, y: 40), size: 9, kerning: 0)
canvas.drawText(message: "first u.s. appearance!", at: Point(x: 290, y: 25), size: 9, kerning: 0)





// Grid
canvas.defaultLineWidth = 1
canvas.drawAxes(withScale: true, by: 50, color: almostBlack)

/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
