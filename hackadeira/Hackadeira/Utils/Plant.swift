//
//  Plant.swift
//  Hackadeira
//
//  Created by Emerson Victor on 09/11/19.
//  Copyright © 2019 hackadeira. All rights reserved.
//

import Foundation

enum Status {
    case red, yellow, green
}

class Plant {
    
    // MARK: - Properties
    let imageNamed: String
    let boughtAt: Date
    let scientificName: String
    let commonName: String
    let nickname: String?
    let description: String
    let minTemperature: Double
    let maxTemperature: Double
    let minHumidity: Double
    let maxHumidity: Double
    let status: Status
    let waterLog: [Date]
    let compostLog: [Date]
    let airHumidity: Double
    let airTemperature: Double
    let soilHumidity: Double
    let luminosity: String
    let isCovered: Bool
    
    init(imageNamed: String,
         boughtAt: Date,
         scientificName: String,
         commonName: String,
         nickname: String,
         description: String,
         minTemperature: Double,
         maxTemperature: Double,
         minHumidity: Double,
         maxHumidity: Double,
         status: Status) {
        
        self.imageNamed = imageNamed
        self.boughtAt = boughtAt
        self.scientificName = scientificName
        self.commonName = commonName
        self.nickname = nickname
        self.description = description
        self.minTemperature = minTemperature
        self.maxTemperature = maxTemperature
        self.minHumidity = minHumidity
        self.maxHumidity = maxHumidity
        self.status = status
        self.waterLog = [Date()]
        self.compostLog = [Date()]
        self.airHumidity = 0
        self.airTemperature = 0
        self.soilHumidity = 0
        self.luminosity = "Claro"
        self.isCovered = false
    }
}
