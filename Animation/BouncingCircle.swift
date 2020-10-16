//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class BouncingCircle: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var x: Int
    var y : Int
    var dx : Int
    var dy : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        
          // Random number
        let point1 = Int.random(in: 0...500)
        let point2 = Int.random(in: 0...500)
       
        x = point1
        y = point2
        
        // Start moving to the right
        dx = 1
        
        // Start moving up
        dy = 1
        
        // Slow down the animation
        canvas.framesPerSecond = 80
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        
        // Change position
        x += dx
        y += dy
        
        // Draw an ellipse in the middle of the canvas
        let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        let white = Color(hue: 100, saturation: 0, brightness: 100, alpha: 100)
     
        canvas.fillColor = white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        
        if x > 500 {
            dx = -1
        } else if x < 0 {
            dx = 1
        } else if y > 500 {
            dy = -1
        } else if y < 0 {
            dy = 1
        }
        canvas.fillColor = black
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
    
    
}
}
