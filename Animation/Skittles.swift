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
class Skittles: NSObject, Sketchable {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    var canvas: Canvas
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        canvas.framesPerSecond = 1
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(at: Point(x: 0, y: 0), width: 500, height: 500)
        
        // Vertical lines
        canvas.lineColor = Color.purple
        canvas.defaultLineWidth = 3
        
        // loop to create the vertical
        let cellSize = 10
        for x in stride(from: 0,
                        through: 500,
                        by: cellSize) {
            
            // Generate the random 0 or 1
            let randomValue = Bool.random()
            
            // When the randomValue is 1 ( or true) we draw first
            if randomValue == true {
                
                // Draw the line first, then go every other
                for y in stride(from: cellSize,
                                through: 500 - cellSize,
                                by: cellSize * 2) {
                    
                    canvas.drawLine(from: Point(x: x, y: y),
                                    to: Point(x: x, y: y + cellSize))
                }
            } else {
                
                // Draw a gap first, then go every other
                for y in stride(from: 0,
                                through: 500,
                                by: cellSize * 2) {
                    
                    canvas.drawLine(from: Point(x: x, y: y),
                                    to: Point(x: x, y: y + cellSize))
                }
                
            }
            
        }
        
        // Horizontal lines
        canvas.lineColor = Color.blue
        canvas.defaultLineWidth = 3
        
        for y in stride(from: 0,
                        through: 500,
                        by: cellSize) {
            
            let randomValue = Bool.random()
            
            if randomValue == true {
                
                for x in stride(from: cellSize,
                                through: 500 - cellSize,
                                by: cellSize * 2) {
                    
                    canvas.drawLine(from: Point(x: x, y: y),
                                    to: Point(x: x + cellSize, y: y))
                }
            } else {
                for x in stride(from: 0,
                                through: 500,
                                by: cellSize * 2) {
                    
                    canvas.drawLine(from: Point(x: x, y: y),
                                    to: Point(x: x + cellSize, y: y))
                }
            }
        }
        
        
    }
    
}

