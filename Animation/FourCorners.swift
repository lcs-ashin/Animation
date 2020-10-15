//
//  BasicSketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

class FourCorners: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circle
    var a : Int
    var b : Int
       
    var m : Int
    var n : Int
    
    var p : Int
    var q : Int
       
    var x : Int
    var y : Int
  
   
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        a = 245
        b = 255
        
        m = 245
        n = 245
        
        p = 255
        q = 245
        
        x = 255
        y = 255
        // Slow down the animation
        canvas.framesPerSecond = 60
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        a -= 1
        b += 1
        
        m -= 1
        n -= 1
         
        p += 1
        q -= 1
        
        x += 1
        y += 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawShapesWithFill = true
        canvas.drawShapesWithBorders = false
        
        let purple = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
        let orange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
        let green = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
        let blue = Color(hue: 200, saturation: 78, brightness: 64, alpha: 100)
        
        canvas.fillColor = green
        canvas.drawEllipse(at: Point(x: a, y: b), width: 50, height: 50)
        canvas.fillColor = orange
        canvas.drawEllipse(at: Point(x: m, y: n), width: 50, height: 50)
        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: p, y: q), width: 50, height: 50)
        canvas.fillColor = purple
        canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        
    }
    
}
