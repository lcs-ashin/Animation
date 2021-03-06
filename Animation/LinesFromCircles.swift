//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class LinesFromCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Create circles
    // Creating an empty array
    var circles: [ElementOne] = []
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        for x in stride(from: 50, through: 450, by: 100) {
            for y in stride(from: 50, through: 450, by: 100) {
               
                
                            
                            // Randomly pick a horizontal direction
                            var dx = 1
                            if Bool.random() == true {
                                dx *= -1
                            }
                            
                            // Randomly pick a vertical direction
                            var dy = 1
                            if Bool.random() == true {
                                dy *= -1
                            }
                            
                            // Actually add the circles to the array
                            circles.append(ElementOne(x: x,
                                                      y: y,
                                                      dx: dx,
                                                      dy: dy,
                                                      size: 50))
                            
                        
            }
        }
        
        
       
      
        // Slow down the animation
        canvas.framesPerSecond = 30
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Black background
//        let black = Color.init(hue: 280, saturation: 100, brightness: 0, alpha: 25)
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color.white 

       
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        
         
        
        // Draw updated circles
        for circle in circles {
            circle.update(on: canvas)
        }
        
        // Change direction when they overlap
        for i in 0...circles.count - 2 {
            for j in i + 1...circles.count - 1 {
                circles[i].changeDirectionWhenOverlapping(other: circles[j])
            }
        }
       
        
        // Draw a line between circles when they overlap
//        circles[0].drawLineWhenOVerlapping(other: circles[1], on: canvas)
//        circles[0].drawLineWhenOVerlapping(other: circles[2], on: canvas)
//        circles[0].drawLineWhenOVerlapping(other: circles[3], on: canvas)
//        circles[0].drawLineWhenOVerlapping(other: circles[4], on: canvas)
//        circles[1].drawLineWhenOVerlapping(other: circles[2], on: canvas)
//        circles[1].drawLineWhenOVerlapping(other: circles[3], on: canvas)
//        circles[1].drawLineWhenOVerlapping(other: circles[4], on: canvas)
//        circles[2].drawLineWhenOVerlapping(other: circles[3], on: canvas)
//        circles[2].drawLineWhenOVerlapping(other: circles[4], on: canvas)
//        circles[3].drawLineWhenOVerlapping(other: circles[4], on: canvas)
        
//        // loop for circles that do the checking
//        for i in 0...circles.count - 2 {
//            for j in i + 1...circles.count - 1 {
////                print("i is \(i) and j is \(j)")
//                circles[i].drawLineWhenOVerlapping(other: circles[j], on: canvas)
//            }
//        }
    }
    
}
