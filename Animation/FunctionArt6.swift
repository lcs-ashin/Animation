//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt6: NSObject, Sketchable {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas

    // Add many functions
    // This is now a list, or an array, of functions
    var circle: [MathFunction] = []    // empty list

    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
             
        // Initialize circles
        for i in -3...3 {
            
            // Create the function
            let newFunction = MathFunction(a: 20,
                                           k: 0.25 * CGFloat(i),
                                           d: 0,
                                           c: 70 * CGFloat(i),
                                           canvas: canvas,
                                           hue: 300,
                                           type: .linearSine,
                                           shapeType: .heart)
            
            // Add it to the list
            circle.append(newFunction)
            
        }
        
        // Speed
        canvas.framesPerSecond = 30
    }

    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Clear the canvas
        // Opaque white, for now
        canvas.fillColor = Color(hue: 0,
                                 saturation: 0,
                                 brightness: 0,
                                 alpha: 30)
        
        canvas.drawRectangle(at: Point(x: 0, y: 0),
                             width: canvas.width,
                             height: canvas.height)

        // Set line width for paths
        canvas.defaultLineWidth = 1
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))

        // Update the position of all the circles
        for function in circle {
            
            function.update(on: canvas,
                            usingInputValue: canvas.frameCount)
        }

    
    }

}
