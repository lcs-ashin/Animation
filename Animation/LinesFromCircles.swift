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
    
    // Position of circle
    var x: Int
    var y: Int
    var dx: Int
    var dy: Int
    
    var m: Int
    var n: Int
    var dm: Int
    var dn: Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        let point1 = Int.random(in: 0...500)
        let point2 = Int.random(in: 0...500)
        x = point1
        y = point2
        
        let point3 = Int.random(in: 0...500)
        let point4 = Int.random(in: 0...500)
        m = point3
        n = point4
        
        // Speed of the circles
        
       
        
        dx = 1
        dy = -1
        
       
        dm = -2
        dn = 2
        
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
         // Change position
        x += dx
        y += dy
        
        m += dm
        n += dn
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawShapesWithFill = false
        canvas.drawShapesWithBorders = true
        canvas.defaultBorderWidth = 2
        // Bigger circle
        if x > 500 {
            dx = Int.random(in: 1...3) * -1
        } else if x < 0 {
            dx = Int.random(in: 1...3)
        } else if y > 500 {
            dy = Int.random(in: 1...3) * -1
        } else if y < 0 {
            dy = Int.random(in: 1...3)
        }

//        canvas.drawEllipse(at: Point(x: x, y: y), width: 250, height: 250)

        // Smaller circle
        if m > 500 {
            dm = Int.random(in: 1...5) * -1
        } else if m < 0 {
            dm = Int.random(in: 1...5)
        } else if n > 500 {
            dn = Int.random(in: 1...5) * -1
        } else if n < 0 {
            dn = Int.random(in: 1...5)
        }

//        canvas.drawEllipse(at: Point(x: m, y: n), width: 100, height: 100)
        
        // Calculate the distance between circles
        let horizontal = x - m
        let vertical = y - n
        
        let d = sqrt(Double(horizontal * horizontal + vertical * vertical))
        
        // Map the distance between the circles to a brightness value
        let value = map(value: d, fromLower: 0, fromUpper: 175, toLower: 200, toUpper: 360)
        let value2 = map(value: d, fromLower: 0, fromUpper: 175, toLower: 40, toUpper: 80)
        let saturation = map(value: d, fromLower: 50, fromUpper: 175, toLower: 100, toUpper: 240)

//        print(brightness)
        
        // Draw a line
        let purple = Color(hue: Int(value), saturation: Int(saturation), brightness: 100, alpha: Int(value2))
        canvas.lineColor = purple
        canvas.defaultLineWidth = 7
        
        if d < 200 {
            
            canvas.drawLine(from: Point(x: x, y: y), to: Point(x: m, y: n))
            
        }
    }
    
}
