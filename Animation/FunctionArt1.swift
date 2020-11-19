//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt1: NSObject, Sketchable {
    
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Add many functions
    // This is now a list, or an array, of functions
    var functions: [MathFunction] = []    // empty list
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        
        // Initialize many spirals
        for i in 1...20{
            
            // Create the function
            let newFunction = MathFunction(a: 20.0 - 2 * CGFloat(i),
                                           k: 5.0,
                                           d: 25.0 * CGFloat(i) - CGFloat(canvas.width / 2),
                                           c: 5.0,
                                           canvas: canvas,
                                           hue: 130 + Float(i) * 10,
                                           type: .absoluteValue)
            
            // Add ot to the list
            functions.append(newFunction)
            
           
        }
        
        
        // Speed
        canvas.framesPerSecond = 60
    }
    
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        // What frame are we on?
        //        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 1
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
        
        // Update the position of that one spiral
        for function in functions {
            function.update(on: canvas,
                            usingInputValue: canvas.frameCount)
        }
    }
    
    
}
