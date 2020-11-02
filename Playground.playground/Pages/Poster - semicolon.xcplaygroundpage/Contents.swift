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

// Colours
let beige = Color(hue: 14, saturation: 6, brightness: 83, alpha: 100)
let brown = Color(hue: 14, saturation: 40, brightness: 20, alpha: 100)
let blue = Color(hue: 222, saturation: 58, brightness: 50, alpha: 100)
let mustard = Color(hue: 43, saturation: 77, brightness: 80, alpha: 100)

let lightBrown = Color(hue: 15, saturation: 14, brightness: 56, alpha: 65)




// Background
canvas.fillColor = beige
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Light brown circles
for x in stride(from: 50, through: 350, by: 100) {
    for y in stride(from: 50, through: 350, by: 100) {
        
        canvas.fillColor = mustard
        canvas.drawEllipse(at: Point(x: x + 8, y: y + 1), width: 50, height: 50)
        canvas.lineColor = mustard
        canvas.defaultLineWidth = 5
        canvas.drawLine(from: Point(x: x + 29, y: y - 5), to: Point(x: x + 15, y: y - 32))

        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: x + 4, y: y - 1), width: 50, height: 50)
        canvas.lineColor = blue
        canvas.drawLine(from: Point(x: x + 25, y: y - 7), to: Point(x: x + 11, y: y - 34))
        
        canvas.fillColor = brown
        canvas.drawEllipse(at: Point(x: x, y: y - 3), width: 50, height: 50)
        
        canvas.lineColor = brown
        canvas.drawLine(from: Point(x: x + 21, y: y - 9), to: Point(x: x + 7, y: y - 36))
        
        canvas.fillColor = lightBrown
        canvas.drawEllipse(at: Point(x: x, y: y + 37), width: 50, height: 50)
       
    }
}

canvas.lineColor = lightBrown
canvas.defaultLineWidth = 2
canvas.drawLine(from: Point(x: 0, y: 420), to: Point(x: 400, y: 420))
canvas.drawLine(from: Point(x: 0, y: 491), to: Point(x: 400, y: 491))
canvas.drawLine(from: Point(x: 0, y: 565), to: Point(x: 400, y: 565))
canvas.drawLine(from: Point(x: 0, y: 547), to: Point(x: 400, y: 547))

// Texts
canvas.textColor = mustard
canvas.drawText(message: "Semicolon;", at: Point(x: 33, y: 424), size: 60, kerning: 0)

canvas.textColor = blue
canvas.drawText(message: "Semicolon;", at: Point(x: 29, y: 422), size: 60, kerning: 0)

canvas.textColor = brown
canvas.drawText(message: "Semicolon;", at: Point(x: 25, y: 420), size: 60, kerning: 0)

canvas.drawText(message: "october 19th 6 pm", at: Point(x: 25, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "special album", at: Point(x: 310, y: 550), size: 10, kerning: 0)

// Grid
//canvas.defaultLineWidth = 1
//canvas.drawAxes(withScale: true, by: 50, color: brown)

canvas.copyToClipboard()

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
