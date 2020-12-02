//
//  IndividualSpiral.swift
//  Animation
//
//  Created by Eunbi Shin on 2020-11-09.
//  Copyright © 2020 Royal St. George's College. All rights reserved.
//

import Foundation
import CanvasGraphics

// Enumeration
// Defining a list of choices that you wnat the user of your to be able to select from
enum FunctionType {
    case linear
    case quadratic
    case cubic
    case squareRoot
    case absoluteValue
    case exponential
    case reciprocal
    case sine
    case linearSine
}

// Shape Type
enum ShapeType {
    case none
    case star
    case circle
    case circleInCircle
    case snake
    case heart
}

// Define a class that creates a mathmatical function
// - a "class" is just a way to group data (properties) together
//   with behaviour (things that we want to happeen)
class MathFunction {
    
    // 1. Prperties
    //
    //    A property is something that descibes the item.
    //    e.g.: A student at LCS has a house, a hair color, a height
    var lastPoint: Point
    var a: CGFloat  // Vertical stretch / compression / reflection
    var a2: CGFloat  // Vertical stretch / compression / reflection
    var k: CGFloat  // Horizontal stretch / compression / reflection
    var k2: CGFloat  // Horizontal stretch / compression / reflection
    var d: CGFloat  // Horizontal shift
    var d2: CGFloat  // Horizontal shift
    var c: CGFloat  // Vertical shift
    var c2: CGFloat  // Vertical shift
    
    var hue: Float
    var type: FunctionType // Tell us what shape / math function to use
    var delayInSeconds: Int // How much of a delay to have before the aniamtion begins
    var shapeType: ShapeType // What shape to draw along the path, if any
    
    
    // 1. Initializer
    //
    //    An initializer has one job: give each property an initial
    //    value
    init(a: CGFloat,
         k: CGFloat,
         d: CGFloat,
         c: CGFloat,
         canvas: Canvas,
         hue: Float,
         type: FunctionType,
         delayInSeconds: Int = 0,
         a2: CGFloat = 1.0,
         k2: CGFloat = 1.0,
         d2: CGFloat = 0.0,
         c2: CGFloat = 0.0,
         shapeType: ShapeType = .none) {
        
        // I want every function to begin off the left side at the canvas
        self.lastPoint = Point(x: CGFloat(-1 * canvas.width / 2 - 5),
                               y: 0.0)
        
        // Initiallize all properties
        self.a = a
        self.k = k
        self.d = d
        self.c = c
        self.a2 = a2
        self.k2 = k2
        self.d2 = d2
        self.c2 = c2
        self.hue = hue
        self.type = type
        self.delayInSeconds = delayInSeconds
        self.shapeType = shapeType
        
    }
    
    // 3. Methods
    //
    // Here we describe what behaviour we want to have happen.
    func update(on canvas: Canvas, usingInputValue x: Int) {
        
        // Only draw on the canvas after the delay in seconds has been reached
        if canvas.frameCount > delayInSeconds * canvas.frameCount {
            
            // Make sure each re-draw of all the functions begins off-screen
            if x == 0 {
                
                // I want every function to begin off the left side at the canvas
                self.lastPoint = Point(x: CGFloat(-1 * canvas.width / 2 - 5),
                                       y: 0.0)
                
            }
            
            // Start drawing after the first frame
            if x > 0 && x < canvas.width + canvas.width / 10 {
                
                
                
                // Determine the next x position
                let nextX: Degrees = Degrees(x - canvas.width / 2)
                
                // Determine the next y position
                var nextY: CGFloat = 0.0
                
                // Set y using a quadratic funtion
                switch type {
                case .linear:
                    nextY = a * ((nextX - d) / k) + c
                case .quadratic:
                    nextY = a * pow((nextX - d) / k, 2.0) + c
                case .cubic:
                    nextY = a * pow((nextX - d) / k, 3.0) + c
                case .squareRoot:
                    nextY = a * sqrt((nextX - d) / k) + c
                case .absoluteValue:
                    nextY = a * abs((nextX - d) / k) + c
                case .exponential:
                    nextY = a * exp((nextX - d) / k) + c
                case .reciprocal:
                    nextY = a * 1.0/((nextX - d) / k) + c
                case .sine:
                    nextY = a * sin((nextX.asRadians() - d) / k) + c
                case .linearSine:
                    nextY = a * sin((nextX.asRadians() - d) / k) + c +  a2 * ((nextX - d2) / k2) + c2
                }
                
                
                // Set the next point
                let nextPoint = Point(x: nextX, y: nextY)
                //            print(nextPoint)
                
                // Set the line color
                canvas.lineColor = Color(hue: hue,
                                         saturation: 80,
                                         brightness: 90,
                                         alpha: 100)
                
                
                
                
                // Whether to draw a shape or not
                if shapeType == .none {
                    
                    // Draw a line fron the last point to the next point
                    canvas.drawLine(from: lastPoint, to: nextPoint)
                    
                } else if shapeType == .star{
                    
                    // Yellow color
                    canvas.fillColor = Color(hue: 56, saturation: 70, brightness: 90, alpha: 80)
                    canvas.drawShapesWithFill = true
                    
                    var star: [Point] = []
                    star.append(Point(x: nextX + 0, y: nextY - 50))
                    star.append(Point(x: nextX + 14, y: nextY - 20))
                    star.append(Point(x: nextX + 47, y: nextY - 15))
                    star.append(Point(x: nextX + 23, y: nextY + 7))
                    star.append(Point(x: nextX + 29, y: nextY + 40))
                    star.append(Point(x: nextX + 0, y: nextY + 25))
                    star.append(Point(x: nextX - 29, y: nextY + 40))
                    star.append(Point(x: nextX - 23, y: nextY + 7))
                    star.append(Point(x: nextX - 47, y: nextY - 15))
                    star.append(Point(x: nextX - 14, y: nextY - 20))
                    canvas.drawCustomShape(with: star)
                } else if shapeType == .circle {
                    
                    canvas.fillColor = Color(hue: 0 + (Int(nextX) + canvas.width / 2) * 5,
                                             saturation: 0 + (Int(nextX) + canvas.width / 2) * 10,
                                             brightness: 100,
                                             alpha: 100)
                    canvas.drawShapesWithFill = true
                    
                    canvas.drawEllipse(at: Point(x: nextX, y: nextY), width: 50, height: 50)
                    
                } else if shapeType == .circleInCircle {
                    
                    // Draw the "tube"
                    canvas.drawShapesWithFill = true
                    canvas.drawShapesWithBorders = true

                    canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 90, alpha: 10)
                    
                    canvas.drawEllipse(at: Point(x: nextX, y: nextY), width: 50, height: 50)

                    // Draw the "fill" circle
                    canvas.fillColor = Color(hue: 0 + (Int(nextX) + canvas.width / 2) * 5,
                                             saturation: 0 + (Int(nextX) + canvas.width / 2) * 10,
                                             brightness: 100,
                                             alpha: 100)
                    
                    let xOffset = Degrees.random(in: -15...15)
                    let yOffset = Degrees.random(in: -15...15)

                    canvas.drawShapesWithBorders = false
                    canvas.drawEllipse(at: Point(x: nextX + xOffset, y: nextY + yOffset), width: 10, height: 10)
                    
                } else if shapeType == .snake {
                    
                    canvas.drawShapesWithFill = true
                    canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 60)
                    canvas.borderColor = Color(hue: 0, saturation: 100, brightness: 80, alpha: 100)
                    if Int(nextX) % 5 == 0 {
                    canvas.drawEllipse(at: Point(x: nextX, y: nextY), width: 20, height: 20)
                    canvas.drawEllipse(at: Point(x: nextX, y: nextY - 10), width: 20, height: 20)
                    canvas.drawEllipse(at: Point(x: nextX, y: nextY - 20), width: 20, height: 20)
                    }
                    
                } else if shapeType == .heart {
                    
                    canvas.fillColor = Color(hue: .random(in: 0...40), saturation: 100, brightness: 100, alpha: 100)
                    canvas.drawShapesWithBorders = false
                    
                    // first hearts
                    canvas.drawEllipse(at: Point(x: nextX, y: nextY), width: 20, height: 20)
                    canvas.drawEllipse(at: Point(x: nextX + 20, y: nextY), width: 20, height: 20)
                    
                    var heart: [Point] = []
                    heart.append(Point(x: nextX - 10.1, y: nextY - 3))
                    heart.append(Point(x: nextX + 10, y: nextY - 25))
                    heart.append(Point(x: nextX + 30.1, y: nextY - 3))
                    canvas.drawCustomShape(with: heart)
                    
                    // second hearts
                    canvas.fillColor = Color(hue: .random(in: 40...80), saturation: 100, brightness: 100, alpha: 100)
                    
                    canvas.drawEllipse(at: Point(x: nextX - 100, y: nextY - 100), width: 20, height: 20)
                    canvas.drawEllipse(at: Point(x: nextX + 20 - 100, y: nextY - 100), width: 20, height: 20)
                    
                    var heart2: [Point] = []
                    heart2.append(Point(x: nextX - 10.1 - 100, y: nextY - 3 - 100))
                    heart2.append(Point(x: nextX + 10 - 100, y: nextY - 25 - 100))
                    heart2.append(Point(x: nextX + 30.1 - 100, y: nextY - 3 - 100))
                    canvas.drawCustomShape(with: heart2)
                    
                }
                
                // Set the "new" last point, now that the line is drawn
                lastPoint = nextPoint
                
            }
        }
        
        
    }
    
    
}
