//
//  Game.swift
//  Bullseye
//
//  Created by A.M. Student on 1/6/21.
//

import Foundation


struct Game {
    var target : Int = 42
    var score: Int = 0
    var round: Int = 1
    
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
