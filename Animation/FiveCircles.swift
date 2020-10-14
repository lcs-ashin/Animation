//
//  EmptySketch.swift
//  Animation
//
//  Created by Russell Gordon on 2020-06-08.
//  Copyright © 2020 Russell Gordon. All rights reserved.
//

import Foundation
import CanvasGraphics

// NOTE: This is a completely empty sketch; it can be used as a template.
class FiveCircles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // Position of circles
    var x: Int
    var y: Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Starting position
        x = 250
        y = 250
                
    }
    
    // Colours
    let purple = Color(hue: 309, saturation: 78, brightness: 64, alpha: 100)
    let orange = Color(hue: 8, saturation: 78, brightness: 93, alpha: 100)
    let green = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
    let blue = Color(hue: 200, saturation: 78, brightness: 64, alpha: 100)
    let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)


    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        // Change position
        x -= 1
        y += 1
        
        canvas.drawShapesWithBorders = false
        
        canvas.fillColor = purple
        canvas.drawEllipse(at: Point(x: y, y: 450), width: 50, height: 50)
        
        canvas.fillColor = orange
        canvas.drawEllipse(at: Point(x: x, y: 350), width: 50, height: 50)
        
        canvas.fillColor = green
        canvas.drawEllipse(at: Point(x: y, y: 250), width: 50, height: 50)
        
        canvas.fillColor = blue
        canvas.drawEllipse(at: Point(x: x, y: 150), width: 50, height: 50)
        
        canvas.fillColor = black
        canvas.drawEllipse(at: Point(x: y, y: 50), width: 50, height: 50)


        
    }
    
}

