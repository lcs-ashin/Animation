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
let deepOrange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let brightYellow = Color(hue: 46, saturation: 71, brightness: 98, alpha: 100)

// Backgrounds
canvas.drawShapesWithBorders = false
canvas.fillColor = offWhite
var vertices: [Point] = []
vertices.append(Point(x: 0, y: 600))
vertices.append(Point(x: 0, y: 200))
vertices.append(Point(x: 400, y: 600))

canvas.drawCustomShape(with: vertices)


canvas.fillColor = brightYellow
var vertices2: [Point] = []
vertices2.append(Point(x: 0, y: 200))
vertices2.append(Point(x: 400, y: 200))
vertices2.append(Point(x: 400, y: 600))

canvas.drawCustomShape(with: vertices2)

canvas.fillColor = deepOrange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 200)

// Loops
canvas.fillColor = deepOrange
for x in stride(from: 0.0, through: 400.0, by: 400.0/9.0) {
    for y in stride(from: 200.0, through: 600.0, by: 400.0/9.0) {
        var vertices3: [Point] = []
        vertices3.append(Point(x: x, y: y))
        vertices3.append(Point(x: x + 400.0/9.0, y: y + 400.0/9.0))
        vertices3.append(Point(x: x, y: y + 400.0/9.0))

        canvas.drawCustomShape(with: vertices3)
    }
}
   
// Texts
canvas.textColor = offWhite
canvas.drawText(message: "talking heads", at: Point(x: 20, y: 140), size: 40, kerning: 0)

canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 20, y: 30), size: 10, kerning: 0)

canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 20, y: 15), size: 10, kerning: 0)

canvas.drawText(message: "at cbgb and emfug", at: Point(x: 150, y: 30), size: 10, kerning: 0)
canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 15), size: 10, kerning: 0)

canvas.drawText(message: "also appearing:", at: Point(x: 280, y: 30), size: 10, kerning: 0)
canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 280, y: 15), size: 10, kerning: 0)


// Grid
//canvas.drawAxes(withScale: true, by: 50)

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
