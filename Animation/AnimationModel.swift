//
//  AnimationModel.swift
//  Animation
//
//  Created by Roman on 12.01.2022.
//

import Foundation

struct Animation {
    var nameOfAnimation: String
    var nameOfCurve: String
    var numberOfForce: Float
    var numberOfDuration: Float
    var numberOfDelay: Float
}


extension Animation {
    
    static func getAnimation() -> Animation {
        Animation(nameOfAnimation: DataManager.shared.preset.randomElement()?.rawValue ?? "",
                  nameOfCurve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
                  numberOfForce: Float.random(in: 0...2),
                  numberOfDuration: Float.random(in: 0...2),
                  numberOfDelay: Float.random(in: 0...2))
    
    
    }
}
