//
//  Plant.swift
//  Hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import Foundation

class Plant {
    
    // MARK: - Properties
    let boughtAt: Date
    let scientificName: String
    let commonName: String
    let nickname: String?
    let description: String
    let minTemperature: Double
    let maxTemperature: Double
    let minHumidity: Double
    let maxHumidity: Double
    let waterLog: [Date]
    let compostLog: [Date]
    
    init(boughtAt: Date,
         scientificName: String,
         nickname: String,
         description: String,
         minTemperature: Double,
         maxTemperature: Double,
         minHumidity: Double,
         maxHumidity: Double) {
        
        self.boughtAt = boughtAt
        self.scientificName = scientificName
        self.commonName = commonName
        self.nickname = nickname
        self.description = description
        self.minTemperature = minTemperature
        self.maxTemperature = maxTemperature
        self.minHumidity = minHumidity
        self.maxHumidity = maxHumidity
        self.waterLog = []
        self.compostLog = []
    }
}
