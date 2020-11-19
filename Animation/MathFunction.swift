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
    var k: CGFloat  // Horizontal stretch / compression / reflection
    var d: CGFloat  // Horizontal shift
    var c: CGFloat  // Vertical shift
    var hue: Float
    var type: FunctionType // Tell us what shape / math function to use
    
    
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
         type: FunctionType) {
        
        // I want every function to begin off the left side at the canvas
        self.lastPoint = Point(x: CGFloat(-1 * canvas.width / 2 - 5),
                               y: 0.0)
        
       // Initiallize all properties
        self.a = a
        self.k = k
        self.d = d
        self.c = c
        self.hue = hue
        self.type = type
        
    }
    
    // 3. Methods
    //
    // Here we describe what behaviour we want to have happen.
    func update(on canvas: Canvas, usingInputValue x: Int) {
        
        // Make sure each re-draw of all the functions begins off-screen
        if x == 0 {
            
            // I want every function to begin off the left side at the canvas
            self.lastPoint = Point(x: CGFloat(-1 * canvas.width / 2 - 5),
                                   y: 0.0)

        }
       
        // Start drawing after the first frame
        if x > 0 && x < canvas.width {

           
            
            // Determine the next x position
            let nextX: CGFloat = CGFloat(x - canvas.width / 2)

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
            }
           
        
            // Set the next point
            let nextPoint = Point(x: nextX, y: nextY)
//            print(nextPoint)
            
            // Set the line color
            canvas.lineColor = Color(hue: hue,
                                     saturation: 80,
                                     brightness: 90,
                                     alpha: 100)
            
            
            

            // Draw a line from the last point to the next point
            canvas.drawLine(from: lastPoint, to: nextPoint)
            
            // Set the "new" last point, now that the line is drawn
            lastPoint = nextPoint

        }
     
    }
    
    
}
