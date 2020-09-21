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
//let canvas = Canvas(width: preferredWidth, height: preferredHeight)
let canvas = Canvas(width: preferredWidth, height: preferredHeight, quality: Quality.Ultra)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 48, write a meaningful comment.
 
 You can remove the code on line 49 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.drawAxes(withScale: true)

// Dreamcatcher-head
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 5
canvas.drawEllipse(at: Point(x: 250, y: 450), width: 200, height: 200)

canvas.defaultBorderWidth = 3
canvas.drawEllipse(at: Point(x: 250, y: 450), width: 180, height: 180)

canvas.defaultBorderWidth = 3
canvas.drawEllipse(at: Point(x: 250, y: 450), width: 50, height: 50)

canvas.defaultLineWidth = 3
var vertices: [Point] = [] // empty list of vertices
vertices.append(Point(x: 250, y: 538)) // start
vertices.append(Point(x: 162, y: 450))
vertices.append(Point(x: 250, y: 362))
vertices.append(Point(x: 338, y: 450)) // end

canvas.drawCustomShape(with: vertices)

canvas.drawLine(from: Point(x: 250, y: 538), to: Point(x: 250, y: 475))
canvas.drawLine(from: Point(x: 250, y: 362), to: Point(x: 250, y: 425))
canvas.drawLine(from: Point(x: 162, y: 450), to: Point(x: 225, y: 450))
canvas.drawLine(from: Point(x: 338, y: 450), to: Point(x: 275, y: 450))


canvas.drawLine(from: Point(x: 250, y: 475), to: Point(x: 290, y: 498))
canvas.drawLine(from: Point(x: 275, y: 450), to: Point(x: 295, y: 490))

canvas.drawLine(from: Point(x: 250, y: 475), to: Point(x: 210, y: 498))
canvas.drawLine(from: Point(x: 225, y: 450), to: Point(x: 205, y: 490))

canvas.drawLine(from: Point(x: 225, y: 450), to: Point(x: 205, y: 410))
canvas.drawLine(from: Point(x: 250, y: 425), to: Point(x: 210, y: 402))

canvas.drawLine(from: Point(x: 250, y: 425), to: Point(x: 290, y: 402))
canvas.drawLine(from: Point(x: 275, y: 450), to: Point(x: 295, y: 410))



canvas.drawLine(from: Point(x: 210, y: 498), to: Point(x: 290, y: 498))
canvas.drawLine(from: Point(x: 205, y: 490), to: Point(x: 205, y: 410))
canvas.drawLine(from: Point(x: 210, y: 402), to: Point(x: 290, y: 402))
canvas.drawLine(from: Point(x: 295, y: 410), to: Point(x: 295, y: 490))



// feathers part
canvas.drawLine(from: Point(x: 170, y: 390), to: Point(x: 170, y: 260))
canvas.drawLine(from: Point(x: 200, y: 360), to: Point(x: 200, y: 200))
canvas.drawLine(from: Point(x: 250, y: 350), to: Point(x: 250, y: 140))
canvas.drawLine(from: Point(x: 300, y: 360), to: Point(x: 300, y: 200))
canvas.drawLine(from: Point(x: 330, y: 390), to: Point(x: 330, y: 260))


canvas.drawEllipse(at: Point(x: 170, y: 270), width: 35, height: 100)
canvas.drawEllipse(at: Point(x: 250, y: 150), width: 40, height: 110)
canvas.drawEllipse(at: Point(x: 330, y: 270), width: 35, height: 100)


canvas.defaultLineWidth = 2
for y in stride(from: 270, through: 305, by: 15) {
    canvas.drawLine(from: Point(x: 170, y: y), to: Point(x: 155, y: y - 15))
}
for y in stride(from: 155, through: 175, by: 15) {
    canvas.drawLine(from: Point(x: 250, y: y), to: Point(x: 270, y: y - 15))
}
for y in stride(from: 280, through: 305, by: 15) {
    canvas.drawLine(from: Point(x: 330, y: y), to: Point(x: 345, y: y - 15))
}




// beads part
canvas.drawShapesWithFill = true
canvas.drawEllipse(at: Point(x: 170, y: 340), width: 10, height: 10)
canvas.drawEllipse(at: Point(x: 170, y: 360), width: 7, height: 7)
canvas.drawEllipse(at: Point(x: 330, y: 360), width: 7, height: 7)
canvas.drawEllipse(at: Point(x: 330, y: 340), width: 10, height: 10)
canvas.drawEllipse(at: Point(x: 170, y: 350), width: 4, height: 4)
canvas.drawEllipse(at: Point(x: 330, y: 350), width: 4, height: 4)
canvas.drawEllipse(at: Point(x: 200, y: 310), width: 14, height: 14)
canvas.drawEllipse(at: Point(x: 300, y: 310), width: 14, height: 14)
canvas.drawEllipse(at: Point(x: 300, y: 260), width: 14, height: 14)
canvas.drawEllipse(at: Point(x: 200, y: 260), width: 14, height: 14)
canvas.drawEllipse(at: Point(x: 300, y: 275), width: 10, height: 10)
canvas.drawEllipse(at: Point(x: 200, y: 275), width: 10, height: 10)
canvas.drawEllipse(at: Point(x: 200, y: 285), width: 4, height: 4)
canvas.drawEllipse(at: Point(x: 300, y: 285), width: 4, height: 4)

canvas.drawEllipse(at: Point(x: 200, y: 205), width: 5, height: 5)
canvas.drawEllipse(at: Point(x: 300, y: 205), width: 5, height: 5)

canvas.drawEllipse(at: Point(x: 250, y: 245), width: 7, height: 7)
canvas.drawEllipse(at: Point(x: 250, y: 212), width: 9, height: 9)

canvas.drawEllipse(at: Point(x: 250, y: 280), width: 13, height: 13)


// charms part
var vertices2: [Point] = [] // empty list of vertices
vertices2.append(Point(x: 200, y: 200)) // start
vertices2.append(Point(x: 210, y: 185))
vertices2.append(Point(x: 201, y: 150))
vertices2.append(Point(x: 199, y: 150))
vertices2.append(Point(x: 190, y: 185)) // end

canvas.drawCustomShape(with: vertices2)

var vertices3: [Point] = [] // empty list of vertices
vertices3.append(Point(x: 300, y: 200)) // start
vertices3.append(Point(x: 310, y: 185))
vertices3.append(Point(x: 301, y: 150))
vertices3.append(Point(x: 299, y: 150))
vertices3.append(Point(x: 290, y: 185)) // end

canvas.drawCustomShape(with: vertices3)


var vertices4: [Point] = [] // empty list of vertices
vertices4.append(Point(x: 250, y: 240)) // start
vertices4.append(Point(x: 260, y: 230))
vertices4.append(Point(x: 250, y: 220))
vertices4.append(Point(x: 240, y: 230)) // end

canvas.drawCustomShape(with: vertices4)


// copy to clipboard
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
