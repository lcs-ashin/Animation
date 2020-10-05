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
let pink = Color(hue: 338, saturation: 83, brightness: 89, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
let beige = Color(hue: 69, saturation: 6, brightness: 87, alpha: 100)


// Background
canvas.fillColor = pink
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)



// Squares
canvas.fillColor = black
canvas.drawShapesWithFill = false

canvas.drawShapesWithBorders = true
canvas.borderColor = pink


// Bottom left corner
for x in stride(from: 400, through: 0, by: -60) {
    
    x
    

    if x % 40 == 0 {
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
    }
    
    canvas.drawRectangle(at: Point(x: 0, y: 0),
                         width: x,
                         height: x,
                         anchoredBy: AnchorPosition.centre, borderWidth: 15)
    
    
    
}

// Bottom right corner
for x in stride(from: 400, through: 0, by: -60) {
    
    x
    

    if x % 40 == 0 {
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
    }
    
    canvas.drawRectangle(at: Point(x: 400, y: 0),
                         width: x,
                         height: x,
                         anchoredBy: AnchorPosition.centre, borderWidth: 15)
    
    
    
}

// Top right corner
for x in stride(from: 400, through: 0, by: -60) {
    
    x
    

    if x % 40 == 0 {
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
    }
    
    canvas.drawRectangle(at: Point(x: 400, y: 400),
                         width: x,
                         height: x,
                         anchoredBy: AnchorPosition.centre, borderWidth: 15)
    
    
    
}

// Top left corner
for x in stride(from: 400, through: 0, by: -60) {
    
    x
    

    if x % 40 == 0 {
        canvas.borderColor = black
    } else {
        canvas.borderColor = beige
    }
    
    canvas.drawRectangle(at: Point(x: 0, y: 400),
                         width: x,
                         height: x,
                         anchoredBy: AnchorPosition.centre, borderWidth: 15)
    
    
    
}




// Rectangle
canvas.drawShapesWithFill = true
canvas.fillColor = pink
canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)


// Texts
canvas.textColor = beige
canvas.drawText(message: "the runaways", at: Point(x: 15, y: 410), size: 53, kerning: 0)

canvas.textColor = black
canvas.drawText(message: "friday", at: Point(x: 15, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "august 19 1977", at: Point(x: 15, y: 535), size: 10, kerning: 0)
canvas.drawText(message: "tickets $4.50", at: Point(x: 15, y: 520), size: 10, kerning: 0)

canvas.drawText(message: "with", at: Point(x: 110, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "special guests", at: Point(x: 110, y: 535), size: 10, kerning: 0)
canvas.drawText(message: "wolfgang", at: Point(x: 110, y: 520), size: 10, kerning: 0)

canvas.drawText(message: "at ben h. lewis hall", at: Point(x: 290, y: 550), size: 10, kerning: 0)
canvas.drawText(message: "3443 orange st.", at: Point(x: 290, y: 535), size: 10, kerning: 0)
canvas.drawText(message: "riverside, california", at: Point(x: 290, y: 520), size: 10, kerning: 0)

// Grid
//canvas.drawAxes(withScale: true, by: 50)
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
