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

// COLORS
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let purple = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
let offWhite = Color(hue: 83, saturation: 4, brightness: 89, alpha: 100)

// Background
canvas.fillColor = black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)




// Arrows
//canvas.lineColor = purple
canvas.defaultLineWidth = 16

//canvas.drawLine(from: Point(x: 100, y: 100), to: Point(x: 150, y: 100))
//canvas.drawLine(from: Point(x: 100, y: 100), to: Point(x: 100, y: 150))
//canvas.drawLine(from: Point(x: 110, y: 110), to: Point(x: 155, y: 155))

for x in stride(from: 8, through: 400, by: 80) {
    for y in stride(from: 8, through: 400, by: 80) {
        
        if x == y {
            canvas.lineColor = offWhite
        } else {
            canvas.lineColor = purple
        }
        
    canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 50, y: y))
canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x, y: y + 50))
canvas.drawLine(from: Point(x: x + 10, y: y + 10), to: Point(x: x + 60, y: y + 60))
    
    }
}


// White lines
canvas.lineColor = offWhite
canvas.defaultLineWidth = 2
canvas.drawLine(from: Point(x: 0, y: 466), to: Point(x: 400, y: 466))
canvas.drawLine(from: Point(x: 0, y: 566), to: Point(x: 400, y: 566))

// Texts
canvas.textColor = offWhite
canvas.drawText(message: "the velvet underground", at: Point(x: 14, y: 416), size: 30, kerning: 0)

canvas.drawText(message: "first apperance in london", at: Point(x: 14, y: 551), size: 8, kerning: 0)
canvas.drawText(message: "the london college of printing", at: Point(x: 14, y: 540), size: 8, kerning: 0)

canvas.drawText(message: "with spring and pollyfloskin", at: Point(x: 150, y: 551), size: 8, kerning: 0)
canvas.drawText(message: "plus the great western light show", at: Point(x: 150, y: 540), size: 8, kerning: 0)

canvas.drawText(message: "thursday", at: Point(x: 300, y: 551), size: 8, kerning: 0)
canvas.drawText(message: "october 14 1971/ 8 pm", at: Point(x: 300, y: 540), size: 8, kerning: 0)

// Grid
//canvas.defaultLineWidth = 1
//canvas.drawAxes(withScale: true, by: 50, color: Color.white)

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
