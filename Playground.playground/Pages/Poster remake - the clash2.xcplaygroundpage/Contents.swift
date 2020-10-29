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
let blue = Color(hue: 220, saturation: 75, brightness: 70, alpha: 55)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 32)
let deepRed = Color(hue: 5, saturation: 85, brightness: 94, alpha: 100)

// Red background
canvas.fillColor = deepRed
canvas.drawRectangle(at: Point(x: 0, y: 0),
                     width: 400,
                     height: 600)

// White squares
canvas.fillColor = offWhite
canvas.drawShapesWithBorders = false

for x in stride(from: 0, through: 300, by: 100) {
   
    for y in stride(from: 0, through: 300, by: 100) {

        var vertices: [Point] = []
        vertices.append(Point(x: x + 50,
                              y: y + 100))
        vertices.append(Point(x: x,
                              y: y + 50))
        vertices.append(Point(x: x + 50,
                              y: y))
        vertices.append(Point(x: x + 100,
                              y: y + 50))

        canvas.drawCustomShape(with: vertices)

    }
}


// Red circles
canvas.fillColor = deepRed

for x in stride(from: 0,
                through: 300,
                by: 100) {
  
    for y in stride(from: 0,
                    through: 300,
                    by: 100) {
   
        canvas.drawEllipse(at: Point(x: x + 50,
                                     y: y + 50),
                           width: 65,
                           height: 65)
    }
}

// Blue circles
canvas.fillColor = blue

for x in stride(from: 0,
                through: 300,
                by: 100) {
    
    for y in stride(from: 0,
                    through: 300,
                    by: 100) {
   
        canvas.drawEllipse(at: Point(x: x + 70,
                                     y: y + 30),
                           width: 65,
                           height: 65)
    
    }
    
}

// Gray circles
canvas.fillColor = black

for x in stride(from: 0,
                through: 300,
                by: 100) {
    
    for y in stride(from: 0,
                    through: 300,
                    by: 100) {
        
        canvas.drawEllipse(at: Point(x: x + 120,
                                     y: y - 20),
                           width: 65,
                           height: 65)
        
    }
}

// Texts
canvas.textColor = Color.black

canvas.drawText(message: "the clash", at: Point(x: 20, y: 400), size: 60, kerning: 0)

canvas.drawText(message: "$2.25 / friday", at: Point(x: 20, y: 570), size: 7, kerning: 0)
canvas.drawText(message: "december 22 1978", at: Point(x: 20, y: 555), size: 7, kerning: 0)

canvas.drawText(message: "christmas party", at: Point(x: 100, y: 570), size: 7, kerning: 0)
canvas.drawText(message: "with the slits and the innocents", at: Point(x: 100, y: 555), size: 7, kerning: 0)

canvas.drawText(message: "friars aylesbury at maxwell hall", at: Point(x: 250, y: 570), size: 7, kerning: 0)
canvas.drawText(message: "aylesbury, buckinghamshire, england", at: Point(x: 250, y: 555), size: 7, kerning: 0)


// Grid
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
