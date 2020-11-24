//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FunctionArt2: NSObject, Sketchable {
    
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Add many functions
    // This is now a list, or an array, of functions
    var redBand: [MathFunction] = []    // empty list
    var smallerRedBand: [MathFunction] = []
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        
        // Initialize the red bands
        for i in 1...20{
            
            // Create the function
            let newFunction = MathFunction(a: 1.0 + CGFloat(i),
                                           k: 5.0,
                                           d: 25.0 * CGFloat(i) - CGFloat(canvas.width / 2),
                                           c: -125.0,
                                           canvas: canvas,
                                           hue: 130 + Float(i) * 10,
                                           type: .sine)
            
            // Add ot to the list
            redBand.append(newFunction)
            
           
        }
        
        // Initialize the smaller red bands
        for i in -2...25{
            
            // Create the function
//            let newFunction = MathFunction(a: 20.0 - 2 * CGFloat(i),
//                                           k: 5.0,
//                                           d: 25.0 * CGFloat(i) - CGFloat(canvas.width / 2),
//                                           c: 200.0,
//                                           canvas: canvas,
//                                           hue: 130 + Float(i) * 10,
//                                           type: .sine,
//                                           delayInSeconds: 5)
            
            let newFunction = MathFunction(a: 25.0,
                                           k: 1.0/8.0,
                                           d: 20.0 * CGFloat(i) - CGFloat(canvas.width / 2),
                                           c: 30,
                                           canvas: canvas,
                                           hue: 120 + Float(i) * 5,
                                           type: .linearSine,
                                           delayInSeconds: 0,
                                           a2: 25.0,
                                           k2: 8.0,
                                           d2: 25.0 * CGFloat(i) - CGFloat(canvas.width / 2),
                                           c2: 20)

            
            // Add ot to the list
            smallerRedBand.append(newFunction)
            
           
        }

        
        
        // Speed
        canvas.framesPerSecond = 20
    }
    
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Clear the canvas
        // Opaque white, for now
        canvas.fillColor = Color(hue: 0,
                                 saturation: 0,
                                 brightness: 100,
                                 alpha: 50)
        
//        canvas.drawRectangle(at: Point(x: 0, y: 0),
//                             width: canvas.width,
//                             height: canvas.height)
        
        // What frame are we on?
        //        print(canvas.frameCount)
        
        canvas.defaultLineWidth = 2
        
        // Set the origin to be the middle of the canvas
        canvas.translate(to: Point(x: canvas.width / 2, y: canvas.height / 2))
       
        // Randomly change the vertical position
        // let newC = Int.random(in: -150...150)
        
        // Update the position of all smaller red bands
        for function in smallerRedBand {
            
            // function.c = CGFloat(newC)
            
            // Gradually change the vertical stretch / compression
//                function.a = 2 * sin(Degrees(canvas.frameCount).asRadians())
            
            function.update(on: canvas,
                            usingInputValue: canvas.frameCount)
        }
        
//        // Draw the entire list of functions all at once
//        for x in 0...canvas.width {
//
////            // Update the position of all large red bands
////            for function in redBand {
////
////                // function.c = CGFloat(newC)
////
////                // Gradually change the vertical stretch / compression
////                function.a = 200.0 * sin(Degrees(canvas.frameCount).asRadians() / 0.5)
////
////                function.update(on: canvas,
////                                usingInputValue: x)
////            }
//
//            // Update the position of all smaller red bands
//            for function in smallerRedBand {
//
//                // function.c = CGFloat(newC)
//
//                // Gradually change the vertical stretch / compression
////                function.a = 2 * sin(Degrees(canvas.frameCount).asRadians())
//
//                function.update(on: canvas,
//                                usingInputValue: x)
//            }
//
//
//        }
    }
    
    
}
