//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 8 * 50
let preferredHeight = 8 * 50
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
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
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */

// Draw the six lines to start the design (bottom-left corner)
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 7 * 50), to: Point(x: 1 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 6 * 50), to: Point(x: 2 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 5 * 50), to: Point(x: 3 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 4 * 50), to: Point(x: 4 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 3 * 50), to: Point(x: 5 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 2 * 50), to: Point(x: 6 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 1 * 50), to: Point(x: 7 * 50, y: 0))

canvas.drawAxes()
canvas.drawLine(from: Point(x: 8 * 50, y: 1 * 50), to: Point(x: 1 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 8 * 50, y: 2 * 50), to: Point(x: 2 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 8 * 50, y: 3 * 50), to: Point(x: 3 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 8 * 50, y: 4 * 50), to: Point(x: 4 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 8 * 50, y: 5 * 50), to: Point(x: 5 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 8 * 50, y: 6 * 50), to: Point(x: 6 * 50, y: 0))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 8 * 50, y: 7 * 50), to: Point(x: 7 * 50, y: 0))

canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 1 * 50), to: Point(x: 1 * 50, y: 8 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 2 * 50), to: Point(x: 2 * 50, y: 8 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 3 * 50), to: Point(x: 3 * 50, y: 8 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 4 * 50), to: Point(x: 4 * 50, y: 8 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 5 * 50), to: Point(x: 5 * 50, y: 8 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 6 * 50), to: Point(x: 6 * 50, y: 8 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 0, y: 7 * 50), to: Point(x: 7 * 50, y: 8 * 50))

canvas.drawAxes()
canvas.drawLine(from: Point(x: 1 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 7 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 2 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 6 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 3 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 5 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 4 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 4 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 5 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 3 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 6 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 2 * 50))
canvas.drawAxes()
canvas.drawLine(from: Point(x: 7 * 50, y: 8 * 50), to: Point(x: 8 * 50, y: 1 * 50))

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
