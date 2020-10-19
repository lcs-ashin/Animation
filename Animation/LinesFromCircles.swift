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
    var small: MovingCircle
    var large: MovingCircle
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        small = MovingCircle(x: Int.random(in: 0...500),
                             y: Int.random(in: 0...500),
                             dx: 1,
                             dy: -1,
                             size: 100)
       
        large = MovingCircle(x: Int.random(in: 0...500),
                             y: Int.random(in: 0...500),
                             dx: 2,
                             dy: -2,
                             size: 250)
       
      
        // Slow down the animation
        canvas.framesPerSecond = 80
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // White background
        let white = Color.init(hue: 100, saturation: 0, brightness: 100, alpha: 5)
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        canvas.fillColor = white

        if canvas.frameCount % 10 == 0 {
            canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        }
         
        
        // Draw updated circle
        small.update(on: canvas)
        large.update(on: canvas)
        
        // Calculate the distance between circles
        let d = small.distanceTo(other: large)
        
        
        // Map the distance between the circles to a brightness value
        let value = map(value: d, fromLower: 0, fromUpper: 175, toLower: 200, toUpper: 360)
        let value2 = map(value: d, fromLower: 0, fromUpper: 175, toLower: 40, toUpper: 80)
        let saturation = map(value: d, fromLower: 50, fromUpper: 175, toLower: 100, toUpper: 240)

//        print(brightness)
        
        // Draw a line
        let purple = Color(hue: Int(value), saturation: Int(saturation), brightness: 100, alpha: Int(value2))
        canvas.lineColor = purple
        canvas.defaultLineWidth = 7
        
        if d < 175 {
            
            canvas.drawLine(from: Point(x: small.x, y: small.y), to: Point(x: large.x, y: large.y))
            
        }
    }
    
}
