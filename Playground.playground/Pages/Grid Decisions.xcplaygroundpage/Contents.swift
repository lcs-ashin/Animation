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
let preferredWidth = 500
let preferredHeight = 500
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
// Draw the axes with a scale
canvas.drawAxes(withScale: true, by: 50)

canvas.defaultLineWidth = 7
 // Draw a line of circles
for y in stride(from: 0, to: 500, by: 50) {
for x in stride(from: 0, to: 500, by: 50) {

        // Make a random number that will be 1 or 2
        let decisionMaker = Int.random(in: 1...2)


        if decisionMaker == 1 {
            // Draw a /
            canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 50, y: y + 50))
        } else {
            // Draw a \
            canvas.drawLine(from: Point(x: x, y: y + 50), to: Point(x: x + 50, y: y))
        }
    }

}




//Another Loop
//for x in stride(from: 0, through: 500, by: 50) {
//    for y in stride(from: 0, through: 500, by: 50) {
//        canvas.drawLine(from: Point(x: x, y: y), to: Point(x: x + 50, y: y + 50))
//        canvas.drawLine(from: Point(x: x + 10, y: y), to: Point(x: x + 40, y: y + 50))
//        canvas.drawLine(from: Point(x: x + 20, y: y), to: Point(x: x + 30, y: y + 50))
//        canvas.drawLine(from: Point(x: x + 30, y: y), to: Point(x: x + 20, y: y + 50))
//        canvas.drawLine(from: Point(x: x + 40, y: y), to: Point(x: x + 10, y: y + 50))
//        canvas.drawLine(from: Point(x: x + 50, y: y), to: Point(x: x , y: y + 50))
//        canvas.drawLine(from: Point(x: x + 50, y: y + 10), to: Point(x: x, y: y + 40))
//        canvas.drawLine(from: Point(x: x + 50, y: y + 20), to: Point(x: x, y: y + 30))
//        canvas.drawLine(from: Point(x: x + 50, y: y + 30), to: Point(x: x, y: y + 20))
//        canvas.drawLine(from: Point(x: x + 50, y: y + 40), to: Point(x: x, y: y + 10))
//
//    }
//}

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
 
