//
//  DataManager.swift
//  Animation
//
//  Created by Roman on 12.01.2022.
//

import Foundation
import Spring

class DataManager {
    static let shared = DataManager()
    let curves = Spring.AnimationCurve.allCases
    let preset = Spring.AnimationPreset.allCases
    private init () {}
    
}
