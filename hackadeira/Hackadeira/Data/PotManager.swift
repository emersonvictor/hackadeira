//
//  PotManager.swift
//  Hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import Foundation

class PotManager {
    
    // MARK: - Properties
    let airHumidity: Double
    let airTemperature: Double
    let soilHumidity: Double
    let waterLevel: Double
    let rainfall: Double
    let luminosity: Double
    let isCovered: Bool
    
    let shared: PotManager = PotManager()
    
    private init() {
        self.airHumidity = 0
        self.airTemperature = 0
        self.soilHumidity = 0
        self.waterLevel = 0
        self.rainfall = 0
        self.luminosity = 0
        self.isCovered = false
    }
}
